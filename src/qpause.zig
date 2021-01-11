usingnamespace @import("./redismodule.zig");
const common = @import("common.zig");

//
//  ## QPAUSE queue
//
pub export fn QPAUSE_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    if( argc != 2){
        return RedisModule_WrongArity.?(ctx);
    }

    // argv[0] is the command
    const name = argv[1];

    const err = common.pauseQueue(ctx, name, true);
    if(err != null){
        defer RedisModule_FreeString.?(ctx, err);
        return RedisModule_ReplyWithString.?(ctx, err);
    }

    return RedisModule_ReplyWithNull.?(ctx);
}

pub export fn QISPAUSED_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    if( argc != 2){
        return RedisModule_WrongArity.?(ctx);
    }

    // argv[0] is the command
    const name = argv[1];

    var strLen: usize = undefined;
    const nameStr = RedisModule_StringPtrLen.?(name, &strLen);

    const metaKey = RedisModule_CreateStringPrintf.?(ctx, "%s:%s", nameStr, "meta");
    defer RedisModule_FreeString.?(ctx, metaKey);

    if(common.isQueuePaused(ctx, metaKey)){
        return RedisModule_ReplyWithSimpleString.?(ctx, "PAUSED");
    } else {
        return RedisModule_ReplyWithSimpleString.?(ctx, "RUNNING");
    }
}
