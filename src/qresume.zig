usingnamespace @import("./redismodule.zig");
const common = @import("common.zig");

//
//  ## QPAUSE queue
//
pub export fn QRESUME_Command(ctx: ?*RedisModuleCtx, argv: [*c]?*RedisModuleString, argc: c_int) c_int {
    if( argc != 2){
        return RedisModule_WrongArity.?(ctx);
    }

     // argv[0] is the command
    const name = argv[1];

    const err = common.pauseQueue(ctx, name, false);
    if(err != null){
        defer RedisModule_FreeString.?(ctx, err);
        return RedisModule_ReplyWithString.?(ctx, err);
    }

    return RedisModule_ReplyWithNull.?(ctx);
}
