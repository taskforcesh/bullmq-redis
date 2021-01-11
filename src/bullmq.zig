usingnamespace @import("redismodule.zig");
const std = @import("std");

const qadd = @import("qadd.zig");
const qnext = @import("qnext.zig");
const qdone = @import("qdone.zig");
const qpause = @import("qpause.zig");
const qresume = @import("qresume.zig");

const common = @import("common.zig");

export fn RedisModule_OnLoad(ctx: *RedisModuleCtx) c_int {
    if (RedisModule_Init(ctx, "bullmq", 1, REDISMODULE_APIVER_1) == REDISMODULE_ERR) {
        return REDISMODULE_ERR;
    }

    var result = RedisModule_CreateCommand.?(ctx, "QADD", qadd.QADD_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QNEXT", qnext.QNEXT_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QDONE", qdone.QDONE_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QPAUSE", qpause.QPAUSE_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QRESUME", qresume.QRESUME_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QISPAUSED", qpause.QISPAUSED_Command, 
        "write deny-oom pubsub random fast", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    result = RedisModule_CreateCommand.?(ctx, "QNOOP", QNOOP_Command, 
        "readonly", 0, 0, 0);
    if(result == REDISMODULE_ERR){
        return REDISMODULE_ERR;
    }

    //
    // Register eviction event. When a locked key expires we need to move that job back to
    // the wait list. 
    //
    return RedisModule_SubscribeToKeyspaceEvents.?(ctx, REDISMODULE_NOTIFY_EXPIRED, ExpiredEventCallback);
}

export fn RedisModule_OnUnload(ctx: *RedisModuleCtx) c_int {
    return REDISMODULE_OK;
}

//
// Noop command, used to get a theoretical maximum performance for this redis instance.
//
export fn QNOOP_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    return RedisModule_ReplyWithSimpleString.?(ctx, "Noop");
}

fn ExpiredEventCallback(ctx: ?*RedisModuleCtx, eventType: c_int,  event: [*c]const u8, key: ?*RedisModuleString) callconv(.C) c_int {
    var strLen: usize = undefined;
    const keyStr = RedisModule_StringPtrLen.?(key, &strLen);

    RedisModule_Log.?(ctx, "warning", "key event %s on key %s", event, keyStr);

    // TODO: Check that the lock key is still there to avoid
    // the possible hazzard that the key has already been moved to completed or failed.

    // parse key and check if it ends in :lock
    // if that is the case,
    // 1) move the key (minus :lock) from active to wait.
    // 2) send stalled event.
    const jobKey = unpostfixKey(ctx, key, "lock");
    if(jobKey != null){
        const maxStalledAllowed: c_longlong = 3;

        const openedJobkey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobKey, REDISMODULE_WRITE));
        defer RedisModule_CloseKey.?(openedJobkey);

        const jobKeyStr = RedisModule_StringPtrLen.?(jobKey, &strLen);
        RedisModule_Log.?(ctx, "warning", "we got a job key %s %i", jobKeyStr, openedJobkey);

        // TODO: Check the number of times this job is allowed to stall
        var stalledCounterStr: ?*RedisModuleString = undefined;
        var jobId: ?*RedisModuleString = undefined;
        if( RedisModule_HashGet.?(
            openedJobkey,
            REDISMODULE_HASH_CFIELDS,
            "stalledCounter",
            &stalledCounterStr,
            "jobId",
            &jobId, NULL) == REDISMODULE_OK ) {
            var stalledCounter: c_longlong = undefined;
            if(stalledCounterStr != null) {
                defer RedisModule_FreeString.?(ctx, stalledCounterStr);
                if(RedisModule_StringToLongLong.?(stalledCounterStr, &stalledCounter) != REDISMODULE_OK){
                    return REDISMODULE_OK;
                }
            } else {
                stalledCounter = 0;
            }

            const jobIdStr = RedisModule_StringPtrLen.?(jobId, &strLen);
            RedisModule_Log.?(ctx, "warning", "Job String %s", jobIdStr);
            const queueName = unpostfixKey(ctx, jobKey, std.mem.spanZ(jobIdStr));
            if( queueName != null) {
                const queueNameStr = RedisModule_StringPtrLen.?(queueName, &strLen);
                RedisModule_Log.?(ctx, "warning", "queueName %s", queueNameStr);
                const source = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, "active");
                var target: ?*RedisModuleString = undefined;

                const replyRemoveActive = RedisModule_Call.?(ctx, "LREM", "scs", source, "0", jobId);
                RedisModule_FreeCallReply.?(replyRemoveActive);

                stalledCounter += 1;
                stalledCounterStr = RedisModule_CreateStringFromLongLong.?(ctx, stalledCounter);
                defer RedisModule_FreeString.?(ctx, stalledCounterStr);
                _ = RedisModule_HashSet.?(openedJobkey, REDISMODULE_HASH_CFIELDS, "stalledCounter", stalledCounterStr, NULL);

                if(stalledCounter < maxStalledAllowed) {    
                    const metaKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, "meta");

                    if(common.isQueuePaused(ctx, metaKey)){
                        target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, "pause");
                    }else {
                        target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, "wait");
                    }
                    _ = common.pushList(ctx, target, jobId, REDISMODULE_LIST_TAIL);
                } else {
                    // TODO: Fail the job
                    // If maximum stalled times then move to fail with reason "stalled more than allowable limit"
                    target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", queueNameStr, "failed");

                    const timestamp = RedisModule_Milliseconds.?();
                    const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
                    defer RedisModule_FreeString.?(ctx, timestampStr);

                    const err = RedisModule_CreateStringPrintf.?(ctx, "stalled more than allowable limit");
                    defer RedisModule_FreeString.?(ctx, err);

                     _ = RedisModule_HashSet.?(openedJobkey, REDISMODULE_HASH_CFIELDS,
                        "failedReason", err,
                        "finishedOn", timestampStr,
                        NULL);

                    const zsetKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, target, REDISMODULE_WRITE));
                    defer RedisModule_CloseKey.?(zsetKey);

                    _ = RedisModule_ZsetAdd.?(zsetKey, @intToFloat(f64, timestamp), jobId, null);
                }
            }
        }
    }

    return REDISMODULE_OK;
}

const minLockedKeyLength = 8;

fn unpostfixKey(ctx: ?*RedisModuleCtx, key: ?*RedisModuleString, postfix: []const u8 ) ?*RedisModuleString {
    var strLen: usize = undefined;
    const keyStr = RedisModule_StringPtrLen.?(key, &strLen);

    if(strLen > postfix.len + 1) {
        var i = strLen - postfix.len;
        if( keyStr[i-1] == ':') {
            var j: u64 = 0;
            while( i < strLen): ( i+=1 ) {
                if(postfix[j] != keyStr[i]){
                    return null;
                }
                j+=1;
            }
            return RedisModule_CreateString.?(ctx, keyStr, strLen - ( postfix.len + 1 ));
        }
    }
    return null;
}
