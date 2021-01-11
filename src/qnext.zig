usingnamespace @import("./redismodule.zig");
const std = @import("std");
const common = @import("common.zig");

const ReplyData = packed struct {
    timestamp: c_longlong,
    name: ?*RedisModuleString,
    eventsKey: ?*RedisModuleString,
    waitKey: ?*RedisModuleString,
    pauseKey: ?*RedisModuleString,
    metaKey: ?*RedisModuleString,
    delayedKey: ?*RedisModuleString,
    activeKey: ?*RedisModuleString,
    token: ?*RedisModuleString,
    lockTTL: c_longlong,
    delayTimer: RedisModuleTimerID,
    blockedClient: ?*RedisModuleBlockedClient,
    reply: ?*RedisModuleCallReply
};

//
//  Returns next job/message to be processed. Specify a timeout for blocking operation.
//  QNEXT queue token lockTTL [timeout] [BATCH numJobs]
//
pub export fn QNEXT_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    if( argc > 7 or argc < 4){
        return RedisModule_WrongArity.?(ctx);
    }

    var numJobs: c_longlong = 1;
    var timeout: c_longlong = 0;
    if(argc > 4) {
        const BATCH = RedisModule_CreateString.?(ctx, "BATCH", 5);
        defer RedisModule_FreeString.?(ctx, BATCH);

        // Parse optional arguments
        var i: usize = 4;
        while (i < argc) {
            const argType = argv[i];

            if(numJobs == 1 and RedisModule_StringCompare.?(argType, BATCH) == 0){
                if(RedisModule_StringToLongLong.?(argv[i+1], &numJobs) != REDISMODULE_OK){
                   return RedisModule_ReplyWithError.?(ctx,"ERR Wrong Type");
                }
                i = i + 2;
                continue;
            }

            if(timeout == 0 and (RedisModule_StringToLongLong.?(argType, &timeout) == REDISMODULE_ERR)){
                return RedisModule_ReplyWithError.?(ctx,"ERR Wrong Type");
            }

            i = i + 1;
        }
    }

    const name = argv[1];
    const lockToken = argv[2];
    var lockTTL: c_longlong = undefined;

    if(RedisModule_StringToLongLong.?(argv[3], &lockTTL) == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    var strLen: usize = undefined;
    var nameStr = RedisModule_StringPtrLen.?(name, &strLen);

    const eventsKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "events");
    defer RedisModule_FreeString.?(ctx, eventsKey);

    const timestamp = RedisModule_Milliseconds.?();
    const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
    
    const activeKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "active");

    const delayedKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "delayed");
    defer RedisModule_FreeString.?(ctx, delayedKey);

    const waitKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "wait");
    defer RedisModule_FreeString.?(ctx, waitKey);

    // TODO: Handle paused queues
    // Pausing wait is easy, but we need to handle specially rate limited and
    // delayed jobs since they are not moved to wait anymore, maybe if the queue
    // is paused we should just move them to wait actually...

    if(numJobs > 1) {
        if(getBatch(ctx, nameStr, waitKey, activeKey, delayedKey, eventsKey, lockToken, lockTTL, timestamp, numJobs)) {
            return RedisModule_ReplicateVerbatim.?(ctx);
        }
    } 
    
    var nextDelayedJob: ?*RedisModuleString = null;
    var nextDelayedTimestamp: c_longlong = undefined;
    nextDelayedJob = getNextDelayedJob(ctx, delayedKey, &nextDelayedTimestamp);

    if(numJobs == 1) {
        // 1) Check if there is a delayed job that should be processed now (nove to active and return)
        if(nextDelayedJob != null and nextDelayedTimestamp <= timestamp){
            // RedisModule_Log.?(ctx, "warning", "getting delayed directly job");

            if(common.moveZSetToList(ctx, delayedKey, activeKey, nextDelayedJob) != REDISMODULE_OK){
                return REDISMODULE_ERR;
            }
            const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
                "event", "active", 
                "jobId", nextDelayedJob, 
                "prev", "delayed");
            RedisModule_FreeCallReply.?(replyEvent);

            const getJobReply = common.getJob(ctx, nextDelayedJob, timestamp, nameStr, lockToken, lockTTL);
            defer RedisModule_FreeCallReply.?(getJobReply);
            if(getJobReply != null){
                _ = RedisModule_ReplyWithCallReply.?(ctx, getJobReply);
                return RedisModule_ReplicateVerbatim.?(ctx);
            }else {
                RedisModule_Log.?(ctx, "error", "error getting job!");
                return REDISMODULE_ERR;
            }
        }

        // 2) If not, check if there is a job in the wait list to be executed (move to active and return)
        const jobId = common.popList(ctx, waitKey);
        if(jobId != null) {
            const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
                "event", "active", 
                "jobId", jobId, 
                "prev", "waiting");
            RedisModule_FreeCallReply.?(replyEvent);

            if(common.pushList(ctx, activeKey, jobId, REDISMODULE_LIST_HEAD) != REDISMODULE_OK) {
                return REDISMODULE_ERR;
            }
            const getJobReply = common.getJob(ctx, jobId, timestamp, nameStr, lockToken, lockTTL);
            defer RedisModule_FreeCallReply.?(getJobReply);

            _ = RedisModule_ReplyWithCallReply.?(ctx, getJobReply);
            return RedisModule_ReplicateVerbatim.?(ctx);
        }
    }

    // 3) If no waiting jobs and timeout > 0 we may need to block:
    // TODO: Test if renaming paused to wait triggers the unblock
    RedisModule_Log.?(ctx, "warning", "Before bloocking");

    if(timeout > 0){
        RedisModule_Log.?(ctx, "warning", "Will block soon");

        var pData: *ReplyData = @ptrCast(*ReplyData, RedisModule_Alloc.?( @sizeOf(ReplyData) ));

        pData.timestamp = timestamp;
        pData.name = RedisModule_HoldString.?(ctx, name);
        pData.token = RedisModule_HoldString.?(ctx, lockToken);
        pData.eventsKey = RedisModule_HoldString.?(ctx, eventsKey);
        pData.waitKey = RedisModule_HoldString.?(ctx, waitKey);
        pData.pauseKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "pause");
        pData.metaKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "meta");
        pData.delayedKey = RedisModule_HoldString.?(ctx, delayedKey);
        pData.activeKey = RedisModule_HoldString.?(ctx, activeKey);
        pData.delayTimer = 0;
        pData.lockTTL = lockTTL;
        pData.reply = null;

         //  3.1) check if there are delayed jobs, set up a timer for the next delayed, callback will move job
         // back to wait.
         if( nextDelayedJob != null ) {
            DelayedTimerCallback(ctx, pData);
         }

        //  3.2) RedisModule_BlockClientOnKeys on wait and delayed.
        const blockingKeys = &[_]?*RedisModuleString{ waitKey, delayedKey };
        
        pData.blockedClient = RedisModule_BlockClientOnKeys.?(ctx, 
             BlockedReplyCallback, 
             TimeoutReplyCallback, 
             BlockedFreePrivdata,
             timeout, 
             blockingKeys, 
             2, 
             pData);

        return RedisModule_ReplicateVerbatim.?(ctx);
    }

    _ = RedisModule_ReplyWithNullArray.?(ctx);
    return RedisModule_ReplicateVerbatim.?(ctx);
}

fn BlockedReplyCallback(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) callconv(.C) c_int {
    // 4) Unblocked by some key, we need to do different things if it was a delayed key or wait key.
    // RedisModule_Log.?(ctx, "warning", "Unblocked by some key");

    const timestamp = RedisModule_Milliseconds.?();
    const readyKey = RedisModule_GetBlockedClientReadyKey.?(ctx);
    const pData: *ReplyData = @ptrCast(*ReplyData, RedisModule_GetBlockedClientPrivateData.?(ctx));
    
    if(RedisModule_StringCompare.?(readyKey, pData.waitKey) == 0){
        // RedisModule_Log.?(ctx, "warning", "Unblocked by wait key");
        //  4.1) - If unblock by wait, stop timer and return directly if there is a valid jobId (and not rate limited).
        const waitKey = readyKey;
        var strLen: usize = undefined;
        const nameStr = RedisModule_StringPtrLen.?(argv[1], &strLen);
        const lockToken = argv[2];

        const jobId = common.popList(ctx, waitKey);
        if(jobId != null) {
            const getJobReply = common.getJob(ctx, jobId, timestamp, nameStr, lockToken, pData.lockTTL);
            defer RedisModule_FreeCallReply.?(getJobReply);

            if(getJobReply != null){
                const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", pData.eventsKey, "*",
                    "event", "active", 
                    "jobId", jobId, 
                    "prev", "waiting");
                defer RedisModule_FreeCallReply.?(replyEvent);
                return RedisModule_ReplyWithCallReply.?(ctx, getJobReply);
            }
        }
    } else {
        // RedisModule_Log.?(ctx, "warning", "Unblocked by delay key");
        // 4.2) If unblock by delayed update timer and return error so that we continue blocking.
        DelayedTimerCallback(ctx, pData);
    }

    // RedisModule_Log.?(ctx, "warning", "Done blocking keys");
    return REDISMODULE_ERR;
}

fn TimeoutReplyCallback(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) callconv(.C) c_int {
    // We use timeout callback to return our delayed job due to limitations in Redis
    // RedisModule_Log.?(ctx, "warning", "Timeout Called");

    var strLen: usize = undefined;    
    const nameStr = RedisModule_StringPtrLen.?(argv[1], &strLen);
    const waitKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "wait");
    const activeKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "active");

    const jobId = common.popList(ctx, waitKey);
    if(jobId != null){
        // RedisModule_Log.?(ctx, "warning", "There is a waiting job");
        if(common.pushList(ctx, activeKey, jobId, REDISMODULE_LIST_HEAD) != REDISMODULE_OK){
            return REDISMODULE_ERR;
        }
        const timestamp = RedisModule_Milliseconds.?();
        const eventsKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "events");
        defer RedisModule_FreeString.?(ctx, eventsKey);
        const reply = replyWithJob(ctx, argv[1], eventsKey, argv[2], 10000, jobId, timestamp);
        defer RedisModule_FreeCallReply.?(reply);

        return RedisModule_ReplyWithCallReply.?(ctx, reply);
    }
    return RedisModule_ReplyWithNullArray.?(ctx);
}

fn BlockedFreePrivdata(ctx: ?*RedisModuleCtx, privdata: ?*c_void) callconv(.C) void {
    // RedisModule_Log.?(ctx, "warning", "Freeing all priv data");

    const pData: *ReplyData = @ptrCast(*ReplyData, RedisModule_GetBlockedClientPrivateData.?(ctx));

    _ = RedisModule_StopTimer.?(ctx, pData.delayTimer, null);
    
    RedisModule_FreeString.?(ctx, pData.name);
    RedisModule_FreeString.?(ctx, pData.token);
    RedisModule_FreeString.?(ctx, pData.eventsKey);
    RedisModule_FreeString.?(ctx, pData.waitKey);
    RedisModule_FreeString.?(ctx, pData.pauseKey);
    RedisModule_FreeString.?(ctx, pData.metaKey);
    RedisModule_FreeString.?(ctx, pData.delayedKey);
    RedisModule_FreeString.?(ctx, pData.activeKey);

    RedisModule_Free.?(privdata);
}

fn DelayedTimerCallback(ctx: ?*RedisModuleCtx, data: ?*c_void) callconv(.C) void {
    RedisModule_Log.?(ctx, "warning", "DelayedTimerCallback start");

    const timestamp = RedisModule_Milliseconds.?();
    const pData: *ReplyData = @ptrCast(*ReplyData, data);

    // _ = RedisModule_StopTimer.?(ctx, pData.delayTimer, null);

    var nextTimestamp: c_longlong = undefined;
    
    const nextDelayedJob = getNextDelayedJob(ctx, pData.delayedKey, &nextTimestamp);
    // RedisModule_Log.?(ctx, "warning", "after getNextDelayedJob, %lli timestamp %lli diff %lli", nextTimestamp, timestamp, nextTimestamp - timestamp);

    if(nextDelayedJob != null){
        if(nextTimestamp <= timestamp){
            var strLen: usize = undefined;
            const nameStr = RedisModule_StringPtrLen.?(pData.name, &strLen);

            var target: ?*RedisModuleString = null;
            if(common.isQueuePaused(ctx, pData.metaKey)){
                target = pData.pauseKey;
            }else {
                target = pData.waitKey;
            }

            RedisModule_Log.?(ctx, "warning", "move delayed job back to wait/pause %s", nameStr);

            // We move the job to the wait list so that this or another blocked worker can pick it up.
            if (common.moveZSetToList(ctx, pData.delayedKey, target, nextDelayedJob) != REDISMODULE_OK){
                RedisModule_Log.?(ctx, "error", "could not move to active %s set!", RedisModule_StringPtrLen.?(pData.name, &strLen));
                return;
            }
            
            // RedisModule_SignalKeyAsReady.?(ctx, pData.waitKey);
            // We unblock explicitly since SignalKeyAsReady does not work on a timer callback.
            // Fixed in newer versions of redis: https://github.com/redis/redis/issues/7880
            const result = RedisModule_UnblockClient.?(pData.blockedClient, pData);
        } else {
            pData.delayTimer = RedisModule_CreateTimer.?(ctx, 
                nextTimestamp - timestamp, 
                DelayedTimerCallback, 
                pData);
        }
    }
}

fn getNextDelayedJob(ctx: ?*RedisModuleCtx, delayedKey: ?*RedisModuleString, nextDelayedTimestamp: *c_longlong) ?*RedisModuleString {

    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, delayedKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);

    var nextDelayedJob: ?*RedisModuleString = null;
    var result = RedisModule_ZsetFirstInScoreRange.?(key, 0.0, std.math.inf(f32), 0, 0);
    
    // RedisModule_Log.?(ctx, "warning", "getNextDelayedJob range called");
    if(result == REDISMODULE_OK) {
         var score: f64 = 0;
         nextDelayedJob = RedisModule_ZsetRangeCurrentElement.?(key, &score);
         RedisModule_ZsetRangeStop.?(key);
        
         if(nextDelayedJob != null){
            nextDelayedTimestamp.* = @floatToInt(c_longlong, @round(score) / 0x100);
            // RedisModule_Log.?(ctx, "warning", "there may be a delayed job to process!");
         }
    }

    return nextDelayedJob;
}

fn replyWithJob(
        ctx: ?*RedisModuleCtx,
        name: ?*RedisModuleString,
        eventsKey: ?*RedisModuleString,
        token: ?*RedisModuleString,
        lockTTL: c_longlong,
        jobId: ?*RedisModuleString,
        timestamp: c_longlong) ?*RedisModuleCallReply {   
    
    var strLen: usize = undefined;
    const nameStr = RedisModule_StringPtrLen.?(name, &strLen);
    const getJobReply = common.getJob(ctx, jobId, timestamp, nameStr, token, lockTTL);

    if(getJobReply != null){
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
            "event", "active", 
            "jobId", jobId, 
            "prev", "waiting");
        RedisModule_FreeCallReply.?(replyEvent);
    }
    return getJobReply;
}

fn getBatch(
    ctx: ?*RedisModuleCtx,
    nameStr: [*c]const u8,
    waitKey: ?*RedisModuleString,
    activeKey: ?*RedisModuleString,
    delayedKey: ?*RedisModuleString,
    eventsKey: ?*RedisModuleString,
    lockToken: ?*RedisModuleString,
    lockTTL: c_longlong,
    timestamp: c_longlong,
    numJobs: c_longlong) bool {
    var jobCount: c_longlong = 0;    

    // 1) Try to fetch as many delayed items as possible. 
    const openedDelayedKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, delayedKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(openedDelayedKey);

    const openedWaitKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, waitKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(openedWaitKey);

    const openedActiveKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, activeKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(openedActiveKey);

     const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
    defer RedisModule_FreeString.?(ctx, timestampStr);

    _ = RedisModule_ZsetFirstInScoreRange.?(openedDelayedKey, 0, @intToFloat(f64, timestamp * 0x100 + 0xfff), 0, 0);

    while( jobCount < numJobs): (jobCount += 1) {
        var score: f64 = undefined;
        const jobId = RedisModule_ZsetRangeCurrentElement.?(openedDelayedKey, &score);
        if(jobId == null){
            break;
        }

        // Move to active
        if(common.moveZSetToListEx(ctx, openedDelayedKey, openedActiveKey, jobId) != REDISMODULE_OK){
            return false;
        }

        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
            "event", "active", 
            "jobId", jobId, 
            "prev", "delayed");
        RedisModule_FreeCallReply.?(replyEvent);

        const getJobReply = common.getJobEx(ctx, jobId, timestampStr, nameStr, lockToken, lockTTL);
        defer RedisModule_FreeCallReply.?(getJobReply);

        if(jobCount == 0) {
            _ = RedisModule_ReplyWithArray.?(ctx, REDISMODULE_POSTPONED_ARRAY_LEN);
        }
        _ = RedisModule_ReplyWithCallReply.?(ctx, getJobReply);

        // We cannot break if next != 1 because we need to increase jobCount
        _ = RedisModule_ZsetRangeNext.?(openedDelayedKey);
    }

    // 2) Try to fetch as many waited items as possible.
    while( jobCount < numJobs): (jobCount += 1) {
        const jobId = RedisModule_ListPop.?(openedWaitKey, REDISMODULE_LIST_HEAD);
        if(jobId == null){
            break;
        }
        _ = RedisModule_ListPush.?(openedActiveKey, REDISMODULE_LIST_HEAD, jobId);

        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
                 "event", "active", 
                 "jobId", jobId, 
                 "prev", "waiting");
        RedisModule_FreeCallReply.?(replyEvent);

        const getJobReply = common.getJobEx(ctx, jobId, timestampStr, nameStr, lockToken, lockTTL);
        defer RedisModule_FreeCallReply.?(getJobReply);

        if(jobCount == 0) {
            _ = RedisModule_ReplyWithArray.?(ctx, REDISMODULE_POSTPONED_ARRAY_LEN);
        }
        _ = RedisModule_ReplyWithCallReply.?(ctx, getJobReply);
    }

    if(jobCount > 0) {
        _ = RedisModule_ReplySetArrayLength.?(ctx, jobCount);
        return true;
    }
    return false;
}

// Returns rate limited job or jobs (if any)
fn getRateLimited() void {
    // Check if queue is rate limited (open for read the QLIMIT key)

    // If there are groups, check if any jobs could be executed now.
    // We need to store the last group checked so that we perform
    // roundrobin on all groups.
    // We need a list for every group, holding the rate limited jobs for that group.

    // We can easily support batches here too.

    // For every returned job we need to update the rate limiter key,
    // but if we work with batches we may only update once per batch per group.
    // All in all it will be awesome.

    // Do we need to pick jobs from delayed or can we wait until all rate limited
    // jobs have been processed? in any case we should put them at the end of the rate limit
    // list so there is not a big difference. Besides, the rate limited sets should not grow
    // big.
    // rate limited works best with some timeout, so when the queue is rate limited we can 
    // wait as we do with the delayed timer.
}
