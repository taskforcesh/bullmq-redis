usingnamespace @import("./redismodule.zig");
const std = @import("std");
const common = @import("common.zig");

const inf: c_longlong = 9223372036854775807;

//
// QDONE name jobId token  (RESULT result) | (ERROR err) [NEXT lockTTL] [TRIM keep]
//
pub export fn QDONE_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    if( argc < 4 or argc > 8){
        return RedisModule_WrongArity.?(ctx);
    }

    const name = argv[1];
    const jobId = argv[2];
    const token = argv[3];

    var strLen: usize = undefined;
    const nameStr = RedisModule_StringPtrLen.?(name, &strLen);
    const jobIdStr = RedisModule_StringPtrLen.?(jobId, &strLen);

    const eventsKey = common.prefixStrKeyStr(ctx, nameStr, "events");
    defer RedisModule_FreeString.?(ctx, eventsKey);

    const activeKey = common.prefixStrKeyStr(ctx, nameStr, "active");
    defer RedisModule_FreeString.?(ctx, activeKey);

    const jobIdKey = common.prefixStrKeyStr(ctx, nameStr, jobIdStr);
    defer RedisModule_FreeString.?(ctx, jobIdKey);

    const jobIdKeyStr = RedisModule_StringPtrLen.?(jobIdKey, &strLen);

    var result: ?*RedisModuleString = null;
    var err: ?*RedisModuleString = null;
    var next: bool = false;
    var numJobsToKeep: c_longlong = inf;
    var target: ?*RedisModuleString = null;
    var lockTTL: c_longlong = undefined;

    const resultOpt = RedisModule_CreateString.?(ctx, "RESULT", 6);
    defer RedisModule_FreeString.?(ctx, resultOpt);

    const errorOpt = RedisModule_CreateString.?(ctx, "ERROR", 5);
    defer RedisModule_FreeString.?(ctx, errorOpt);

    if(RedisModule_StringCompare.?(argv[4], resultOpt) == 0){
        result = argv[5];
        target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "completed");
    } else if (RedisModule_StringCompare.?(argv[4], errorOpt) == 0) {
        err = argv[5];
        target = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "failed");
    }
    defer RedisModule_FreeString.?(ctx, target);

    if(target == null){
        return RedisModule_ReplyWithError.?(ctx,"ERR Missing target (RESULT or ERROR)");
    }

    if( argc > 6) {
        var i: usize = 6;
        const nextOpt = RedisModule_CreateString.?(ctx, "NEXT", 4);
        defer RedisModule_FreeString.?(ctx, nextOpt);

        const trimOpt = RedisModule_CreateString.?(ctx, "TRIM", 4);
        defer RedisModule_FreeString.?(ctx, trimOpt);

        while (i < argc) {
            const argType = argv[i];

            if(!next and RedisModule_StringCompare.?(argType, nextOpt) == 0){
                next = true;
                if(RedisModule_StringToLongLong.?(argv[i+1], &lockTTL) != REDISMODULE_OK){
                    return RedisModule_ReplyWithError.?(ctx, "ERR Wrong Type");
                }
                i+=2;
                continue;
            }

            if( RedisModule_StringCompare.?(argType, trimOpt) == 0){
                if(RedisModule_StringToLongLong.?(argv[i+1], &numJobsToKeep) != REDISMODULE_OK){
                    return RedisModule_ReplyWithError.?(ctx, "ERR Wrong Type");
                }
                i+=2;
                continue;
            }
        }
    }

    RedisModule_Log.?(ctx, "warning", "The job %s:%s may exist", nameStr, jobIdStr);

    //
    // Check if job with given jobId exists
    //
    const jobKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobIdKey, REDISMODULE_READ));
    RedisModule_CloseKey.?(jobKey);
    if(jobKey != null){

        RedisModule_Log.?(ctx, "warning", "Before lock");

        if(!releaseLock(ctx, jobIdKeyStr, token)){
            return RedisModule_ReplyWithError.?(ctx, "ERR Could not release lock");
        }

        RedisModule_Log.?(ctx, "warning", "After lock");

        // Remove from active list
        const replyRemove = RedisModule_Call.?(ctx, "LREM", "scs", activeKey, "-1", jobId);
        defer RedisModule_FreeCallReply.?(replyRemove);

        RedisModule_Log.?(ctx, "warning", "After removing from active");

        // If replyRemove < 1 then return with error
        if(RedisModule_CallReplyInteger.?(replyRemove) < 1) {
            return RedisModule_ReplyWithError.?(ctx, "ERR Could not find the job in active");
        }

        RedisModule_Log.?(ctx, "warning", "Before trim jobs");

        if(numJobsToKeep < inf) {
            if (trimJobs(ctx, nameStr, target, numJobsToKeep) != REDISMODULE_OK){
                return REDISMODULE_ERR;
            }
        }

        RedisModule_Log.?(ctx, "warning", "After trim jobs");

        if(numJobsToKeep > 0){
            RedisModule_Log.?(ctx, "warning", "Before getting timestamp");

            const timestamp = RedisModule_Milliseconds.?();
            const timestampStr = RedisModule_CreateStringFromLongLong.?(ctx, timestamp);
            defer RedisModule_FreeString.?(ctx, timestampStr);

            RedisModule_Log.?(ctx, "warning", "Before open target key %s", RedisModule_StringPtrLen.?(target, &strLen));
            const zsetKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?( ctx, target, REDISMODULE_WRITE ));
            defer RedisModule_CloseKey.?(zsetKey);
            
            RedisModule_Log.?(ctx, "warning", "Before adding job to target key");
            if (RedisModule_ZsetAdd.?(zsetKey, @intToFloat(f64, timestamp), jobId, null) != REDISMODULE_OK){
                return REDISMODULE_ERR;
            }

            const jobKey2 = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?(ctx, jobIdKey, REDISMODULE_WRITE));
            defer RedisModule_CloseKey.?(jobKey2);
            if(result != null){
                if(RedisModule_HashSet.?(jobKey2, REDISMODULE_HASH_CFIELDS, 
                    "result", result,
                    "finishedOn", timestampStr,
                    NULL) != REDISMODULE_OK){
                    return REDISMODULE_ERR;
                }
            } else if ( err != null ) {
                if(RedisModule_HashSet.?(jobKey2, REDISMODULE_HASH_CFIELDS,
                    "failedReason", err,
                    "finishedOn", timestampStr,
                    NULL) != REDISMODULE_OK){
                    return REDISMODULE_ERR;
                }
            }
        }

        RedisModule_Log.?(ctx, "warning", "After update job data");

        // TODO: Emit done event
        // rcall("XADD", KEYS[6], "*", "event", ARGV[5], "jobId", ARGV[1], ARGV[3], ARGV[4])
        const event: [*c]const u8 = if (result != null) "completed" else "failed";
        const field: [*c]const u8 = if (result != null) "returnvalue" else "failedReason";
        const value = if (result != null) result else err;
        const replyEvent = RedisModule_Call.?(ctx, "XADD", "sccccscs", eventsKey, "*",
                    "event", event, 
                    "jobId", jobId, 
                    field, value);
        if(next) {
            const timestamp = RedisModule_Milliseconds.?();
            
            RedisModule_Log.?(ctx, "warning", "Before wait key");
            const waitKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "wait");
            defer RedisModule_FreeString.?(ctx, waitKey);

            RedisModule_Log.?(ctx, "warning", "Before move job from wait to active %s:%s", nameStr, "wait");
            const reply = common.getNextJob(ctx, nameStr, waitKey, activeKey, eventsKey, token, lockTTL, timestamp);
            if(reply != null){
                defer RedisModule_FreeCallReply.?(reply);
                return RedisModule_ReplyWithCallReply.?(ctx, reply);
            }
        }

        // TODO: Trim events
        // local maxEvents = rcall("HGET", KEYS[7], "opts.maxLenEvents")
        // if (maxEvents == false) then
        //     maxEvents = 10000
        //     end
        // rcall("XTRIM", KEYS[6], "MAXLEN", "~", maxEvents)
        return RedisModule_ReplyWithSimpleString.?(ctx, "OK");
    } else {
        return RedisModule_ReplyWithNull.?(ctx);
    }

    return REDISMODULE_OK;
}

//
// Releases the lock and returns true if succeeded.
//
fn releaseLock(ctx: ?*RedisModuleCtx, jobIdKeyStr: *const u8, token: ?*RedisModuleString) bool {
    RedisModule_Log.?(ctx, "warning", "Gonna try to unlock job %s:%s may exist", jobIdKeyStr, "lock");

    const lockKey = common.prefixStrKeyStr(ctx, jobIdKeyStr, "lock");
    var strLen: usize = undefined;
    
    const key = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?( ctx, lockKey, REDISMODULE_WRITE ));
    const lockToken = RedisModule_CreateString.?(ctx, RedisModule_StringDMA.?(key, &strLen, REDISMODULE_READ), strLen);
    defer RedisModule_FreeString.?(ctx, lockToken);
    defer RedisModule_CloseKey.?(key);
    
    if(RedisModule_StringCompare.?( token, lockToken) == 0) {
        _ = RedisModule_DeleteKey.?(key);
        return true;
    }
    return false;
}

//
// Trims the done jobs
//
fn trimJobs(ctx: ?*RedisModuleCtx, nameStr: *const u8, target: ?*RedisModuleString, numToKeep: c_longlong) c_int {

    const zsetKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?( ctx, target, REDISMODULE_WRITE ));
    defer RedisModule_CloseKey.?(zsetKey);

    const cardinal = @intCast(c_longlong, RedisModule_ValueLength.?(zsetKey));
    var numToRemove = cardinal - numToKeep;

    if(numToRemove > 0) {
        if(RedisModule_ZsetLastInScoreRange.?(zsetKey, 0, std.math.inf(f32), 0, 0) != REDISMODULE_OK){
            return REDISMODULE_ERR;
        }

        while( numToRemove > 0){
            var score: f64 = undefined;
            const jobId = RedisModule_ZsetRangeCurrentElement.?(zsetKey, &score);
            if( jobId == null){
                break;
            }

            const jobIdKey = common.prefixStrKey(ctx, nameStr, jobId);
            defer RedisModule_FreeString.?(ctx, jobIdKey);

            // Delete job
            const jobKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?( ctx, jobIdKey, REDISMODULE_WRITE ));
            _ = RedisModule_DeleteKey.?(jobKey);
            _ = RedisModule_CloseKey.?(jobKey);

            // Delete job's logs
            var strLen: usize = undefined;

            const jobLog = common.prefixKeyStr(ctx, jobIdKey, "logs");
            defer RedisModule_FreeString.?(ctx, jobLog);

            const jobLogKey = @ptrCast(?*RedisModuleKey, RedisModule_OpenKey.?( ctx, jobLog, REDISMODULE_WRITE ));
            _ = RedisModule_DeleteKey.?(jobLogKey);
            _ = RedisModule_CloseKey.?(jobLogKey);

            // Delete the key
            _ = RedisModule_ZsetRem.?(zsetKey, jobId, null);

            // Should we use this one instead? RedisModule_ZsetRangePrev ?
            if (RedisModule_ZsetRangeNext.?(zsetKey) == 0){
                break;
            }
            numToRemove = numToRemove - 1;
        }

        RedisModule_ZsetRangeStop.?(zsetKey);
    }

    return REDISMODULE_OK;
}
