const IORedis = require("ioredis");
const path = require("path");
const expect = require("chai").expect;
const os = require("os");

let libName = "libbullmq.so";
if (os.platform() === "darwin") {
  libName = "libbullmq.dylib";
}

console.log(process.cwd());

let redis;

const queueName = "bull:test-queue";

before(async () => {
  redis = new IORedis();
  const modules = await redis.call("MODULE", "LIST");
  if (modules[0] && modules[0].includes("bullmq")) {
    await redis.call("MODULE", "UNLOAD", "bullmq");
  }
  await redis.call("MODULE", "LOAD", path.join(__dirname, `../${libName}`));
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

// TODO: Test, try to QDONE a locked job with incorrect token

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
    console.log(result);
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
    expect(parseInt(job.finishedOn)).to.be.above(parseInt(job.timestamp) + 999);
    expect(parseInt(job.finishedOn)).to.be.below(
      parseInt(job.timestamp) + 1100
    );
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

  it("should return a delayed job directly if delay time has passed", () => {
    // Figure out how to detect that it has not blocked :/
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
