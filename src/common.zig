usingnamespace @import("./redismodule.zig");
const std = @import("std");

pub fn pushList(ctx: ?*RedisModuleCtx, list: ?*RedisModuleString, jobId: ?*RedisModuleString, where: c_int) c_int {
    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, list, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);
    return RedisModule_ListPush.?(key, where, jobId);
}

pub fn popList(ctx: ?*RedisModuleCtx, list: ?*RedisModuleString) ?*RedisModuleString {
    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, list, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);
    return RedisModule_ListPop.?(key, REDISMODULE_LIST_HEAD);
}

pub inline fn getJob(
    ctx: ?*RedisModuleCtx,
    jobId: ?*RedisModuleString,
    timestamp: c_longlong,
    prefix: *const u8,
    token: ?*RedisModuleString,
    lockTTL: c_longlong) ?*RedisModuleCallReply {
        var strLen: usize = undefined;
        var jobIdStr = RedisModule_StringPtrLen.?(jobId, &strLen);

        const jobKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", prefix, jobIdStr);
        defer RedisModule_FreeString.?(ctx, jobKey);

        const lockKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s:%s", prefix, jobIdStr, "lock");
        defer RedisModule_FreeString.?(ctx, lockKey);

        // Set job lock 
        {
            const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, lockKey, REDISMODULE_WRITE));
            defer RedisModule_CloseKey.?(key);

            if(RedisModule_StringSet.?(key, token) != REDISMODULE_OK){
                RedisModule_Log.?(ctx, "warning", "could not set lock token");
                return null;
            }

           if( RedisModule_SetExpire.?(key, lockTTL) != REDISMODULE_OK){
                RedisModule_Log.?(ctx, "warning", "could not set lock expire");
                return null;
           }
        }

        // Update Job
        {
            const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
            defer RedisModule_FreeString.?(ctx, timestampStr);

            const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobKey, REDISMODULE_WRITE));
            defer RedisModule_CloseKey.?(key);

            const result = RedisModule_HashSet.?(key, REDISMODULE_HASH_CFIELDS, 
                "processedOn", timestampStr, "jobId", jobId, NULL);
            // result is the number of fields inserted, so it will be 0 when updating,
            // we cannot rely on result for determining error.
        }

        // Get all fields
        return  RedisModule_Call.?(ctx, "HGETALL", "s", jobKey);
}

pub inline fn getJobEx(
    ctx: ?*RedisModuleCtx,
    jobId: ?*RedisModuleString,
    timestampStr: ?*RedisModuleString,
    prefix: *const u8,
    token: ?*RedisModuleString,
    lockTTL: c_longlong) ?*RedisModuleCallReply {
        var strLen: usize = undefined;
        var jobIdStr = RedisModule_StringPtrLen.?(jobId, &strLen);

        const jobKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", prefix, jobIdStr);
        defer RedisModule_FreeString.?(ctx, jobKey);

        const lockKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s:%s", prefix, jobIdStr, "lock");
        defer RedisModule_FreeString.?(ctx, lockKey);

        // Set job lock 
        {
            const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, lockKey, REDISMODULE_WRITE));
            defer RedisModule_CloseKey.?(key);

            if(RedisModule_StringSet.?(key, token) != REDISMODULE_OK){
                RedisModule_Log.?(ctx, "warning", "could not set lock token");
                return null;
            }

           if( RedisModule_SetExpire.?(key, lockTTL) != REDISMODULE_OK){
                RedisModule_Log.?(ctx, "warning", "could not set lock expire");
                return null;
           }
        }

        // Update Job
        {
            const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobKey, REDISMODULE_WRITE));
            defer RedisModule_CloseKey.?(key);

            const result = RedisModule_HashSet.?(key, REDISMODULE_HASH_CFIELDS, 
                "processedOn", timestampStr, "jobId", jobId, NULL);
            // result is the number of fields inserted, so it will be 0 when updating,
            // we cannot rely on result for determining error.
        }

        // Get all fields
        return  RedisModule_Call.?(ctx, "HGETALL", "s", jobKey);
}

pub fn moveZSetToList(
        ctx: ?*RedisModuleCtx,
        zsetKey: ?*RedisModuleString,
        listKey: ?*RedisModuleString,
        jobId: ?*RedisModuleString) c_int {
    var key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, zsetKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);

    if(RedisModule_ZsetRem.?(key, jobId, null) != REDISMODULE_OK){
        return REDISMODULE_ERR;
    }

    // TODO: use the faster pushList
    const replyEvent = RedisModule_Call.?(ctx, "RPUSH", "ss", listKey, jobId);
    defer RedisModule_FreeCallReply.?(replyEvent);
    if(replyEvent == null){
         return REDISMODULE_ERR;
    }

    // if(common.pushList(ctx, listKey, jobId, REDISMODULE_LIST_HEAD) != REDISMODULE_OK) {
    //     return REDISMODULE_ERR;
    // }
    return REDISMODULE_OK;
}

pub fn moveZSetToListEx(
        ctx: ?*RedisModuleCtx,
        zsetKey: ?*RedisModuleKey,
        listKey: ?*RedisModuleKey,
        jobId: ?*RedisModuleString) c_int {
    if(RedisModule_ZsetRem.?(zsetKey, jobId, null) != REDISMODULE_OK){
        return REDISMODULE_ERR;
    }
    return RedisModule_ListPush.?(listKey, REDISMODULE_LIST_HEAD, jobId);
}

fn getNextDelayedJob(ctx: ?*RedisModuleCtx, delayedKey: ?*RedisModuleString, nextDelayedTimestamp: *c_longlong) ?*RedisModuleString {

    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, delayedKey, REDISMODULE_WRITE));
    defer RedisModule_CloseKey.?(key);

    var nextDelayedJob: ?*RedisModuleString = null;
    var result = RedisModule_ZsetFirstInScoreRange.?(key, 0.0, std.math.inf(f32), 0, 0);
    
    if(result == REDISMODULE_OK) {
         var score: f64 = 0;
         nextDelayedJob = RedisModule_ZsetRangeCurrentElement.?(key, &score);
         RedisModule_ZsetRangeStop.?(key);
        
         if(nextDelayedJob != null){
            nextDelayedTimestamp.* = @floatToInt(c_longlong, @round(score) / 0x100);
         }
    }

    return nextDelayedJob;
}

//
// Moves the next job from delayed or from wait list and returns it.
//
pub fn getNextJob(
    ctx: ?*RedisModuleCtx,
    nameStr: [*c]const u8,
    waitKey: ?*RedisModuleString,
    activeKey: ?*RedisModuleString,
    eventsKey: ?*RedisModuleString,
    token: ?*RedisModuleString,
    lockTTL: c_longlong,
    timestamp: c_longlong
    ) ?*RedisModuleCallReply {

    // // 1) Check if there is a delayed job that should be processed now (move to active and return)
    const reply = moveJobDelayedToActive(ctx, nameStr, activeKey, eventsKey, token, lockTTL, timestamp);
    if(reply != null){
        return reply;
    }

    // 2) If not, check if there is a job in the wait list to be executed (move to active and return)
    return moveJobWaitToActive(ctx, nameStr, waitKey, activeKey, token, lockTTL);
}

pub fn moveJobDelayedToActive(ctx: ?*RedisModuleCtx,
    nameStr: [*c]const u8,
    activeKey: ?*RedisModuleString,
    eventsKey: ?*RedisModuleString,
    token: ?*RedisModuleString,
    lockTTL: c_longlong,
    timestamp: c_longlong) ?*RedisModuleCallReply {

    const delayedKey = prefixStrKeyStr(ctx, nameStr, "delayed");
    defer RedisModule_FreeString.?(ctx, delayedKey);

    var nextDelayedTimestamp: c_longlong = undefined;
    const nextDelayedJob = getNextDelayedJob(ctx, delayedKey, &nextDelayedTimestamp);
    if(nextDelayedJob != null and nextDelayedTimestamp <= timestamp){

        if(moveZSetToList(ctx, delayedKey, activeKey, nextDelayedJob) != REDISMODULE_OK){
            return null;
        }
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
             "event", "active", 
             "jobId", nextDelayedJob, 
             "prev", "delayed");

        return getJob(ctx, nextDelayedJob, timestamp, nameStr, token, lockTTL);
    }
    return null;
}

//
// Moves a job (if any), from wait list to active list.
// creates a lock for the job and returns it.
//
pub fn moveJobWaitToActive(
    ctx: ?*RedisModuleCtx,
    nameStr: [*c]const u8,
    waitKey: ?*RedisModuleString,
    activeKey: ?*RedisModuleString,
    token: ?*RedisModuleString,
    lockTTL: c_longlong,
) ?*RedisModuleCallReply {
    const jobId = popList(ctx, waitKey);
    if(jobId != null){
        defer RedisModule_FreeString.?(ctx,  jobId);
        if(pushList(ctx, activeKey, jobId, REDISMODULE_LIST_HEAD) != REDISMODULE_OK){
            return null;
        }
        const timestamp = RedisModule_Milliseconds.?();
        const eventsKey = prefixStrKeyStr(ctx, nameStr, "events");
        defer RedisModule_FreeString.?(ctx, eventsKey);

        // TODO: replyWithJob is not a correct job, it is not replying actually.
        const reply = replyWithJob(ctx, nameStr, eventsKey, token, lockTTL, jobId, timestamp);
        return reply;
    }
    return null;
}

pub fn replyWithJob(
        ctx: ?*RedisModuleCtx,
        nameStr: [*c]const u8,
        eventsKey: ?*RedisModuleString,
        token: ?*RedisModuleString,
        lockTTL: c_longlong,
        jobId: ?*RedisModuleString,
        timestamp: c_longlong) ?*RedisModuleCallReply {   
    const getJobReply = getJob(ctx, jobId, timestamp, nameStr, token, lockTTL);

    if(getJobReply != null){
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscc", eventsKey, "*",
            "event", "active", 
            "jobId", jobId, 
            "prev", "waiting");
        defer RedisModule_FreeCallReply.?(replyEvent);
    }
    return getJobReply;
}

// TODO: Generic Send event, use Bullv3 or BullMQ event sending

pub fn prefixKey(ctx: ?*RedisModuleCtx, queueName: ?*RedisModuleString, key: ?*RedisModuleString) ?*RedisModuleString {
    var strLen: usize = undefined;
    const queueNameStr = RedisModule_StringPtrLen.?(queueName, &strLen);
    const keyStr = RedisModule_StringPtrLen.?(queueName, &strLen);
    return RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, keyStr);
}

pub fn prefixKeyStr(ctx: ?*RedisModuleCtx, queueName: ?*RedisModuleString, keyStr: [*c]const u8) ?*RedisModuleString {
    var strLen: usize = undefined;
    const queueNameStr = RedisModule_StringPtrLen.?(queueName, &strLen);
    return RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, keyStr);
}

pub fn prefixStrKey(ctx: ?*RedisModuleCtx, queueNameStr: [*c]const u8, key: ?*RedisModuleString) ?*RedisModuleString{
    var strLen: usize = undefined;
    const keyStr = RedisModule_StringPtrLen.?(key, &strLen);
    return RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, keyStr);
}

pub fn prefixStrKeyStr(ctx: ?*RedisModuleCtx, queueNameStr: [*c]const u8, keyStr: [*c]const u8) ?*RedisModuleString{
    return RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, keyStr);
}

// TODO: A faster concat RedisModuleString since we use it a lot.
// Idea, allocate array, length = sum(concatenadstrings) + 1 * num strings
// memcopy to new array, add ":"
pub fn concatStrings( strings: [_]?*RedisModuleString) ?*RedisModuleString {
    // Limitation to max 4 strings (to avoid another memory allocation)
    const ptrs: [4][*c]const u8;
    const lens: [4]c_longlong;

    // 1) Get ptrs and lengths

    // 2) Alloc memory for destination buffer. defer free alloc.
    // void *RedisModule_PoolAlloc(RedisModuleCtx *ctx, size_t bytes);

    // 3 Concat strings adding ':' between strings
    // for (source[0..byte_count]) {
       // |b, i| dest[i] = b;
    // }

    // 4) return a created new string with allocated buffer + total len
    return null;
}

pub fn isQueuePaused(ctx: ?*RedisModuleCtx, metaKey: ?*RedisModuleString) bool {
    var isPaused: c_int = 0;
    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, metaKey, REDISMODULE_READ));
    if(key != null) {
        const res = RedisModule_HashGet.?(key, REDISMODULE_HASH_EXISTS | REDISMODULE_HASH_CFIELDS, "paused", &isPaused, NULL);
    }
    RedisModule_CloseKey.?(key);
    return isPaused == 1;
}
