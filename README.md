# Disclaimer

This module is currently under development and thus not suitable for production yet.
You are encouraged to test and evaluate it and report issues if you find any.

# Features

- Robust Queue system based on battle hardened architecture.
- Optimized for maxing out Redis performance.
- Non-polling design using blocking connections.
- Simple but powerful api with many advanced features.
- FIFO / LIFO Queues
- Delayed jobs.
- Batches.
- Permisive BSD License

# BullMQ Redis Module

This module implements a realiable queue system as a Redis module. The queue is based on the popular
NodeJs modules Bull and BullMQ and it is backwards compatible with both modules.

Having BullMQ as a Redis module has many advantages, firstly it allows easy interoperability
with other languages or platforms as long as they have a Redis client.

Secondly, it brings much better performance, squeezing every CPU cycle as much as possible
since all code is native.

And thirdly, it is also easier to use and simpler. In the NodeJS versions of the queue
we need to perform some bookkeeping activities, such as moving delayed jobs back to the
wait queue when they expire, or taking checking if any jobs have been stalled. All this operations
are now integrated in the module in a much more efficient way and transparent for the user.

# Sponsor

The development of this module is currently sponsored by https://taskforce.sh. Please
consider subscribing to help maintaining this library.

# Installation

[Download](https://github.com/taskforcesh/bullmq-redis/releases) a release and install
it in your redis instance using the load module command:

```bash
> MODULE LOAD /path/to/libbullmq.so
```

It is also possible to load the module automatically when starting redis by specifying
the following directive in the redis.conf file:

```bash
loadmodule /path/to/libbullmq.so
```

# Versions

This module follows [SemVer](https://semver.org/) and releases are automatically
released as long as there is at least one fix.

# Definitions

In the context of BullMQ we talk about jobs instead of messages. The different is subtle,
but Job could be seen as a super set of a message, where a message is just some information
passed from A to B, a Job includes the notion of some work to be done when the message is
received. Other than that, the semantics of the queue should be identical for jobs
or messages.

# Queue Commands

### Add jobs to the queue

`QADD queueName { jobName data opts [ID jobID] [DELAY millis] [LIFO] }+`

This command lets you add one or more jobs to the queue in one call.

Arguments:

    - queueName: the name of the queue name. For interoperability with existing libraries you should
    use a name with a prefix, like: "bull:my-queue-name"
    - jobName: a name for the job. Useful for clasifying the jobs in UIs, can also be useful
    when processing jobs if you want to perform different tasks depending on the job name.
    - data: a string containinig the data. For interoperability with existing tools you should store
    data as a JSON string, but you can use any data you like including binary data.
    - opts: options useful for building high level functionality om top of existing BullMQ commands,
    for example it can be used to store the maximum amount of times a job should be retried in the case
    of failure.
    - [ID jobID]: instead of letting BullMQ generate a jobId you can specify your own. Important to notice
    is that BullMQ will ignore jobs with the same ID (that are still in the queue). This property can be
    exploited to avoid duplication of jobs in some scenarios.
    - [DELAY millis]: milliseconds to delay this job. Instead of putting the job in the wait list, it is
    placed in the delayed set. As soon as the job has waited the specified time it is returned in the next
    call to QNEXT. Note, delayed jobs will skip the wait queue even if there are other non-delayed jobs
    waiting.
    - [LIFO]: use this arg if you want the queue to return the jobs in Last In First Out order instead of
    the default (First In First out) order.

### Get next job or jobs from the queue

`QNEXT queueName token lockTTL [BATCH numJobs] [timeout]`

This command optional blocks if no jobs are available at the moment and a timeout is passed as
argument.

Arguments:

    - queueName: the name of the queue.
    - token: a unique token used for locking the job.
    - lockTTL: time to live for the lock. The job will be automatically moved back to wait status after
    this time has passed. (Unless the job has completed or failed).

    - [BATCH numJobs] number of jobs to get at once in a batch.

        Batch has 2 modes of operation

        - standard batch, returns as much jobs as possible (less or equal than numJobs) without waiting.
        - batch with timeout, blocks until numJobs are available or timeout returning as many jobs as possible if
        it timesout.

Regarding batches there are some important considerations. All the jobs returned will be locked with
lockTTL. You need to make sure you are done with these jobs before the lockTTL has expired or
renew the lock time calling QRELOCK. If you fail to do so, other callers to QNEXT will receive
the jobs that have expired.

### Marks a job (or jobs) as completed (or failed)

`QDONE queue token { jobId [RESULT result] | [ERROR err] }+ [TRIM numJobs] [NEXT loockTTL numJobs timeout]`

### Renews the lock on a given job

`QRELOCK queue token lockTTL { jobId }+`

This is used in order mark that the worker is still working on the job so that other workers calling QNEXT do not get the same job again.

### Get queue info

`QINFO [LIMIT] [JOBS]`

Get info about different aspects of the queue.

### Pause queue

`QPAUSE queue`

Pauses a queue, it is possible to add and complete jobs but QNEXT will not return any job until it
is resumed again.

### Resume queue

`QRESUME queue`

Resumes a paused queue.

### Check if Queue is Paused

`QISPAUSED queue`

Checks of queue is currently paused or running, returns "PAUSED" or "RUNNING".

## QGET queue [WAIT] [ACTIVE] [DELAYED] [COMPLETED] [FAILED]

Get jobs (returns also last event ID)

## Remove job from queue

```QDEL queue jobId```

Removes one job from the queue.

## QJOB [PROGRESS progress] [DATA data] [OPTS opts] [LOG msg]

Update a job. It is possible to update progress, data, opts or even adding
a new log message.

### Dispose queue

```QDISPOSE queue```

Removes all data related to a Queue.

### Remove jobs from state

```QCLEAN [WAIT] [ACTIVE] [DELAYED] [COMPLETED] [FAILED]```

Removes jobs from the given states.

# Events

Queues produce events that are pushed to redis streams. This is very convenient since
it allows clients to consume events at their own pace avoiding missing any event.

# Performance

BullMQ is really fast. On any modern hardware you should expect easily 50k jobs/sec.
The bottlenecks will likely be on the network IO and job processing itself rather than
on BullMQ. If you use batching you can increase this numbers easily an order or magnitude.

# Examples of use

# Patterns

We describe some common patterns, for example processing jobs, batch processing,
progress, event listening, etc, etc.

# Architecture

In this section we give an overview of BullMQ architecture, how it is built on top of redis,
which redis datatructure it uses an so forth.

## Basic Arquitecture

BullMQ is based on a "wait" list, "active" list and a "complete" and "failed" sets. Jobs are added
to the wait list and as they are processed moved to the "active" list. When the job/message is finally
processed it is moved to the completed or failed sets depending if the job succeeded respectively failed.

In reality in this list we only store the job id, the job data is stored in a separate hash map, so when we say
that we are moving a job from one list to another we mean that we are just moving the job id.

On top of this basic architecture, all other features are built. Lets go one by one from simplest to more complex

### Locked jobs

As jobs are moved to the active list they are also locked. The QNEXT command requires a lock token as well as
a lock TTL. The token is used to specify the "owner" of the job that is being processed. It is recommended to use
a unique uuid for the token. This lock is used for a couple of things, first to mark who owns the job but
more importantly to detect if the worker processing the job has crashed or hanged. This is because the worker has just
lockTTL time to process the job before BullMQ will move the job back to the wait list or, if the number of stalled counts
is larger than a limit, moved to the failed set. However a worker that knows the lock token can call QRELOCK to renew the
lock for more time, telling BullMQ that the worker is still alive and processing the job.

When the job is moved from active to complete of failed using QDONE, the lock is also released. As you can
see QDONE requires the lock token, so no one other than the worker that actually started processing the job
can mark a job as done.

## Delayed jobs

## Batches

# BSD License

Copyright (c) 2021, Taskforce.sh Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. All advertising materials mentioning features or use of this software must display the following acknowledgement: This product includes software developed by the Taskforce.sh Inc..
4. Neither the name of the Taskforce.sh Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY Taskforce.sh Inc. ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Taskforce.sh Inc. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# Copyright

(c) 2021 Taskforce.sh Inc.

The source code and all the texts in this repository excluding issues reported
by third party belongs and are copyrighted by Taskforce.sh Inc.
