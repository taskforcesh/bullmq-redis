const IORedis = require("ioredis");
const path = require("path");
const expect = require("chai").expect;
const os = require("os");

let libName;
switch (os.platform()) {
  case "darwin":
    libName = "libbullmq.dylib";
    break;
  case "linux":
    libName = "libbullmq.so";
    break;
}

let libPath;
if (process.env.CI) {
  libPath = `/var/tmp/bullmq-redis/${libName}`;
} else {
  libPath = path.join(__dirname, `../${libName}`);
}

let redis;
const queueName = "bull:test-queue";

before(async () => {
  redis = new IORedis();
  const modules = await redis.call("MODULE", "LIST");
  if (modules[0] && modules[0].includes("bullmq")) {
    await redis.call("MODULE", "UNLOAD", "bullmq");
  }
  await redis.call("MODULE", "LOAD", libPath);
});

after(async () => {
  redis.quit();
});

describe("Add jobs", () => {
  beforeEach(() => {
    return redis.flushall();
  });

  it("should add a job", async () => {
    const jobName = "my-job-name";
    const jobId = await redis.call(
      "QADD",
      queueName,
      jobName,
      "foobar",
      "some-opts"
    );
    expect(jobId).to.be.equal("1");

    const jobKey = `${queueName}:${jobId}`;
    const jobKeyExists = await redis.exists(jobKey);
    expect(jobKeyExists).to.be.equal(1);

    const job = await redis.hgetall(jobKey);

    checkJob(job, jobName, "foobar", "some-opts");

    const jobPos = await redis.call("LPOS", `${queueName}:wait`, jobId);
    expect(jobPos).to.be.equal(0);
  });

  it("should add a bunch of jobs", async () => {
    const numJobs = 100;

    for (let i = 0; i < numJobs; i++) {
      const jobId = await redis.call(
        "QADD",
        queueName,
        "my-job-name",
        `foobar${i}`,
        "some-opts"
      );
      expect(jobId).to.be.equal(`${i + 1}`);

      const jobKey = `${queueName}:${jobId}`;

      const jobKeyExists = await redis.exists(jobKey);
      expect(jobKeyExists).to.be.equal(1);

      const jobPos = await redis.call("LPOS", `${queueName}:wait`, jobId);
      expect(jobPos).to.be.equal(i);
    }
  });

  it("should add a delayed job", async () => {
    const jobName = "my-job-name";
    const timestamp = Date.now();

    const jobId = await redis.call(
      "QADD",
      queueName,
      "my-job-name",
      `foobar`,
      "some-opts",
      "DELAY",
      500
    );
    expect(jobId).to.be.equal(`1`);

    const jobKey = `${queueName}:${jobId}`;

    const jobKeyExists = await redis.exists(jobKey);
    expect(jobKeyExists).to.be.equal(1);

    const job = await redis.hgetall(jobKey);

    checkJob(job, jobName, "foobar", "some-opts");

    const score = parseInt(await redis.zscore(`${queueName}:delayed`, jobId));

    expect(score).to.be.above(timestamp);
  });

  it("should add a batch of jobs", async () => {
    const numJobs = 100;

    for (let i = 0; i < numJobs; i++) {
      const jobId = await redis.call(
        "QADD",
        queueName,
        "my-job-name",
        `foobar${i}`,
        "some-opts"
      );
      expect(jobId).to.be.equal(`${i + 1}`);
    }
  });

  // TODO: Test with invalid arguments of all kind
});

describe("Get jobs", () => {
  beforeEach(() => {
    return redis.flushall();
  });

  it("should process a batch of jobs if available", async () => {
    const jobName = "my-job-name";
    const batchSize = 15;
    for (let i = 0; i < batchSize; i++) {
      const jobId = await redis.call(
        "QADD",
        queueName,
        jobName,
        "foobar",
        "some-opts"
      );
      expect(jobId).to.be.equal(`${i + 1}`);
    }

    let batch = redisToArr(
      await redis.call(
        "QNEXT",
        "bull:test-queue",
        "a-token",
        30000,
        10000,
        "BATCH",
        20
      )
    );

    expect(batch).to.have.length(batchSize);
    for (let i = 0; i < batchSize; i++) {
      const jobId = `${i + 1}`;
      expect(batch[i]).to.be.have.property("jobId", jobId);
      checkJob(batch[i], jobName, "foobar", "some-opts");
      expect(await isLocked(queueName, jobId));
    }

    const multi = redis.multi();
    for (let i = 0; i < batchSize; i++) {
      const jobId = `${i + 1}`;
      multi.call("QDONE", queueName, jobId, "a-token", "RESULT", `quxbaz${i}`);
    }
    const result = await multi.exec();
    expect(result).to.have.property("length", batchSize);
    for (let i = 0; i < batchSize; i++) {
      expect(result[i][0]).to.be.equal(null);
      expect(result[i][1]).to.be.equal("OK");
    }
  });
});

describe("Process jobs", () => {
  beforeEach(() => {
    return redis.flushall();
  });

  it("should complete a job that has been added", async () => {
    const jobName = "my-job-name";
    const jobId = await redis.call(
      "QADD",
      queueName,
      jobName,
      "foobar",
      "some-opts"
    );
    expect(jobId).to.be.equal("1");

    let job = redisToObj(
      await redis.call("QNEXT", "bull:test-queue", "a-token", 30000, 10000)
    );

    checkJob(job, jobName, "foobar", "some-opts");

    expect(job).to.have.property("processedOn");

    await isLocked(queueName, jobId);

    const result = await redis.call(
      "QDONE",
      queueName,
      jobId,
      "a-token",
      "RESULT",
      "quxbaz"
    );

    expect(result).to.be.equal("OK");

    const jobKey = `${queueName}:${jobId}`;
    job = await redis.hgetall(jobKey);

    checkJob(job, jobName, "foobar", "some-opts");
    expect(job).to.have.property("finishedOn");
    expect(job).to.have.property("result", "quxbaz");
  });

  it("should not allow completing a locked job with invalid token", async () => {
    const jobName = "my-job-name";
    const jobId = await redis.call(
      "QADD",
      queueName,
      jobName,
      "foobar",
      "some-opts"
    );
    expect(jobId).to.be.equal("1");

    let job = redisToObj(
      await redis.call("QNEXT", "bull:test-queue", "a-token", 30000, 10000)
    );

    checkJob(job, jobName, "foobar", "some-opts");

    expect(job).to.have.property("processedOn");

    await isLocked(queueName, jobId);

    try {
      await redis.call(
        "QDONE",
        queueName,
        jobId,
        "wrong-token",
        "RESULT",
        "quxbaz"
      );
    } catch (err) {
      expect(err.message).to.be.equal("ERR Could not release lock");
    }
  });

  it("should block until a job is available", async () => {
    const jobName = "my-job-name";

    const redisBlocked = new IORedis();
    let jobPromise = redisBlocked.call(
      "QNEXT",
      "bull:test-queue",
      "a-token",
      30000,
      10000
    );

    const jobId = await redis.call(
      "QADD",
      queueName,
      jobName,
      "foobar",
      "some-opts"
    );
    expect(jobId).to.be.equal("1");

    let job = redisToObj(await jobPromise);

    checkJob(job, jobName, "foobar", "some-opts");

    expect(job).to.have.property("processedOn");

    await isLocked(queueName, jobId);

    const result = await redis.call(
      "QDONE",
      queueName,
      jobId,
      "a-token",
      "RESULT",
      "quxbaz"
    );

    expect(result).to.be.equal("OK");

    const jobKey = `${queueName}:${jobId}`;
    job = await redis.hgetall(jobKey);

    checkJob(job, jobName, "foobar", "some-opts");
    expect(job).to.have.property("finishedOn");
    expect(job).to.have.property("result", "quxbaz");
  });

  describe("Remove on Completed", () => {});

  describe("Remove on Failed", () => {});

  describe("Delayed Jobs", () => {
    it("should complete a delayed job", async () => {
      const jobName = "my-job-name";
      const jobId = await redis.call(
        "QADD",
        queueName,
        jobName,
        "foobar",
        "some-opts",
        "DELAY",
        1000
      );
      expect(jobId).to.be.equal("1");

      let job = redisToObj(
        await redis.call("QNEXT", "bull:test-queue", "a-token", 30000, 10000)
      );

      checkJob(job, jobName, "foobar", "some-opts");

      expect(job).to.have.property("processedOn");

      await isLocked(queueName, jobId);

      const result = await redis.call(
        "QDONE",
        queueName,
        jobId,
        "a-token",
        "RESULT",
        "quxbaz"
      );

      expect(result).to.be.equal("OK");

      const jobKey = `${queueName}:${jobId}`;
      job = await redis.hgetall(jobKey);

      checkJob(job, jobName, "foobar", "some-opts");
      expect(job).to.have.property("finishedOn");
      expect(job).to.have.property("result", "quxbaz");
      expect(parseInt(job.finishedOn)).to.be.above(
        parseInt(job.timestamp) + 999
      );
      expect(parseInt(job.finishedOn)).to.be.below(
        parseInt(job.timestamp) + 1100
      );
    });

    it("should return a delayed job directly if delay time has passed", async () => {
      const jobName = "my-job-name";
      const jobId = await redis.call(
        "QADD",
        queueName,
        jobName,
        "foobar",
        "some-opts",
        "DELAY",
        1000
      );
      expect(jobId).to.be.equal("1");

      await delay(1500);

      let job = redisToObj(
        await redis.call("QNEXT", "bull:test-queue", "a-token", 30000, 10000)
      );

      checkJob(job, jobName, "foobar", "some-opts");
      expect(job).to.have.property("processedOn");
    });
  });

  describe("Pause / Resume", () => {
    it("should pause a queue", async () => {
      const jobName = "test-job";
      await redis.call("QPAUSE", queueName);

      let paused = await isPaused(queueName);
      expect(paused).to.be.true;

      await addJob(queueName, jobName, "foobar", "some-opts");

      let job = await getNextJob(queueName, "a-token", 30000);

      expect(job).to.be.undefined;

      await redis.call("QRESUME", queueName);

      paused = await isPaused(queueName);
      expect(paused).to.be.false;

      job = await getNextJob(queueName, "a-token", 30000);

      checkJob(job, jobName, "foobar", "some-opts");
    });

    it("should block QNEXT until unpaused", async function () { 
      this.timeout(5000);

      const redis2 = new IORedis();

      const jobName = "test-job";
      await redis.call("QPAUSE", queueName);

      let paused = await isPaused(queueName);
      expect(paused).to.be.true;

      await addJob(queueName, jobName, "foobar", "some-opts");

      const jobPromise = getNextJob(queueName, "a-token", 30000, 2000);

      await redis2.call("QRESUME", queueName);

      redis2.quit();

      const job = await jobPromise;

      console.log({ job });

      checkJob(job, jobName, "foobar", "some-opts");
    });

    it("should block QNEXT for delayed jobs", async function () {
      this.timeout(5000);

      const jobName = "test-job";
      await redis.call("QPAUSE", queueName);

      let paused = await isPaused(queueName);
      expect(paused).to.be.true;

      await addJob(queueName, jobName, "foobar", "some-opts", 1000);

      const job = await getNextJob(queueName, "a-token", 30000, 2000);

      expect(job).to.be.undefined;
    });
  });
});

function redisToObj(arr) {
  const obj = {};

  for (let i = 0; i < arr.length; i += 2) {
    obj[arr[i]] = arr[i + 1];
  }
  return obj;
}

function redisToArr(arr) {
  return arr.map(redisToObj);
}

async function isLocked(queueName, jobId) {
  const jobKeyExists = await redis.exists(`${queueName}:${jobId}:lock`);
  expect(jobKeyExists).to.be.equal(1);
}

function checkJob(job, name, data, opts) {
  expect(job).to.have.property("timestamp");
  expect(job).to.have.property("name", name);
  expect(job).to.have.property("data", data);
  expect(job).to.have.property("opts", opts);
}

function delay(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

function addJob(queueName, jobName, data, opts, delay) {
  const args = ["QADD", queueName, jobName, data, opts];
  if (delay) {
    args.push("DELAY", delay);
  }
  return redis.call(...args);
}

async function getNextJob(queueName, token, lockTTL, timeout) {
  const args = ["QNEXT", queueName, token, lockTTL];
  if (timeout) {
    args.push(timeout);
  }
  const job = await redis.call(...args);
  if (job) {
    return redisToObj(job);
  }
}

async function isPaused(queueName) {
  const args = ["QISPAUSED", queueName];
  const result = await redis.call(...args);

  return result === "PAUSED";
}
