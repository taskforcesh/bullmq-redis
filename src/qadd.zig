usingnamespace @import("./redismodule.zig");
const common = @import("common.zig");

//
//  QADD queue jobName data opts [ID jobId] [DELAY ms] [PRIORITY priority] [LIFO]
//
pub export fn QADD_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {

    if( argc < 5){
        return RedisModule_WrongArity.?(ctx);
    }

    // argv[0] is the command
    const name = argv[1];
    const jobName = argv[2];
    const data = argv[3];
    const opts = argv[4];

    // Get arguments
    var jobId: ?*RedisModuleString = null;
    var delay: c_longlong = 0;
    var priority: c_longlong = 0;
    
    if( argc > 4) {
        // If we could store this strings for future use it would be faster.
        // (Alloc a global dict, store them there and keep them there until Unload)
        const ID = RedisModule_CreateString.?(ctx, "ID", 2);
        defer RedisModule_FreeString.?(ctx, ID);

        const DELAY = RedisModule_CreateString.?(ctx, "DELAY", 5);
        defer RedisModule_FreeString.?(ctx, DELAY);

        const PRIORITY = RedisModule_CreateString.?(ctx, "PRIORITY", 8);
        defer RedisModule_FreeString.?(ctx, PRIORITY);

        // Parse optional arguments
        var i: usize = 5;
        while (i < argc) : (i += 2) {
            const argType = argv[i];
            var len: usize = undefined;

            // const argStr = RedisModule_StringPtrLen.?(argType, &len);
            // RedisModule_Log.?(ctx, "warning", "comparing string %s %s iteration %i", "ID", argStr, i);

            if(jobId == null and RedisModule_StringCompare.?(argType, ID) == 0){
                jobId = argv[i+1];
                continue;
            }
            if(delay == 0 and RedisModule_StringCompare.?(argType, DELAY) == 0){
                if(RedisModule_StringToLongLong.?(argv[i+1], &delay) != REDISMODULE_OK){
                   return RedisModule_ReplyWithError.?(ctx,"ERR Wrong Type");
                }
                continue;
            }
            if(priority == 0 and RedisModule_StringCompare.?(argType, PRIORITY) == 0){
                if(RedisModule_StringToLongLong.?(argv[i+1], &priority) != REDISMODULE_OK){
                   return RedisModule_ReplyWithError.?(ctx,"ERR Wrong Type");
                }
                continue;
            }
        }
    }

    // Get JobID
    var strLen: usize = undefined;
    var nameStr = RedisModule_StringPtrLen.?(name, &strLen);
    const idKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "id");

    const incrJobIdReply = RedisModule_Call.?(ctx, "INCR", "s", idKey);

    const jobCount: c_longlong = RedisModule_CallReplyInteger.?(incrJobIdReply);

    RedisModule_FreeString.?(ctx, idKey);

    var jobKey: ?*RedisModuleString = undefined;
    if(jobId != null){
        const jobIdStr = RedisModule_StringPtrLen.?(jobId, &strLen);
        jobKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, jobIdStr);
    }else{
        jobId = RedisModule_CreateStringPrintf.?(ctx, "%llu", jobCount);
        jobKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%llu", nameStr, jobCount);
    }

    // // TODO: If jobId exists we just should ignore this job
    const timestamp = RedisModule_Milliseconds.?();

    // // -- Store the job.  
    if (storeJob(ctx, jobKey, jobName, data, opts, timestamp) != REDISMODULE_OK){
        return REDISMODULE_ERR;
    }

    RedisModule_FreeString.?(ctx, jobKey);

    // if(storeJobReply == null){
    //     return RedisModule_ReplyWithError.?(ctx,"ERR Setting job data");
    // }
    
    const eventsKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "events");
    defer RedisModule_FreeString.?(ctx, eventsKey);

    // Delayed job?
    if(delay > 0){
        const delayScore = (timestamp + delay) * 0x100 + (jobCount & 0xfff);
        const delayedKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "delayed");
        defer RedisModule_FreeString.?(ctx, delayedKey);
        const replyDelay = RedisModule_Call.?(ctx, "ZADD", "sls", delayedKey, delayScore, jobId);

        RedisModule_SignalKeyAsReady.?(ctx, delayedKey);

        // Send event
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscl", eventsKey, "*",
            "event", "delayed", 
            "jobId", jobId, 
            "delay", delay);
    } else {
        const metaKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "meta");
        RedisModule_FreeString.?(ctx, metaKey);

        var target: ?*RedisModuleString = null;

        if(isQueuePaused(ctx, metaKey)){
            target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "pause");
        }else {
            target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "wait");
        }
        defer RedisModule_FreeString.?(ctx, target);

        if(priority == 0){
            // TODO: support LIFO (RPUSH) (REDISMODULE_LIST_HEAD)
            _ = common.pushList(ctx, target, jobId, REDISMODULE_LIST_TAIL);
        }

        // Emit waiting event
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccs", eventsKey, "*",
            "event", "waiting", 
            "jobId", jobId);
    }

    // TODO: Trim events
    // local maxEvents = rcall("HGET", KEYS[3], "opts.maxLenEvents")
    // if (maxEvents) then rcall("XTRIM", KEYS[7], "MAXLEN", "~", maxEvents) end

    // Return JobId
    if(jobId != null){
        return RedisModule_ReplyWithString.?(ctx, jobId);
    } else {
        return RedisModule_ReplyWithCallReply.?(ctx, incrJobIdReply);
    }
}

fn storeJob(
    ctx: ?*RedisModuleCtx,
    jobKey: ?*RedisModuleString,
    jobName: ?*RedisModuleString,
    data: ?*RedisModuleString,
    opts: ?*RedisModuleString,
    timestamp: c_longlong) c_int {

    const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
    defer RedisModule_FreeString.?(ctx, timestampStr);

    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);

    return RedisModule_HashSet.?(key, REDISMODULE_HASH_CFIELDS, 
         "name", jobName,
         "data", data,
         "opts", opts, 
         "timestamp", timestampStr,
         NULL);
}

fn isQueuePaused(ctx: ?*RedisModuleCtx, metaKey: ?*RedisModuleString) bool {
    var isPaused: c_int = 0;
    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, metaKey, REDISMODULE_READ));
    if(key != null) {
        const res = RedisModule_HashGet.?(key, REDISMODULE_HASH_EXISTS | REDISMODULE_HASH_CFIELDS, "paused", &isPaused, NULL);
    }
    RedisModule_CloseKey.?(key);
    return isPaused == 1;
}
