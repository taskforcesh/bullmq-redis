pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
const union_unnamed_1 = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __mbstate_t = union_unnamed_1;
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?fn (?*c_void) callconv(.C) void,
    __arg: ?*c_void,
    __next: [*c]struct___darwin_pthread_handler_rec,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long,
    __opaque: [40]u8,
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long,
    __opaque: [192]u8,
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long,
    __opaque: [16]u8,
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec,
    __opaque: [8176]u8,
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub fn _OSSwapInt16(arg__data: __uint16_t) callconv(.C) __uint16_t {
    var _data = arg__data;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, _data)) << @intCast(@import("std").math.Log2Int(c_int), 8)) | (@bitCast(c_int, @as(c_uint, _data)) >> @intCast(@import("std").math.Log2Int(c_int), 8)))));
} // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:60:9: warning: TODO implement translation of CastKind BuiltinFnToFnPtr
pub const _OSSwapInt32 = @compileError("unable to translate function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:55:1
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:74:9: warning: TODO implement translation of CastKind BuiltinFnToFnPtr
pub const _OSSwapInt64 = @compileError("unable to translate function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:70:1
pub const u_char = u8;
pub const u_short = c_ushort;
pub const u_int = c_uint;
pub const u_long = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_quad_t = u_int64_t;
pub const quad_t = i64;
pub const qaddr_t = [*c]quad_t;
pub const caddr_t = [*c]u8;
pub const daddr_t = i32;
pub const dev_t = __darwin_dev_t;
pub const fixpt_t = u_int32_t;
pub const blkcnt_t = __darwin_blkcnt_t;
pub const blksize_t = __darwin_blksize_t;
pub const gid_t = __darwin_gid_t;
pub const in_addr_t = __uint32_t;
pub const in_port_t = __uint16_t;
pub const ino_t = __darwin_ino_t;
pub const ino64_t = __darwin_ino64_t;
pub const key_t = __int32_t;
pub const mode_t = __darwin_mode_t;
pub const nlink_t = __uint16_t;
pub const id_t = __darwin_id_t;
pub const pid_t = __darwin_pid_t;
pub const off_t = __darwin_off_t;
pub const segsz_t = i32;
pub const swblk_t = i32;
pub const uid_t = __darwin_uid_t;
pub const clock_t = __darwin_clock_t;
pub const time_t = __darwin_time_t;
pub const useconds_t = __darwin_useconds_t;
pub const suseconds_t = __darwin_suseconds_t;
pub const rsize_t = __darwin_size_t;
pub const errno_t = c_int;
pub const struct_fd_set = extern struct {
    fds_bits: [32]__int32_t,
};
pub const fd_set = struct_fd_set;
pub extern fn __darwin_check_fd_set_overflow(c_int, ?*const c_void, c_int) c_int;
pub fn __darwin_check_fd_set(arg__a: c_int, arg__b: ?*const c_void) callconv(.C) c_int {
    var _a = arg__a;
    var _b = arg__b;
    if (@intCast(usize, @ptrToInt(&__darwin_check_fd_set_overflow)) != @bitCast(usize, @as(c_long, @as(c_int, 0)))) {
        return __darwin_check_fd_set_overflow(_a, _b, @as(c_int, 0));
    } else {
        return 1;
    }
    return 0;
}
pub fn __darwin_fd_isset(arg__fd: c_int, arg__p: [*c]const struct_fd_set) callconv(.C) c_int {
    var _fd = arg__fd;
    var _p = arg__p;
    if (__darwin_check_fd_set(_fd, @ptrCast(?*const c_void, _p)) != 0) {
        return (_p.*.fds_bits[(@bitCast(c_ulong, @as(c_long, _fd)) / (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8)))))] & (@bitCast(__int32_t, @truncate(c_uint, ((@bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) << @intCast(@import("std").math.Log2Int(c_ulong), (@bitCast(c_ulong, @as(c_long, _fd)) % (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8)))))))))));
    }
    return 0;
}
pub fn __darwin_fd_set(arg__fd: c_int, _p: [*c]struct_fd_set) callconv(.C) void {
    var _fd = arg__fd;
    if (__darwin_check_fd_set(_fd, @ptrCast(?*const c_void, _p)) != 0) {
        _ = (blk: {
            const ref = &_p.*.fds_bits[(@bitCast(c_ulong, @as(c_long, _fd)) / (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8)))))];
            ref.* = ref.* | (@bitCast(__int32_t, @truncate(c_uint, ((@bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) << @intCast(@import("std").math.Log2Int(c_ulong), (@bitCast(c_ulong, @as(c_long, _fd)) % (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8))))))))));
            break :blk ref.*;
        });
    }
}
pub fn __darwin_fd_clr(arg__fd: c_int, _p: [*c]struct_fd_set) callconv(.C) void {
    var _fd = arg__fd;
    if (__darwin_check_fd_set(_fd, @ptrCast(?*const c_void, _p)) != 0) {
        _ = (blk: {
            const ref = &_p.*.fds_bits[(@bitCast(c_ulong, @as(c_long, _fd)) / (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8)))))];
            ref.* = ref.* & ~(@bitCast(__int32_t, @truncate(c_uint, ((@bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) << @intCast(@import("std").math.Log2Int(c_ulong), (@bitCast(c_ulong, @as(c_long, _fd)) % (@sizeOf(__int32_t) *% @bitCast(c_ulong, @as(c_long, @as(c_int, 8))))))))));
            break :blk ref.*;
        });
    }
}
pub const fd_mask = __int32_t;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const pthread_cond_t = __darwin_pthread_cond_t;
pub const pthread_condattr_t = __darwin_pthread_condattr_t;
pub const pthread_mutex_t = __darwin_pthread_mutex_t;
pub const pthread_mutexattr_t = __darwin_pthread_mutexattr_t;
pub const pthread_once_t = __darwin_pthread_once_t;
pub const pthread_rwlock_t = __darwin_pthread_rwlock_t;
pub const pthread_rwlockattr_t = __darwin_pthread_rwlockattr_t;
pub const pthread_t = __darwin_pthread_t;
pub const pthread_key_t = __darwin_pthread_key_t;
pub const fsblkcnt_t = __darwin_fsblkcnt_t;
pub const fsfilcnt_t = __darwin_fsfilcnt_t;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const va_list = __darwin_va_list;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn renamex_np([*c]const u8, [*c]const u8, c_uint) c_int;
pub extern fn renameatx_np(c_int, [*c]const u8, c_int, [*c]const u8, c_uint) c_int;
pub const fpos_t = __darwin_off_t;
pub const struct___sbuf = extern struct {
    _base: [*c]u8,
    _size: c_int,
};
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8,
    _r: c_int,
    _w: c_int,
    _flags: c_short,
    _file: c_short,
    _bf: struct___sbuf,
    _lbfsize: c_int,
    _cookie: ?*c_void,
    _close: ?fn (?*c_void) callconv(.C) c_int,
    _read: ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int,
    _seek: ?fn (?*c_void, fpos_t, c_int) callconv(.C) fpos_t,
    _write: ?fn (?*c_void, [*c]const u8, c_int) callconv(.C) c_int,
    _ub: struct___sbuf,
    _extra: ?*struct___sFILEX,
    _ur: c_int,
    _ubuf: [3]u8,
    _nbuf: [1]u8,
    _lb: struct___sbuf,
    _blksize: c_int,
    _offset: fpos_t,
};
pub const FILE = struct___sFILE;
pub extern var __stdinp: [*c]FILE;
pub extern var __stdoutp: [*c]FILE;
pub extern var __stderrp: [*c]FILE;
pub extern fn clearerr([*c]FILE) void;
pub extern fn fclose([*c]FILE) c_int;
pub extern fn feof([*c]FILE) c_int;
pub extern fn ferror([*c]FILE) c_int;
pub extern fn fflush([*c]FILE) c_int;
pub extern fn fgetc([*c]FILE) c_int;
pub extern fn fgetpos(noalias [*c]FILE, [*c]fpos_t) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, [*c]FILE) [*c]u8;
pub extern fn fopen(__filename: [*c]const u8, __mode: [*c]const u8) [*c]FILE;
pub extern fn fprintf([*c]FILE, [*c]const u8, ...) c_int;
pub extern fn fputc(c_int, [*c]FILE) c_int;
pub extern fn fputs(noalias [*c]const u8, noalias [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*c_void, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]FILE) [*c]FILE;
pub extern fn fscanf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fseek([*c]FILE, c_long, c_int) c_int;
pub extern fn fsetpos([*c]FILE, [*c]const fpos_t) c_int;
pub extern fn ftell([*c]FILE) c_long;
pub extern fn fwrite(__ptr: ?*const c_void, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn getc([*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn gets([*c]u8) [*c]u8;
pub extern fn perror([*c]const u8) void;
pub extern fn printf([*c]const u8, ...) c_int;
pub extern fn putc(c_int, [*c]FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn rewind([*c]FILE) void;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn setbuf(noalias [*c]FILE, noalias [*c]u8) void;
pub extern fn setvbuf(noalias [*c]FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn sprintf([*c]u8, [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn ungetc(c_int, [*c]FILE) c_int;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub extern fn vfprintf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vprintf([*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf([*c]u8, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn fdopen(c_int, [*c]const u8) [*c]FILE;
pub extern fn fileno([*c]FILE) c_int;
pub extern fn pclose([*c]FILE) c_int;
pub extern fn popen([*c]const u8, [*c]const u8) [*c]FILE;
pub extern fn __srget([*c]FILE) c_int;
pub extern fn __svfscanf([*c]FILE, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __swbuf(c_int, [*c]FILE) c_int;
pub fn __sputc(arg__c: c_int, arg__p: [*c]FILE) callconv(.C) c_int {
    var _c = arg__c;
    var _p = arg__p;
    if (((blk: {
        const ref = &_p.*._w;
        ref.* -= 1;
        break :blk ref.*;
    }) >= @as(c_int, 0)) or ((_p.*._w >= _p.*._lbfsize) and (@bitCast(c_int, @as(c_uint, @bitCast(u8, @truncate(i8, _c)))) != @as(c_int, '\n')))) return @bitCast(c_int, @as(c_uint, (blk: {
        const tmp = @bitCast(u8, @truncate(i8, _c));
        (blk_1: {
            const ref = &_p.*._p;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).?.* = tmp;
        break :blk tmp;
    }))) else return (__swbuf(_c, _p));
    return 0;
}
pub extern fn flockfile([*c]FILE) void;
pub extern fn ftrylockfile([*c]FILE) c_int;
pub extern fn funlockfile([*c]FILE) void;
pub extern fn getc_unlocked([*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, [*c]FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getw([*c]FILE) c_int;
pub extern fn putw(c_int, [*c]FILE) c_int;
pub extern fn tempnam(__dir: [*c]const u8, __prefix: [*c]const u8) [*c]u8;
pub extern fn fseeko(__stream: [*c]FILE, __offset: off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) off_t;
pub extern fn snprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsnprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __str: [*c]const u8, noalias __format: [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn getdelim(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) isize;
pub extern fn getline(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, noalias __stream: [*c]FILE) isize;
pub extern fn fmemopen(noalias __buf: ?*c_void, __size: usize, noalias __mode: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufp: [*c][*c]u8, __sizep: [*c]usize) [*c]FILE;
pub extern const sys_nerr: c_int;
pub extern const sys_errlist: [*c]const [*c]const u8;
pub extern fn asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn ctermid_r([*c]u8) [*c]u8;
pub extern fn fgetln([*c]FILE, [*c]usize) [*c]u8;
pub extern fn fmtcheck([*c]const u8, [*c]const u8) [*c]const u8;
pub extern fn fpurge([*c]FILE) c_int;
pub extern fn setbuffer([*c]FILE, [*c]u8, c_int) void;
pub extern fn setlinebuf([*c]FILE) c_int;
pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn zopen([*c]const u8, [*c]const u8, c_int) [*c]FILE;
pub extern fn funopen(?*const c_void, ?fn (?*c_void, [*c]u8, c_int) callconv(.C) c_int, ?fn (?*c_void, [*c]const u8, c_int) callconv(.C) c_int, ?fn (?*c_void, fpos_t, c_int) callconv(.C) fpos_t, ?fn (?*c_void) callconv(.C) c_int) [*c]FILE;
pub extern fn __sprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __snprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __vsprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn __vsnprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub const RedisModuleTimerID = u64;
pub const struct_RedisModuleEvent = extern struct {
    id: u64,
    dataver: u64,
};
pub const RedisModuleEvent = struct_RedisModuleEvent;
pub const struct_RedisModuleCtx = opaque {};
pub const struct_RedisModuleDefragCtx = opaque {};
pub const RedisModuleEventCallback = ?fn (?*struct_RedisModuleCtx, RedisModuleEvent, u64, ?*c_void) callconv(.C) void;
pub const RedisModuleEvent_ReplicationRoleChanged: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 0))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_Persistence: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_FlushDB: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 2))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_Loading: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 3))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_ClientChange: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 4))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_Shutdown: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 5))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_ReplicaChange: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 6))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_CronLoop: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 8))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_MasterLinkChange: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 7))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_ModuleChange: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 9))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_LoadingProgress: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 10))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_SwapDB: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 11))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const RedisModuleEvent_ReplBackup: RedisModuleEvent = RedisModuleEvent{
    .id = @bitCast(u64, @as(c_longlong, @as(c_int, 12))),
    .dataver = @bitCast(u64, @as(c_longlong, @as(c_int, 1))),
};
pub const struct_RedisModuleClientInfo = extern struct {
    version: u64,
    flags: u64,
    id: u64,
    addr: [46]u8,
    port: u16,
    db: u16,
};
pub const RedisModuleClientInfoV1 = struct_RedisModuleClientInfo;
pub const struct_RedisModuleReplicationInfo = extern struct {
    version: u64,
    master: c_int,
    masterhost: [*c]u8,
    masterport: c_int,
    replid1: [*c]u8,
    replid2: [*c]u8,
    repl1_offset: u64,
    repl2_offset: u64,
};
pub const RedisModuleReplicationInfoV1 = struct_RedisModuleReplicationInfo;
pub const struct_RedisModuleFlushInfo = extern struct {
    version: u64,
    sync: i32,
    dbnum: i32,
};
pub const RedisModuleFlushInfoV1 = struct_RedisModuleFlushInfo;
pub const struct_RedisModuleModuleChange = extern struct {
    version: u64,
    module_name: [*c]const u8,
    module_version: i32,
};
pub const RedisModuleModuleChangeV1 = struct_RedisModuleModuleChange;
pub const struct_RedisModuleCronLoopInfo = extern struct {
    version: u64,
    hz: i32,
};
pub const RedisModuleCronLoopV1 = struct_RedisModuleCronLoopInfo;
pub const struct_RedisModuleLoadingProgressInfo = extern struct {
    version: u64,
    hz: i32,
    progress: i32,
};
pub const RedisModuleLoadingProgressV1 = struct_RedisModuleLoadingProgressInfo;
pub const struct_RedisModuleSwapDbInfo = extern struct {
    version: u64,
    dbnum_first: i32,
    dbnum_second: i32,
};
pub const RedisModuleSwapDbInfoV1 = struct_RedisModuleSwapDbInfo;
pub const mstime_t = c_longlong;
pub const RedisModuleCtx = struct_RedisModuleCtx;
pub const struct_RedisModuleKey = opaque {};
pub const RedisModuleKey = struct_RedisModuleKey;
pub const struct_RedisModuleString = opaque {};
pub const RedisModuleString = struct_RedisModuleString;
pub const struct_RedisModuleCallReply = opaque {};
pub const RedisModuleCallReply = struct_RedisModuleCallReply;
pub const struct_RedisModuleIO = opaque {};
pub const RedisModuleIO = struct_RedisModuleIO;
pub const struct_RedisModuleType = opaque {};
pub const RedisModuleType = struct_RedisModuleType;
pub const struct_RedisModuleDigest = opaque {};
pub const RedisModuleDigest = struct_RedisModuleDigest;
pub const struct_RedisModuleBlockedClient = opaque {};
pub const RedisModuleBlockedClient = struct_RedisModuleBlockedClient;
pub const struct_RedisModuleClusterInfo = opaque {};
pub const RedisModuleClusterInfo = struct_RedisModuleClusterInfo;
pub const struct_RedisModuleDict = opaque {};
pub const RedisModuleDict = struct_RedisModuleDict;
pub const struct_RedisModuleDictIter = opaque {};
pub const RedisModuleDictIter = struct_RedisModuleDictIter;
pub const struct_RedisModuleCommandFilterCtx = opaque {};
pub const RedisModuleCommandFilterCtx = struct_RedisModuleCommandFilterCtx;
pub const struct_RedisModuleCommandFilter = opaque {};
pub const RedisModuleCommandFilter = struct_RedisModuleCommandFilter;
pub const struct_RedisModuleInfoCtx = opaque {};
pub const RedisModuleInfoCtx = struct_RedisModuleInfoCtx;
pub const struct_RedisModuleServerInfoData = opaque {};
pub const RedisModuleServerInfoData = struct_RedisModuleServerInfoData;
pub const struct_RedisModuleScanCursor = opaque {};
pub const RedisModuleScanCursor = struct_RedisModuleScanCursor;
pub const RedisModuleDefragCtx = struct_RedisModuleDefragCtx;
pub const struct_RedisModuleUser = opaque {};
pub const RedisModuleUser = struct_RedisModuleUser;
pub const RedisModuleCmdFunc = ?fn (?*RedisModuleCtx, [*c]?*RedisModuleString, c_int) callconv(.C) c_int;
pub const RedisModuleDisconnectFunc = ?fn (?*RedisModuleCtx, ?*RedisModuleBlockedClient) callconv(.C) void;
pub const RedisModuleNotificationFunc = ?fn (?*RedisModuleCtx, c_int, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int;
pub const RedisModuleTypeLoadFunc = ?fn (?*RedisModuleIO, c_int) callconv(.C) ?*c_void;
pub const RedisModuleTypeSaveFunc = ?fn (?*RedisModuleIO, ?*c_void) callconv(.C) void;
pub const RedisModuleTypeAuxLoadFunc = ?fn (?*RedisModuleIO, c_int, c_int) callconv(.C) c_int;
pub const RedisModuleTypeAuxSaveFunc = ?fn (?*RedisModuleIO, c_int) callconv(.C) void;
pub const RedisModuleTypeRewriteFunc = ?fn (?*RedisModuleIO, ?*RedisModuleString, ?*c_void) callconv(.C) void;
pub const RedisModuleTypeMemUsageFunc = ?fn (?*const c_void) callconv(.C) usize;
pub const RedisModuleTypeDigestFunc = ?fn (?*RedisModuleDigest, ?*c_void) callconv(.C) void;
pub const RedisModuleTypeFreeFunc = ?fn (?*c_void) callconv(.C) void;
pub const RedisModuleTypeFreeEffortFunc = ?fn (?*RedisModuleString, ?*const c_void) callconv(.C) usize;
pub const RedisModuleTypeUnlinkFunc = ?fn (?*RedisModuleString, ?*const c_void) callconv(.C) void;
pub const RedisModuleTypeCopyFunc = ?fn (?*RedisModuleString, ?*RedisModuleString, ?*const c_void) callconv(.C) ?*c_void;
pub const RedisModuleTypeDefragFunc = ?fn (?*RedisModuleDefragCtx, ?*RedisModuleString, [*c]?*c_void) callconv(.C) c_int;
pub const RedisModuleClusterMessageReceiver = ?fn (?*RedisModuleCtx, [*c]const u8, u8, [*c]const u8, u32) callconv(.C) void;
pub const RedisModuleTimerProc = ?fn (?*RedisModuleCtx, ?*c_void) callconv(.C) void;
pub const RedisModuleCommandFilterFunc = ?fn (?*RedisModuleCommandFilterCtx) callconv(.C) void;
pub const RedisModuleForkDoneHandler = ?fn (c_int, c_int, ?*c_void) callconv(.C) void;
pub const RedisModuleInfoFunc = ?fn (?*RedisModuleInfoCtx, c_int) callconv(.C) void;
pub const RedisModuleScanCB = ?fn (?*RedisModuleCtx, ?*RedisModuleString, ?*RedisModuleKey, ?*c_void) callconv(.C) void;
pub const RedisModuleScanKeyCB = ?fn (?*RedisModuleKey, ?*RedisModuleString, ?*RedisModuleString, ?*c_void) callconv(.C) void;
pub const RedisModuleUserChangedFunc = ?fn (u64, ?*c_void) callconv(.C) void;
pub const RedisModuleDefragFunc = ?fn (?*RedisModuleDefragCtx) callconv(.C) c_int;
pub const struct_RedisModuleTypeMethods = extern struct {
    version: u64,
    rdb_load: RedisModuleTypeLoadFunc,
    rdb_save: RedisModuleTypeSaveFunc,
    aof_rewrite: RedisModuleTypeRewriteFunc,
    mem_usage: RedisModuleTypeMemUsageFunc,
    digest: RedisModuleTypeDigestFunc,
    free: RedisModuleTypeFreeFunc,
    aux_load: RedisModuleTypeAuxLoadFunc,
    aux_save: RedisModuleTypeAuxSaveFunc,
    aux_save_triggers: c_int,
    free_effort: RedisModuleTypeFreeEffortFunc,
    unlink: RedisModuleTypeUnlinkFunc,
    copy: RedisModuleTypeCopyFunc,
    defrag: RedisModuleTypeDefragFunc,
};
pub const RedisModuleTypeMethods = struct_RedisModuleTypeMethods;
pub export var RedisModule_Alloc: ?fn (usize) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (usize) callconv(.C) ?*c_void);
pub export var RedisModule_Realloc: ?fn (?*c_void, usize) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*c_void, usize) callconv(.C) ?*c_void);
pub export var RedisModule_Free: ?fn (?*c_void) callconv(.C) void = @import("std").mem.zeroes(?fn (?*c_void) callconv(.C) void);
pub export var RedisModule_Calloc: ?fn (usize, usize) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (usize, usize) callconv(.C) ?*c_void);
pub export var RedisModule_Strdup: ?fn ([*c]const u8) callconv(.C) [*c]u8 = @import("std").mem.zeroes(?fn ([*c]const u8) callconv(.C) [*c]u8);
pub export var RedisModule_GetApi: ?fn ([*c]const u8, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn ([*c]const u8, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_CreateCommand: ?fn (?*RedisModuleCtx, [*c]const u8, RedisModuleCmdFunc, [*c]const u8, c_int, c_int, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, RedisModuleCmdFunc, [*c]const u8, c_int, c_int, c_int) callconv(.C) c_int);
pub export var RedisModule_SetModuleAttribs: ?fn (?*RedisModuleCtx, [*c]const u8, c_int, c_int) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, c_int, c_int) callconv(.C) void);
pub export var RedisModule_IsModuleNameBusy: ?fn ([*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn ([*c]const u8) callconv(.C) c_int);
pub export var RedisModule_WrongArity: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ReplyWithLongLong: ?fn (?*RedisModuleCtx, c_longlong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_longlong) callconv(.C) c_int);
pub export var RedisModule_GetSelectedDb: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_SelectDb: ?fn (?*RedisModuleCtx, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_int) callconv(.C) c_int);
pub export var RedisModule_OpenKey: ?fn (?*RedisModuleCtx, ?*RedisModuleString, c_int) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString, c_int) callconv(.C) ?*c_void);
pub export var RedisModule_CloseKey: ?fn (?*RedisModuleKey) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) void);
pub export var RedisModule_KeyType: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_ValueLength: ?fn (?*RedisModuleKey) callconv(.C) usize = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) usize);
pub export var RedisModule_ListPush: ?fn (?*RedisModuleKey, c_int, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, c_int, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_ListPop: ?fn (?*RedisModuleKey, c_int) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleKey, c_int) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_Call: ?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) ?*RedisModuleCallReply = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) ?*RedisModuleCallReply);
pub export var RedisModule_CallReplyProto: ?fn (?*RedisModuleCallReply, [*c]usize) callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply, [*c]usize) callconv(.C) [*c]const u8);
pub export var RedisModule_FreeCallReply: ?fn (?*RedisModuleCallReply) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply) callconv(.C) void);
pub export var RedisModule_CallReplyType: ?fn (?*RedisModuleCallReply) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply) callconv(.C) c_int);
pub export var RedisModule_CallReplyInteger: ?fn (?*RedisModuleCallReply) callconv(.C) c_longlong = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply) callconv(.C) c_longlong);
pub export var RedisModule_CallReplyLength: ?fn (?*RedisModuleCallReply) callconv(.C) usize = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply) callconv(.C) usize);
pub export var RedisModule_CallReplyArrayElement: ?fn (?*RedisModuleCallReply, usize) callconv(.C) ?*RedisModuleCallReply = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply, usize) callconv(.C) ?*RedisModuleCallReply);
pub export var RedisModule_CreateString: ?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_CreateStringFromLongLong: ?fn (?*RedisModuleCtx, c_longlong) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_longlong) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_CreateStringFromDouble: ?fn (?*RedisModuleCtx, f64) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, f64) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_CreateStringFromLongDouble: ?fn (?*RedisModuleCtx, c_longdouble, c_int) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_longdouble, c_int) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_CreateStringFromString: ?fn (?*RedisModuleCtx, ?*const RedisModuleString) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*const RedisModuleString) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_CreateStringPrintf: ?fn (?*RedisModuleCtx, [*c]const u8, ...) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, ...) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_FreeString: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void);
pub export var RedisModule_StringPtrLen: ?fn (?*const RedisModuleString, [*c]usize) callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?fn (?*const RedisModuleString, [*c]usize) callconv(.C) [*c]const u8);
pub export var RedisModule_ReplyWithError: ?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int);
pub export var RedisModule_ReplyWithSimpleString: ?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int);
pub export var RedisModule_ReplyWithArray: ?fn (?*RedisModuleCtx, c_long) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_long) callconv(.C) c_int);
pub export var RedisModule_ReplyWithNullArray: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ReplyWithEmptyArray: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ReplySetArrayLength: ?fn (?*RedisModuleCtx, c_long) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_long) callconv(.C) void);
pub export var RedisModule_ReplyWithStringBuffer: ?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) c_int);
pub export var RedisModule_ReplyWithCString: ?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) c_int);
pub export var RedisModule_ReplyWithString: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_ReplyWithEmptyString: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ReplyWithVerbatimString: ?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, usize) callconv(.C) c_int);
pub export var RedisModule_ReplyWithNull: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ReplyWithDouble: ?fn (?*RedisModuleCtx, f64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, f64) callconv(.C) c_int);
pub export var RedisModule_ReplyWithLongDouble: ?fn (?*RedisModuleCtx, c_longdouble) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_longdouble) callconv(.C) c_int);
pub export var RedisModule_ReplyWithCallReply: ?fn (?*RedisModuleCtx, ?*RedisModuleCallReply) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleCallReply) callconv(.C) c_int);
pub export var RedisModule_StringToLongLong: ?fn (?*const RedisModuleString, [*c]c_longlong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*const RedisModuleString, [*c]c_longlong) callconv(.C) c_int);
pub export var RedisModule_StringToDouble: ?fn (?*const RedisModuleString, [*c]f64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*const RedisModuleString, [*c]f64) callconv(.C) c_int);
pub export var RedisModule_StringToLongDouble: ?fn (?*const RedisModuleString, [*c]c_longdouble) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*const RedisModuleString, [*c]c_longdouble) callconv(.C) c_int);
pub export var RedisModule_AutoMemory: ?fn (?*RedisModuleCtx) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) void);
pub export var RedisModule_Replicate: ?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) c_int);
pub export var RedisModule_ReplicateVerbatim: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_CallReplyStringPtr: ?fn (?*RedisModuleCallReply, [*c]usize) callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply, [*c]usize) callconv(.C) [*c]const u8);
pub export var RedisModule_CreateStringFromCallReply: ?fn (?*RedisModuleCallReply) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCallReply) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_DeleteKey: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_UnlinkKey: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_StringSet: ?fn (?*RedisModuleKey, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_StringDMA: ?fn (?*RedisModuleKey, [*c]usize, c_int) callconv(.C) [*c]u8 = @import("std").mem.zeroes(?fn (?*RedisModuleKey, [*c]usize, c_int) callconv(.C) [*c]u8);
pub export var RedisModule_StringTruncate: ?fn (?*RedisModuleKey, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, usize) callconv(.C) c_int);
pub export var RedisModule_GetExpire: ?fn (?*RedisModuleKey) callconv(.C) mstime_t = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) mstime_t);
pub export var RedisModule_SetExpire: ?fn (?*RedisModuleKey, mstime_t) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, mstime_t) callconv(.C) c_int);
pub export var RedisModule_ResetDataset: ?fn (c_int, c_int) callconv(.C) void = @import("std").mem.zeroes(?fn (c_int, c_int) callconv(.C) void);
pub export var RedisModule_DbSize: ?fn (?*RedisModuleCtx) callconv(.C) c_ulonglong = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_ulonglong);
pub export var RedisModule_RandomKey: ?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_ZsetAdd: ?fn (?*RedisModuleKey, f64, ?*RedisModuleString, [*c]c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, f64, ?*RedisModuleString, [*c]c_int) callconv(.C) c_int);
pub export var RedisModule_ZsetIncrby: ?fn (?*RedisModuleKey, f64, ?*RedisModuleString, [*c]c_int, [*c]f64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, f64, ?*RedisModuleString, [*c]c_int, [*c]f64) callconv(.C) c_int);
pub export var RedisModule_ZsetScore: ?fn (?*RedisModuleKey, ?*RedisModuleString, [*c]f64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleString, [*c]f64) callconv(.C) c_int);
pub export var RedisModule_ZsetRem: ?fn (?*RedisModuleKey, ?*RedisModuleString, [*c]c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleString, [*c]c_int) callconv(.C) c_int);
pub export var RedisModule_ZsetRangeStop: ?fn (?*RedisModuleKey) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) void);
pub export var RedisModule_ZsetFirstInScoreRange: ?fn (?*RedisModuleKey, f64, f64, c_int, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, f64, f64, c_int, c_int) callconv(.C) c_int);
pub export var RedisModule_ZsetLastInScoreRange: ?fn (?*RedisModuleKey, f64, f64, c_int, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, f64, f64, c_int, c_int) callconv(.C) c_int);
pub export var RedisModule_ZsetFirstInLexRange: ?fn (?*RedisModuleKey, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_ZsetLastInLexRange: ?fn (?*RedisModuleKey, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_ZsetRangeCurrentElement: ?fn (?*RedisModuleKey, [*c]f64) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleKey, [*c]f64) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_ZsetRangeNext: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_ZsetRangePrev: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_ZsetRangeEndReached: ?fn (?*RedisModuleKey) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) c_int);
pub export var RedisModule_HashSet: ?fn (?*RedisModuleKey, c_int, ...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, c_int, ...) callconv(.C) c_int);
pub export var RedisModule_HashGet: ?fn (?*RedisModuleKey, c_int, ...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, c_int, ...) callconv(.C) c_int);
pub export var RedisModule_IsKeysPositionRequest: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_KeyAtPos: ?fn (?*RedisModuleCtx, c_int) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_int) callconv(.C) void);
pub export var RedisModule_GetClientId: ?fn (?*RedisModuleCtx) callconv(.C) c_ulonglong = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_ulonglong);
pub export var RedisModule_GetClientInfoById: ?fn (?*c_void, u64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*c_void, u64) callconv(.C) c_int);
pub export var RedisModule_PublishMessage: ?fn (?*RedisModuleCtx, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_GetContextFlags: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_AvoidReplicaTraffic: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_PoolAlloc: ?fn (?*RedisModuleCtx, usize) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, usize) callconv(.C) ?*c_void);
pub export var RedisModule_CreateDataType: ?fn (?*RedisModuleCtx, [*c]const u8, c_int, [*c]RedisModuleTypeMethods) callconv(.C) ?*RedisModuleType = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, c_int, [*c]RedisModuleTypeMethods) callconv(.C) ?*RedisModuleType);
pub export var RedisModule_ModuleTypeSetValue: ?fn (?*RedisModuleKey, ?*RedisModuleType, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleType, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_ModuleTypeReplaceValue: ?fn (?*RedisModuleKey, ?*RedisModuleType, ?*c_void, [*c]?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleType, ?*c_void, [*c]?*c_void) callconv(.C) c_int);
pub export var RedisModule_ModuleTypeGetType: ?fn (?*RedisModuleKey) callconv(.C) ?*RedisModuleType = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) ?*RedisModuleType);
pub export var RedisModule_ModuleTypeGetValue: ?fn (?*RedisModuleKey) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) ?*c_void);
pub export var RedisModule_IsIOError: ?fn (?*RedisModuleIO) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) c_int);
pub export var RedisModule_SetModuleOptions: ?fn (?*RedisModuleCtx, c_int) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_int) callconv(.C) void);
pub export var RedisModule_SignalModifiedKey: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_SaveUnsigned: ?fn (?*RedisModuleIO, u64) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, u64) callconv(.C) void);
pub export var RedisModule_LoadUnsigned: ?fn (?*RedisModuleIO) callconv(.C) u64 = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) u64);
pub export var RedisModule_SaveSigned: ?fn (?*RedisModuleIO, i64) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, i64) callconv(.C) void);
pub export var RedisModule_LoadSigned: ?fn (?*RedisModuleIO) callconv(.C) i64 = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) i64);
pub export var RedisModule_EmitAOF: ?fn (?*RedisModuleIO, [*c]const u8, [*c]const u8, ...) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, [*c]const u8, [*c]const u8, ...) callconv(.C) void);
pub export var RedisModule_SaveString: ?fn (?*RedisModuleIO, ?*RedisModuleString) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, ?*RedisModuleString) callconv(.C) void);
pub export var RedisModule_SaveStringBuffer: ?fn (?*RedisModuleIO, [*c]const u8, usize) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, [*c]const u8, usize) callconv(.C) void);
pub export var RedisModule_LoadString: ?fn (?*RedisModuleIO) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_LoadStringBuffer: ?fn (?*RedisModuleIO, [*c]usize) callconv(.C) [*c]u8 = @import("std").mem.zeroes(?fn (?*RedisModuleIO, [*c]usize) callconv(.C) [*c]u8);
pub export var RedisModule_SaveDouble: ?fn (?*RedisModuleIO, f64) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, f64) callconv(.C) void);
pub export var RedisModule_LoadDouble: ?fn (?*RedisModuleIO) callconv(.C) f64 = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) f64);
pub export var RedisModule_SaveFloat: ?fn (?*RedisModuleIO, f32) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, f32) callconv(.C) void);
pub export var RedisModule_LoadFloat: ?fn (?*RedisModuleIO) callconv(.C) f32 = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) f32);
pub export var RedisModule_SaveLongDouble: ?fn (?*RedisModuleIO, c_longdouble) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, c_longdouble) callconv(.C) void);
pub export var RedisModule_LoadLongDouble: ?fn (?*RedisModuleIO) callconv(.C) c_longdouble = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) c_longdouble);
pub export var RedisModule_LoadDataTypeFromString: ?fn (?*const RedisModuleString, ?*const RedisModuleType) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*const RedisModuleString, ?*const RedisModuleType) callconv(.C) ?*c_void);
pub export var RedisModule_SaveDataTypeToString: ?fn (?*RedisModuleCtx, ?*c_void, ?*const RedisModuleType) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*c_void, ?*const RedisModuleType) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_Log: ?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, [*c]const u8, ...) callconv(.C) void);
pub export var RedisModule_LogIOError: ?fn (?*RedisModuleIO, [*c]const u8, [*c]const u8, ...) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleIO, [*c]const u8, [*c]const u8, ...) callconv(.C) void);
pub export var RedisModule__Assert: ?fn ([*c]const u8, [*c]const u8, c_int) callconv(.C) void = @import("std").mem.zeroes(?fn ([*c]const u8, [*c]const u8, c_int) callconv(.C) void);
pub export var RedisModule_LatencyAddSample: ?fn ([*c]const u8, mstime_t) callconv(.C) void = @import("std").mem.zeroes(?fn ([*c]const u8, mstime_t) callconv(.C) void);
pub export var RedisModule_StringAppendBuffer: ?fn (?*RedisModuleCtx, ?*RedisModuleString, [*c]const u8, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString, [*c]const u8, usize) callconv(.C) c_int);
pub export var RedisModule_RetainString: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void);
pub export var RedisModule_HoldString: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_StringCompare: ?fn (?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleString, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_GetContextFromIO: ?fn (?*RedisModuleIO) callconv(.C) ?*RedisModuleCtx = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) ?*RedisModuleCtx);
pub export var RedisModule_GetKeyNameFromIO: ?fn (?*RedisModuleIO) callconv(.C) ?*const RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleIO) callconv(.C) ?*const RedisModuleString);
pub export var RedisModule_GetKeyNameFromModuleKey: ?fn (?*RedisModuleKey) callconv(.C) ?*const RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleKey) callconv(.C) ?*const RedisModuleString);
pub export var RedisModule_Milliseconds: ?fn () callconv(.C) c_longlong = @import("std").mem.zeroes(?fn () callconv(.C) c_longlong);
pub export var RedisModule_DigestAddStringBuffer: ?fn (?*RedisModuleDigest, [*c]u8, usize) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleDigest, [*c]u8, usize) callconv(.C) void);
pub export var RedisModule_DigestAddLongLong: ?fn (?*RedisModuleDigest, c_longlong) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleDigest, c_longlong) callconv(.C) void);
pub export var RedisModule_DigestEndSequence: ?fn (?*RedisModuleDigest) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleDigest) callconv(.C) void);
pub export var RedisModule_CreateDict: ?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleDict = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleDict);
pub export var RedisModule_FreeDict: ?fn (?*RedisModuleCtx, ?*RedisModuleDict) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleDict) callconv(.C) void);
pub export var RedisModule_DictSize: ?fn (?*RedisModuleDict) callconv(.C) u64 = @import("std").mem.zeroes(?fn (?*RedisModuleDict) callconv(.C) u64);
pub export var RedisModule_DictSetC: ?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictReplaceC: ?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictSet: ?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictReplace: ?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictGetC: ?fn (?*RedisModuleDict, ?*c_void, usize, [*c]c_int) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*c_void, usize, [*c]c_int) callconv(.C) ?*c_void);
pub export var RedisModule_DictGet: ?fn (?*RedisModuleDict, ?*RedisModuleString, [*c]c_int) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*RedisModuleString, [*c]c_int) callconv(.C) ?*c_void);
pub export var RedisModule_DictDelC: ?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*c_void, usize, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictDel: ?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDict, ?*RedisModuleString, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_DictIteratorStartC: ?fn (?*RedisModuleDict, [*c]const u8, ?*c_void, usize) callconv(.C) ?*RedisModuleDictIter = @import("std").mem.zeroes(?fn (?*RedisModuleDict, [*c]const u8, ?*c_void, usize) callconv(.C) ?*RedisModuleDictIter);
pub export var RedisModule_DictIteratorStart: ?fn (?*RedisModuleDict, [*c]const u8, ?*RedisModuleString) callconv(.C) ?*RedisModuleDictIter = @import("std").mem.zeroes(?fn (?*RedisModuleDict, [*c]const u8, ?*RedisModuleString) callconv(.C) ?*RedisModuleDictIter);
pub export var RedisModule_DictIteratorStop: ?fn (?*RedisModuleDictIter) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter) callconv(.C) void);
pub export var RedisModule_DictIteratorReseekC: ?fn (?*RedisModuleDictIter, [*c]const u8, ?*c_void, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]const u8, ?*c_void, usize) callconv(.C) c_int);
pub export var RedisModule_DictIteratorReseek: ?fn (?*RedisModuleDictIter, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_DictNextC: ?fn (?*RedisModuleDictIter, [*c]usize, [*c]?*c_void) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]usize, [*c]?*c_void) callconv(.C) ?*c_void);
pub export var RedisModule_DictPrevC: ?fn (?*RedisModuleDictIter, [*c]usize, [*c]?*c_void) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]usize, [*c]?*c_void) callconv(.C) ?*c_void);
pub export var RedisModule_DictNext: ?fn (?*RedisModuleCtx, ?*RedisModuleDictIter, [*c]?*c_void) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleDictIter, [*c]?*c_void) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_DictPrev: ?fn (?*RedisModuleCtx, ?*RedisModuleDictIter, [*c]?*c_void) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleDictIter, [*c]?*c_void) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_DictCompareC: ?fn (?*RedisModuleDictIter, [*c]const u8, ?*c_void, usize) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]const u8, ?*c_void, usize) callconv(.C) c_int);
pub export var RedisModule_DictCompare: ?fn (?*RedisModuleDictIter, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDictIter, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_RegisterInfoFunc: ?fn (?*RedisModuleCtx, RedisModuleInfoFunc) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleInfoFunc) callconv(.C) c_int);
pub export var RedisModule_InfoAddSection: ?fn (?*RedisModuleInfoCtx, [*c]u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8) callconv(.C) c_int);
pub export var RedisModule_InfoBeginDictField: ?fn (?*RedisModuleInfoCtx, [*c]u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8) callconv(.C) c_int);
pub export var RedisModule_InfoEndDictField: ?fn (?*RedisModuleInfoCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx) callconv(.C) c_int);
pub export var RedisModule_InfoAddFieldString: ?fn (?*RedisModuleInfoCtx, [*c]u8, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_InfoAddFieldCString: ?fn (?*RedisModuleInfoCtx, [*c]u8, [*c]u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8, [*c]u8) callconv(.C) c_int);
pub export var RedisModule_InfoAddFieldDouble: ?fn (?*RedisModuleInfoCtx, [*c]u8, f64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8, f64) callconv(.C) c_int);
pub export var RedisModule_InfoAddFieldLongLong: ?fn (?*RedisModuleInfoCtx, [*c]u8, c_longlong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8, c_longlong) callconv(.C) c_int);
pub export var RedisModule_InfoAddFieldULongLong: ?fn (?*RedisModuleInfoCtx, [*c]u8, c_ulonglong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleInfoCtx, [*c]u8, c_ulonglong) callconv(.C) c_int);
pub export var RedisModule_GetServerInfo: ?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) ?*RedisModuleServerInfoData = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) ?*RedisModuleServerInfoData);
pub export var RedisModule_FreeServerInfo: ?fn (?*RedisModuleCtx, ?*RedisModuleServerInfoData) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleServerInfoData) callconv(.C) void);
pub export var RedisModule_ServerInfoGetField: ?fn (?*RedisModuleCtx, ?*RedisModuleServerInfoData, [*c]const u8) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleServerInfoData, [*c]const u8) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_ServerInfoGetFieldC: ?fn (?*RedisModuleServerInfoData, [*c]const u8) callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?fn (?*RedisModuleServerInfoData, [*c]const u8) callconv(.C) [*c]const u8);
pub export var RedisModule_ServerInfoGetFieldSigned: ?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) c_longlong = @import("std").mem.zeroes(?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) c_longlong);
pub export var RedisModule_ServerInfoGetFieldUnsigned: ?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) c_ulonglong = @import("std").mem.zeroes(?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) c_ulonglong);
pub export var RedisModule_ServerInfoGetFieldDouble: ?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) f64 = @import("std").mem.zeroes(?fn (?*RedisModuleServerInfoData, [*c]const u8, [*c]c_int) callconv(.C) f64);
pub export var RedisModule_SubscribeToServerEvent: ?fn (?*RedisModuleCtx, RedisModuleEvent, RedisModuleEventCallback) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleEvent, RedisModuleEventCallback) callconv(.C) c_int);
pub export var RedisModule_SetLRU: ?fn (?*RedisModuleKey, mstime_t) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, mstime_t) callconv(.C) c_int);
pub export var RedisModule_GetLRU: ?fn (?*RedisModuleKey, [*c]mstime_t) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, [*c]mstime_t) callconv(.C) c_int);
pub export var RedisModule_SetLFU: ?fn (?*RedisModuleKey, c_longlong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, c_longlong) callconv(.C) c_int);
pub export var RedisModule_GetLFU: ?fn (?*RedisModuleKey, [*c]c_longlong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, [*c]c_longlong) callconv(.C) c_int);
pub export var RedisModule_BlockClientOnKeys: ?fn (?*RedisModuleCtx, RedisModuleCmdFunc, RedisModuleCmdFunc, ?fn (?*RedisModuleCtx, ?*c_void) callconv(.C) void, c_longlong, [*c]?*RedisModuleString, c_int, ?*c_void) callconv(.C) ?*RedisModuleBlockedClient = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleCmdFunc, RedisModuleCmdFunc, ?fn (?*RedisModuleCtx, ?*c_void) callconv(.C) void, c_longlong, [*c]?*RedisModuleString, c_int, ?*c_void) callconv(.C) ?*RedisModuleBlockedClient);
pub export var RedisModule_SignalKeyAsReady: ?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleString) callconv(.C) void);
pub export var RedisModule_GetBlockedClientReadyKey: ?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_ScanCursorCreate: ?fn (...) callconv(.C) ?*RedisModuleScanCursor = @import("std").mem.zeroes(?fn (...) callconv(.C) ?*RedisModuleScanCursor);
pub export var RedisModule_ScanCursorRestart: ?fn (?*RedisModuleScanCursor) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleScanCursor) callconv(.C) void);
pub export var RedisModule_ScanCursorDestroy: ?fn (?*RedisModuleScanCursor) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleScanCursor) callconv(.C) void);
pub export var RedisModule_Scan: ?fn (?*RedisModuleCtx, ?*RedisModuleScanCursor, RedisModuleScanCB, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleScanCursor, RedisModuleScanCB, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_ScanKey: ?fn (?*RedisModuleKey, ?*RedisModuleScanCursor, RedisModuleScanKeyCB, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleKey, ?*RedisModuleScanCursor, RedisModuleScanKeyCB, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_GetContextFlagsAll: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_GetKeyspaceNotificationFlagsAll: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_IsSubEventSupported: ?fn (RedisModuleEvent, u64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (RedisModuleEvent, u64) callconv(.C) c_int);
pub export var RedisModule_GetServerVersion: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_GetTypeMethodVersion: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_BlockClient: ?fn (?*RedisModuleCtx, RedisModuleCmdFunc, RedisModuleCmdFunc, ?fn (?*RedisModuleCtx, ?*c_void) callconv(.C) void, c_longlong) callconv(.C) ?*RedisModuleBlockedClient = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleCmdFunc, RedisModuleCmdFunc, ?fn (?*RedisModuleCtx, ?*c_void) callconv(.C) void, c_longlong) callconv(.C) ?*RedisModuleBlockedClient);
pub export var RedisModule_UnblockClient: ?fn (?*RedisModuleBlockedClient, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleBlockedClient, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_IsBlockedReplyRequest: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_IsBlockedTimeoutRequest: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_GetBlockedClientPrivateData: ?fn (?*RedisModuleCtx) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*c_void);
pub export var RedisModule_GetBlockedClientHandle: ?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleBlockedClient = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleBlockedClient);
pub export var RedisModule_AbortBlock: ?fn (?*RedisModuleBlockedClient) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleBlockedClient) callconv(.C) c_int);
pub export var RedisModule_GetThreadSafeContext: ?fn (?*RedisModuleBlockedClient) callconv(.C) ?*RedisModuleCtx = @import("std").mem.zeroes(?fn (?*RedisModuleBlockedClient) callconv(.C) ?*RedisModuleCtx);
pub export var RedisModule_GetDetachedThreadSafeContext: ?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleCtx = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) ?*RedisModuleCtx);
pub export var RedisModule_FreeThreadSafeContext: ?fn (?*RedisModuleCtx) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) void);
pub export var RedisModule_ThreadSafeContextLock: ?fn (?*RedisModuleCtx) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) void);
pub export var RedisModule_ThreadSafeContextTryLock: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_ThreadSafeContextUnlock: ?fn (?*RedisModuleCtx) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) void);
pub export var RedisModule_SubscribeToKeyspaceEvents: ?fn (?*RedisModuleCtx, c_int, RedisModuleNotificationFunc) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_int, RedisModuleNotificationFunc) callconv(.C) c_int);
pub export var RedisModule_NotifyKeyspaceEvent: ?fn (?*RedisModuleCtx, c_int, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, c_int, [*c]const u8, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_GetNotifyKeyspaceEvents: ?fn (...) callconv(.C) c_int = @import("std").mem.zeroes(?fn (...) callconv(.C) c_int);
pub export var RedisModule_BlockedClientDisconnected: ?fn (?*RedisModuleCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx) callconv(.C) c_int);
pub export var RedisModule_RegisterClusterMessageReceiver: ?fn (?*RedisModuleCtx, u8, RedisModuleClusterMessageReceiver) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, u8, RedisModuleClusterMessageReceiver) callconv(.C) void);
pub export var RedisModule_SendClusterMessage: ?fn (?*RedisModuleCtx, [*c]u8, u8, [*c]u8, u32) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]u8, u8, [*c]u8, u32) callconv(.C) c_int);
pub export var RedisModule_GetClusterNodeInfo: ?fn (?*RedisModuleCtx, [*c]const u8, [*c]u8, [*c]u8, [*c]c_int, [*c]c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, [*c]u8, [*c]u8, [*c]c_int, [*c]c_int) callconv(.C) c_int);
pub export var RedisModule_GetClusterNodesList: ?fn (?*RedisModuleCtx, [*c]usize) callconv(.C) [*c][*c]u8 = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]usize) callconv(.C) [*c][*c]u8);
pub export var RedisModule_FreeClusterNodesList: ?fn ([*c][*c]u8) callconv(.C) void = @import("std").mem.zeroes(?fn ([*c][*c]u8) callconv(.C) void);
pub export var RedisModule_CreateTimer: ?fn (?*RedisModuleCtx, mstime_t, RedisModuleTimerProc, ?*c_void) callconv(.C) RedisModuleTimerID = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, mstime_t, RedisModuleTimerProc, ?*c_void) callconv(.C) RedisModuleTimerID);
pub export var RedisModule_StopTimer: ?fn (?*RedisModuleCtx, RedisModuleTimerID, [*c]?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleTimerID, [*c]?*c_void) callconv(.C) c_int);
pub export var RedisModule_GetTimerInfo: ?fn (?*RedisModuleCtx, RedisModuleTimerID, [*c]u64, [*c]?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleTimerID, [*c]u64, [*c]?*c_void) callconv(.C) c_int);
pub export var RedisModule_GetMyClusterID: ?fn () callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?fn () callconv(.C) [*c]const u8);
pub export var RedisModule_GetClusterSize: ?fn () callconv(.C) usize = @import("std").mem.zeroes(?fn () callconv(.C) usize);
pub export var RedisModule_GetRandomBytes: ?fn ([*c]u8, usize) callconv(.C) void = @import("std").mem.zeroes(?fn ([*c]u8, usize) callconv(.C) void);
pub export var RedisModule_GetRandomHexChars: ?fn ([*c]u8, usize) callconv(.C) void = @import("std").mem.zeroes(?fn ([*c]u8, usize) callconv(.C) void);
pub export var RedisModule_SetDisconnectCallback: ?fn (?*RedisModuleBlockedClient, RedisModuleDisconnectFunc) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleBlockedClient, RedisModuleDisconnectFunc) callconv(.C) void);
pub export var RedisModule_SetClusterFlags: ?fn (?*RedisModuleCtx, u64) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, u64) callconv(.C) void);
pub export var RedisModule_ExportSharedAPI: ?fn (?*RedisModuleCtx, [*c]const u8, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_GetSharedAPI: ?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8) callconv(.C) ?*c_void);
pub export var RedisModule_RegisterCommandFilter: ?fn (?*RedisModuleCtx, RedisModuleCommandFilterFunc, c_int) callconv(.C) ?*RedisModuleCommandFilter = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleCommandFilterFunc, c_int) callconv(.C) ?*RedisModuleCommandFilter);
pub export var RedisModule_UnregisterCommandFilter: ?fn (?*RedisModuleCtx, ?*RedisModuleCommandFilter) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleCommandFilter) callconv(.C) c_int);
pub export var RedisModule_CommandFilterArgsCount: ?fn (?*RedisModuleCommandFilterCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCommandFilterCtx) callconv(.C) c_int);
pub export var RedisModule_CommandFilterArgGet: ?fn (?*RedisModuleCommandFilterCtx, c_int) callconv(.C) ?*const RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCommandFilterCtx, c_int) callconv(.C) ?*const RedisModuleString);
pub export var RedisModule_CommandFilterArgInsert: ?fn (?*RedisModuleCommandFilterCtx, c_int, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCommandFilterCtx, c_int, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_CommandFilterArgReplace: ?fn (?*RedisModuleCommandFilterCtx, c_int, ?*RedisModuleString) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCommandFilterCtx, c_int, ?*RedisModuleString) callconv(.C) c_int);
pub export var RedisModule_CommandFilterArgDelete: ?fn (?*RedisModuleCommandFilterCtx, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCommandFilterCtx, c_int) callconv(.C) c_int);
pub export var RedisModule_Fork: ?fn (RedisModuleForkDoneHandler, ?*c_void) callconv(.C) c_int = @import("std").mem.zeroes(?fn (RedisModuleForkDoneHandler, ?*c_void) callconv(.C) c_int);
pub export var RedisModule_ExitFromChild: ?fn (c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (c_int) callconv(.C) c_int);
pub export var RedisModule_KillForkChild: ?fn (c_int) callconv(.C) c_int = @import("std").mem.zeroes(?fn (c_int) callconv(.C) c_int);
pub export var RedisModule_GetUsedMemoryRatio: ?fn (...) callconv(.C) f32 = @import("std").mem.zeroes(?fn (...) callconv(.C) f32);
pub export var RedisModule_MallocSize: ?fn (?*c_void) callconv(.C) usize = @import("std").mem.zeroes(?fn (?*c_void) callconv(.C) usize);
pub export var RedisModule_CreateModuleUser: ?fn ([*c]const u8) callconv(.C) ?*RedisModuleUser = @import("std").mem.zeroes(?fn ([*c]const u8) callconv(.C) ?*RedisModuleUser);
pub export var RedisModule_FreeModuleUser: ?fn (?*RedisModuleUser) callconv(.C) void = @import("std").mem.zeroes(?fn (?*RedisModuleUser) callconv(.C) void);
pub export var RedisModule_SetModuleUserACL: ?fn (?*RedisModuleUser, [*c]const u8) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleUser, [*c]const u8) callconv(.C) c_int);
pub export var RedisModule_AuthenticateClientWithACLUser: ?fn (?*RedisModuleCtx, [*c]const u8, usize, RedisModuleUserChangedFunc, ?*c_void, [*c]u64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]const u8, usize, RedisModuleUserChangedFunc, ?*c_void, [*c]u64) callconv(.C) c_int);
pub export var RedisModule_AuthenticateClientWithUser: ?fn (?*RedisModuleCtx, ?*RedisModuleUser, RedisModuleUserChangedFunc, ?*c_void, [*c]u64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, ?*RedisModuleUser, RedisModuleUserChangedFunc, ?*c_void, [*c]u64) callconv(.C) c_int);
pub export var RedisModule_DeauthenticateAndCloseClient: ?fn (?*RedisModuleCtx, u64) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, u64) callconv(.C) c_int);
pub export var RedisModule_GetClientCertificate: ?fn (?*RedisModuleCtx, u64) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, u64) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_GetCommandKeys: ?fn (?*RedisModuleCtx, [*c]?*RedisModuleString, c_int, [*c]c_int) callconv(.C) [*c]c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, [*c]?*RedisModuleString, c_int, [*c]c_int) callconv(.C) [*c]c_int);
pub export var RedisModule_RegisterDefragFunc: ?fn (?*RedisModuleCtx, RedisModuleDefragFunc) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleCtx, RedisModuleDefragFunc) callconv(.C) c_int);
pub export var RedisModule_DefragAlloc: ?fn (?*RedisModuleDefragCtx, ?*c_void) callconv(.C) ?*c_void = @import("std").mem.zeroes(?fn (?*RedisModuleDefragCtx, ?*c_void) callconv(.C) ?*c_void);
pub export var RedisModule_DefragRedisModuleString: ?fn (?*RedisModuleDefragCtx, ?*RedisModuleString) callconv(.C) ?*RedisModuleString = @import("std").mem.zeroes(?fn (?*RedisModuleDefragCtx, ?*RedisModuleString) callconv(.C) ?*RedisModuleString);
pub export var RedisModule_DefragShouldStop: ?fn (?*RedisModuleDefragCtx) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDefragCtx) callconv(.C) c_int);
pub export var RedisModule_DefragCursorSet: ?fn (?*RedisModuleDefragCtx, c_ulong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDefragCtx, c_ulong) callconv(.C) c_int);
pub export var RedisModule_DefragCursorGet: ?fn (?*RedisModuleDefragCtx, [*c]c_ulong) callconv(.C) c_int = @import("std").mem.zeroes(?fn (?*RedisModuleDefragCtx, [*c]c_ulong) callconv(.C) c_int);
pub fn RedisModule_Init(arg_ctx: ?*RedisModuleCtx, arg_name: [*c]const u8, arg_ver: c_int, arg_apiver: c_int) callconv(.C) c_int {
    var ctx = arg_ctx;
    var name = arg_name;
    var ver = arg_ver;
    var apiver = arg_apiver;
    var getapifuncptr: ?*c_void = (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), ctx)))[@intCast(c_uint, @as(c_int, 0))];
    RedisModule_GetApi = @intToPtr(?fn ([*c]const u8, ?*c_void) callconv(.C) c_int, @intCast(c_ulong, @ptrToInt(getapifuncptr)));
    _ = RedisModule_GetApi.?("RedisModule_Alloc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Alloc)))));
    _ = RedisModule_GetApi.?("RedisModule_Calloc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Calloc)))));
    _ = RedisModule_GetApi.?("RedisModule_Free", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Free)))));
    _ = RedisModule_GetApi.?("RedisModule_Realloc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Realloc)))));
    _ = RedisModule_GetApi.?("RedisModule_Strdup", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Strdup)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateCommand", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateCommand)))));
    _ = RedisModule_GetApi.?("RedisModule_SetModuleAttribs", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetModuleAttribs)))));
    _ = RedisModule_GetApi.?("RedisModule_IsModuleNameBusy", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsModuleNameBusy)))));
    _ = RedisModule_GetApi.?("RedisModule_WrongArity", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_WrongArity)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithLongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithLongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithError", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithError)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithSimpleString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithSimpleString)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithArray", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithArray)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithNullArray", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithNullArray)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithEmptyArray", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithEmptyArray)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplySetArrayLength", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplySetArrayLength)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithStringBuffer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithStringBuffer)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithCString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithCString)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithString)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithEmptyString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithEmptyString)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithVerbatimString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithVerbatimString)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithNull", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithNull)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithCallReply", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithCallReply)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplyWithLongDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplyWithLongDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_GetSelectedDb", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetSelectedDb)))));
    _ = RedisModule_GetApi.?("RedisModule_SelectDb", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SelectDb)))));
    _ = RedisModule_GetApi.?("RedisModule_OpenKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_OpenKey)))));
    _ = RedisModule_GetApi.?("RedisModule_CloseKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CloseKey)))));
    _ = RedisModule_GetApi.?("RedisModule_KeyType", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_KeyType)))));
    _ = RedisModule_GetApi.?("RedisModule_ValueLength", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ValueLength)))));
    _ = RedisModule_GetApi.?("RedisModule_ListPush", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ListPush)))));
    _ = RedisModule_GetApi.?("RedisModule_ListPop", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ListPop)))));
    _ = RedisModule_GetApi.?("RedisModule_StringToLongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringToLongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_StringToDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringToDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_StringToLongDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringToLongDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_Call", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Call)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyProto", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyProto)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeCallReply", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeCallReply)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyInteger", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyInteger)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyType", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyType)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyLength", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyLength)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyArrayElement", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyArrayElement)))));
    _ = RedisModule_GetApi.?("RedisModule_CallReplyStringPtr", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CallReplyStringPtr)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringFromCallReply", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringFromCallReply)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateString)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringFromLongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringFromLongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringFromDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringFromDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringFromLongDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringFromLongDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringFromString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringFromString)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateStringPrintf", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateStringPrintf)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeString)))));
    _ = RedisModule_GetApi.?("RedisModule_StringPtrLen", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringPtrLen)))));
    _ = RedisModule_GetApi.?("RedisModule_AutoMemory", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_AutoMemory)))));
    _ = RedisModule_GetApi.?("RedisModule_Replicate", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Replicate)))));
    _ = RedisModule_GetApi.?("RedisModule_ReplicateVerbatim", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ReplicateVerbatim)))));
    _ = RedisModule_GetApi.?("RedisModule_DeleteKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DeleteKey)))));
    _ = RedisModule_GetApi.?("RedisModule_UnlinkKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_UnlinkKey)))));
    _ = RedisModule_GetApi.?("RedisModule_StringSet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringSet)))));
    _ = RedisModule_GetApi.?("RedisModule_StringDMA", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringDMA)))));
    _ = RedisModule_GetApi.?("RedisModule_StringTruncate", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringTruncate)))));
    _ = RedisModule_GetApi.?("RedisModule_GetExpire", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetExpire)))));
    _ = RedisModule_GetApi.?("RedisModule_SetExpire", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetExpire)))));
    _ = RedisModule_GetApi.?("RedisModule_ResetDataset", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ResetDataset)))));
    _ = RedisModule_GetApi.?("RedisModule_DbSize", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DbSize)))));
    _ = RedisModule_GetApi.?("RedisModule_RandomKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RandomKey)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetAdd", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetAdd)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetIncrby", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetIncrby)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetScore", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetScore)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRem", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRem)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRangeStop", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRangeStop)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetFirstInScoreRange", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetFirstInScoreRange)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetLastInScoreRange", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetLastInScoreRange)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetFirstInLexRange", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetFirstInLexRange)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetLastInLexRange", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetLastInLexRange)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRangeCurrentElement", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRangeCurrentElement)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRangeNext", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRangeNext)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRangePrev", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRangePrev)))));
    _ = RedisModule_GetApi.?("RedisModule_ZsetRangeEndReached", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ZsetRangeEndReached)))));
    _ = RedisModule_GetApi.?("RedisModule_HashSet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_HashSet)))));
    _ = RedisModule_GetApi.?("RedisModule_HashGet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_HashGet)))));
    _ = RedisModule_GetApi.?("RedisModule_IsKeysPositionRequest", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsKeysPositionRequest)))));
    _ = RedisModule_GetApi.?("RedisModule_KeyAtPos", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_KeyAtPos)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClientId", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClientId)))));
    _ = RedisModule_GetApi.?("RedisModule_GetContextFlags", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetContextFlags)))));
    _ = RedisModule_GetApi.?("RedisModule_AvoidReplicaTraffic", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_AvoidReplicaTraffic)))));
    _ = RedisModule_GetApi.?("RedisModule_PoolAlloc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_PoolAlloc)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateDataType", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateDataType)))));
    _ = RedisModule_GetApi.?("RedisModule_ModuleTypeSetValue", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ModuleTypeSetValue)))));
    _ = RedisModule_GetApi.?("RedisModule_ModuleTypeReplaceValue", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ModuleTypeReplaceValue)))));
    _ = RedisModule_GetApi.?("RedisModule_ModuleTypeGetType", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ModuleTypeGetType)))));
    _ = RedisModule_GetApi.?("RedisModule_ModuleTypeGetValue", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ModuleTypeGetValue)))));
    _ = RedisModule_GetApi.?("RedisModule_IsIOError", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsIOError)))));
    _ = RedisModule_GetApi.?("RedisModule_SetModuleOptions", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetModuleOptions)))));
    _ = RedisModule_GetApi.?("RedisModule_SignalModifiedKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SignalModifiedKey)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveUnsigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveUnsigned)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadUnsigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadUnsigned)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveSigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveSigned)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadSigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadSigned)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveString)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveStringBuffer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveStringBuffer)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadString)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadStringBuffer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadStringBuffer)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveFloat", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveFloat)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadFloat", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadFloat)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveLongDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveLongDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadLongDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadLongDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_SaveDataTypeToString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SaveDataTypeToString)))));
    _ = RedisModule_GetApi.?("RedisModule_LoadDataTypeFromString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LoadDataTypeFromString)))));
    _ = RedisModule_GetApi.?("RedisModule_EmitAOF", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_EmitAOF)))));
    _ = RedisModule_GetApi.?("RedisModule_Log", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Log)))));
    _ = RedisModule_GetApi.?("RedisModule_LogIOError", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LogIOError)))));
    _ = RedisModule_GetApi.?("RedisModule__Assert", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule__Assert)))));
    _ = RedisModule_GetApi.?("RedisModule_LatencyAddSample", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_LatencyAddSample)))));
    _ = RedisModule_GetApi.?("RedisModule_StringAppendBuffer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringAppendBuffer)))));
    _ = RedisModule_GetApi.?("RedisModule_RetainString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RetainString)))));
    _ = RedisModule_GetApi.?("RedisModule_HoldString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_HoldString)))));
    _ = RedisModule_GetApi.?("RedisModule_StringCompare", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StringCompare)))));
    _ = RedisModule_GetApi.?("RedisModule_GetContextFromIO", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetContextFromIO)))));
    _ = RedisModule_GetApi.?("RedisModule_GetKeyNameFromIO", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetKeyNameFromIO)))));
    _ = RedisModule_GetApi.?("RedisModule_GetKeyNameFromModuleKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetKeyNameFromModuleKey)))));
    _ = RedisModule_GetApi.?("RedisModule_Milliseconds", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Milliseconds)))));
    _ = RedisModule_GetApi.?("RedisModule_DigestAddStringBuffer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DigestAddStringBuffer)))));
    _ = RedisModule_GetApi.?("RedisModule_DigestAddLongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DigestAddLongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_DigestEndSequence", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DigestEndSequence)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateDict", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateDict)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeDict", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeDict)))));
    _ = RedisModule_GetApi.?("RedisModule_DictSize", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictSize)))));
    _ = RedisModule_GetApi.?("RedisModule_DictSetC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictSetC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictReplaceC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictReplaceC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictSet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictSet)))));
    _ = RedisModule_GetApi.?("RedisModule_DictReplace", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictReplace)))));
    _ = RedisModule_GetApi.?("RedisModule_DictGetC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictGetC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictGet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictGet)))));
    _ = RedisModule_GetApi.?("RedisModule_DictDelC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictDelC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictDel", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictDel)))));
    _ = RedisModule_GetApi.?("RedisModule_DictIteratorStartC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictIteratorStartC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictIteratorStart", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictIteratorStart)))));
    _ = RedisModule_GetApi.?("RedisModule_DictIteratorStop", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictIteratorStop)))));
    _ = RedisModule_GetApi.?("RedisModule_DictIteratorReseekC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictIteratorReseekC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictIteratorReseek", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictIteratorReseek)))));
    _ = RedisModule_GetApi.?("RedisModule_DictNextC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictNextC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictPrevC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictPrevC)))));
    _ = RedisModule_GetApi.?("RedisModule_DictNext", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictNext)))));
    _ = RedisModule_GetApi.?("RedisModule_DictPrev", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictPrev)))));
    _ = RedisModule_GetApi.?("RedisModule_DictCompare", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictCompare)))));
    _ = RedisModule_GetApi.?("RedisModule_DictCompareC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DictCompareC)))));
    _ = RedisModule_GetApi.?("RedisModule_RegisterInfoFunc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RegisterInfoFunc)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddSection", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddSection)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoBeginDictField", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoBeginDictField)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoEndDictField", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoEndDictField)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddFieldString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddFieldString)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddFieldCString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddFieldCString)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddFieldDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddFieldDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddFieldLongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddFieldLongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_InfoAddFieldULongLong", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_InfoAddFieldULongLong)))));
    _ = RedisModule_GetApi.?("RedisModule_GetServerInfo", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetServerInfo)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeServerInfo", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeServerInfo)))));
    _ = RedisModule_GetApi.?("RedisModule_ServerInfoGetField", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ServerInfoGetField)))));
    _ = RedisModule_GetApi.?("RedisModule_ServerInfoGetFieldC", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ServerInfoGetFieldC)))));
    _ = RedisModule_GetApi.?("RedisModule_ServerInfoGetFieldSigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ServerInfoGetFieldSigned)))));
    _ = RedisModule_GetApi.?("RedisModule_ServerInfoGetFieldUnsigned", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ServerInfoGetFieldUnsigned)))));
    _ = RedisModule_GetApi.?("RedisModule_ServerInfoGetFieldDouble", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ServerInfoGetFieldDouble)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClientInfoById", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClientInfoById)))));
    _ = RedisModule_GetApi.?("RedisModule_PublishMessage", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_PublishMessage)))));
    _ = RedisModule_GetApi.?("RedisModule_SubscribeToServerEvent", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SubscribeToServerEvent)))));
    _ = RedisModule_GetApi.?("RedisModule_SetLRU", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetLRU)))));
    _ = RedisModule_GetApi.?("RedisModule_GetLRU", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetLRU)))));
    _ = RedisModule_GetApi.?("RedisModule_SetLFU", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetLFU)))));
    _ = RedisModule_GetApi.?("RedisModule_GetLFU", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetLFU)))));
    _ = RedisModule_GetApi.?("RedisModule_BlockClientOnKeys", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_BlockClientOnKeys)))));
    _ = RedisModule_GetApi.?("RedisModule_SignalKeyAsReady", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SignalKeyAsReady)))));
    _ = RedisModule_GetApi.?("RedisModule_GetBlockedClientReadyKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetBlockedClientReadyKey)))));
    _ = RedisModule_GetApi.?("RedisModule_ScanCursorCreate", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ScanCursorCreate)))));
    _ = RedisModule_GetApi.?("RedisModule_ScanCursorRestart", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ScanCursorRestart)))));
    _ = RedisModule_GetApi.?("RedisModule_ScanCursorDestroy", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ScanCursorDestroy)))));
    _ = RedisModule_GetApi.?("RedisModule_Scan", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Scan)))));
    _ = RedisModule_GetApi.?("RedisModule_ScanKey", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ScanKey)))));
    _ = RedisModule_GetApi.?("RedisModule_GetContextFlagsAll", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetContextFlagsAll)))));
    _ = RedisModule_GetApi.?("RedisModule_GetKeyspaceNotificationFlagsAll", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetKeyspaceNotificationFlagsAll)))));
    _ = RedisModule_GetApi.?("RedisModule_IsSubEventSupported", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsSubEventSupported)))));
    _ = RedisModule_GetApi.?("RedisModule_GetServerVersion", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetServerVersion)))));
    _ = RedisModule_GetApi.?("RedisModule_GetTypeMethodVersion", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetTypeMethodVersion)))));
    _ = RedisModule_GetApi.?("RedisModule_GetThreadSafeContext", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetThreadSafeContext)))));
    _ = RedisModule_GetApi.?("RedisModule_GetDetachedThreadSafeContext", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetDetachedThreadSafeContext)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeThreadSafeContext", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeThreadSafeContext)))));
    _ = RedisModule_GetApi.?("RedisModule_ThreadSafeContextLock", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ThreadSafeContextLock)))));
    _ = RedisModule_GetApi.?("RedisModule_ThreadSafeContextTryLock", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ThreadSafeContextTryLock)))));
    _ = RedisModule_GetApi.?("RedisModule_ThreadSafeContextUnlock", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ThreadSafeContextUnlock)))));
    _ = RedisModule_GetApi.?("RedisModule_BlockClient", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_BlockClient)))));
    _ = RedisModule_GetApi.?("RedisModule_UnblockClient", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_UnblockClient)))));
    _ = RedisModule_GetApi.?("RedisModule_IsBlockedReplyRequest", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsBlockedReplyRequest)))));
    _ = RedisModule_GetApi.?("RedisModule_IsBlockedTimeoutRequest", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_IsBlockedTimeoutRequest)))));
    _ = RedisModule_GetApi.?("RedisModule_GetBlockedClientPrivateData", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetBlockedClientPrivateData)))));
    _ = RedisModule_GetApi.?("RedisModule_GetBlockedClientHandle", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetBlockedClientHandle)))));
    _ = RedisModule_GetApi.?("RedisModule_AbortBlock", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_AbortBlock)))));
    _ = RedisModule_GetApi.?("RedisModule_SetDisconnectCallback", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetDisconnectCallback)))));
    _ = RedisModule_GetApi.?("RedisModule_SubscribeToKeyspaceEvents", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SubscribeToKeyspaceEvents)))));
    _ = RedisModule_GetApi.?("RedisModule_NotifyKeyspaceEvent", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_NotifyKeyspaceEvent)))));
    _ = RedisModule_GetApi.?("RedisModule_GetNotifyKeyspaceEvents", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetNotifyKeyspaceEvents)))));
    _ = RedisModule_GetApi.?("RedisModule_BlockedClientDisconnected", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_BlockedClientDisconnected)))));
    _ = RedisModule_GetApi.?("RedisModule_RegisterClusterMessageReceiver", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RegisterClusterMessageReceiver)))));
    _ = RedisModule_GetApi.?("RedisModule_SendClusterMessage", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SendClusterMessage)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClusterNodeInfo", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClusterNodeInfo)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClusterNodesList", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClusterNodesList)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeClusterNodesList", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeClusterNodesList)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateTimer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateTimer)))));
    _ = RedisModule_GetApi.?("RedisModule_StopTimer", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_StopTimer)))));
    _ = RedisModule_GetApi.?("RedisModule_GetTimerInfo", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetTimerInfo)))));
    _ = RedisModule_GetApi.?("RedisModule_GetMyClusterID", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetMyClusterID)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClusterSize", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClusterSize)))));
    _ = RedisModule_GetApi.?("RedisModule_GetRandomBytes", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetRandomBytes)))));
    _ = RedisModule_GetApi.?("RedisModule_GetRandomHexChars", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetRandomHexChars)))));
    _ = RedisModule_GetApi.?("RedisModule_SetClusterFlags", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetClusterFlags)))));
    _ = RedisModule_GetApi.?("RedisModule_ExportSharedAPI", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ExportSharedAPI)))));
    _ = RedisModule_GetApi.?("RedisModule_GetSharedAPI", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetSharedAPI)))));
    _ = RedisModule_GetApi.?("RedisModule_RegisterCommandFilter", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RegisterCommandFilter)))));
    _ = RedisModule_GetApi.?("RedisModule_UnregisterCommandFilter", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_UnregisterCommandFilter)))));
    _ = RedisModule_GetApi.?("RedisModule_CommandFilterArgsCount", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CommandFilterArgsCount)))));
    _ = RedisModule_GetApi.?("RedisModule_CommandFilterArgGet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CommandFilterArgGet)))));
    _ = RedisModule_GetApi.?("RedisModule_CommandFilterArgInsert", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CommandFilterArgInsert)))));
    _ = RedisModule_GetApi.?("RedisModule_CommandFilterArgReplace", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CommandFilterArgReplace)))));
    _ = RedisModule_GetApi.?("RedisModule_CommandFilterArgDelete", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CommandFilterArgDelete)))));
    _ = RedisModule_GetApi.?("RedisModule_Fork", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_Fork)))));
    _ = RedisModule_GetApi.?("RedisModule_ExitFromChild", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_ExitFromChild)))));
    _ = RedisModule_GetApi.?("RedisModule_KillForkChild", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_KillForkChild)))));
    _ = RedisModule_GetApi.?("RedisModule_GetUsedMemoryRatio", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetUsedMemoryRatio)))));
    _ = RedisModule_GetApi.?("RedisModule_MallocSize", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_MallocSize)))));
    _ = RedisModule_GetApi.?("RedisModule_CreateModuleUser", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_CreateModuleUser)))));
    _ = RedisModule_GetApi.?("RedisModule_FreeModuleUser", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_FreeModuleUser)))));
    _ = RedisModule_GetApi.?("RedisModule_SetModuleUserACL", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_SetModuleUserACL)))));
    _ = RedisModule_GetApi.?("RedisModule_DeauthenticateAndCloseClient", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DeauthenticateAndCloseClient)))));
    _ = RedisModule_GetApi.?("RedisModule_AuthenticateClientWithACLUser", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_AuthenticateClientWithACLUser)))));
    _ = RedisModule_GetApi.?("RedisModule_AuthenticateClientWithUser", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_AuthenticateClientWithUser)))));
    _ = RedisModule_GetApi.?("RedisModule_GetClientCertificate", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetClientCertificate)))));
    _ = RedisModule_GetApi.?("RedisModule_GetCommandKeys", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_GetCommandKeys)))));
    _ = RedisModule_GetApi.?("RedisModule_RegisterDefragFunc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_RegisterDefragFunc)))));
    _ = RedisModule_GetApi.?("RedisModule_DefragAlloc", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DefragAlloc)))));
    _ = RedisModule_GetApi.?("RedisModule_DefragRedisModuleString", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DefragRedisModuleString)))));
    _ = RedisModule_GetApi.?("RedisModule_DefragShouldStop", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DefragShouldStop)))));
    _ = RedisModule_GetApi.?("RedisModule_DefragCursorSet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DefragCursorSet)))));
    _ = RedisModule_GetApi.?("RedisModule_DefragCursorGet", @ptrCast(?*c_void, (@ptrCast([*c]?*c_void, @alignCast(@alignOf(?*c_void), &RedisModule_DefragCursorGet)))));
    if ((RedisModule_IsModuleNameBusy != null) and (RedisModule_IsModuleNameBusy.?(name) != 0)) return 1;
    RedisModule_SetModuleAttribs.?(ctx, name, ver, apiver);
    return 0;
}
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):64:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):68:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):75:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):79:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):83:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):98:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):160:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):188:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):226:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):230:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):266:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):270:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:118:9
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:211:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:239:9
pub const __swift_unavailable = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:305:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:339:10
pub const __unreachable_ok_push = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:365:10
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:396:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:416:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:420:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:424:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:428:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:446:9
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:631:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:632:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:633:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:634:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:635:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:637:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:638:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:639:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:640:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:641:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:643:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:644:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:654:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:717:9
pub const __compiler_barrier = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:833:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:857:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:859:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:861:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:863:9
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:67:17
pub const NTOHL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:143:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:144:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:145:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:146:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:147:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:148:9
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2922:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2923:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2924:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2926:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2930:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2937:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2941:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2942:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2944:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2956:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2961:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2968:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2972:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2974:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2978:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2980:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2985:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2990:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2994:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2996:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3002:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3006:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3008:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3012:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3014:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3018:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3020:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3026:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3038:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3044:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3045:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3047:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3049:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3053:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3055:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3065:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3067:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3073:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3077:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3079:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3084:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3089:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3091:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3095:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3097:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3101:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3103:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3113:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3115:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3119:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3121:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3125:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3127:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3137:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3139:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3149:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3151:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3157:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3166:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3168:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3172:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3174:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3179:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3184:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3186:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3192:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3196:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3198:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3203:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3216:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3220:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3222:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3232:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3240:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3246:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3250:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3252:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3256:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3258:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3264:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3268:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3270:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3281:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3287:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3292:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3297:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3299:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3303:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3305:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3309:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3316:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3323:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3327:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3329:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3340:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3344:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3353:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3357:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3365:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3382:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3383:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3385:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3386:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3395:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3405:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3407:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3413:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3417:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3419:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3424:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3428:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3429:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3431:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3435:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3437:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3441:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3443:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3448:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3452:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3454:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3458:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3460:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3464:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3466:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3470:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3472:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3476:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3478:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3483:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3484:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3485:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3486:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3487:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3489:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3493:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3495:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3500:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3504:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3505:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3507:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3511:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3513:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3517:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3519:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3524:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3528:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3529:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3531:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3535:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3537:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3541:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3543:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3548:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3552:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3553:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3555:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3559:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3561:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3565:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3567:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3571:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3573:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3581:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3582:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3584:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3588:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3590:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3595:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3599:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3600:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3602:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3606:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3608:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3612:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3614:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3619:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3623:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3624:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3626:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3630:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3632:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3636:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3638:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3643:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3647:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3648:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3650:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3654:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3656:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3662:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3666:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3667:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3668:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3669:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3670:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3671:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3673:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3677:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3679:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3684:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3688:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3689:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3691:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3695:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3697:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3701:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3703:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3708:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3712:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3713:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3715:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3719:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3721:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3725:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3727:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3732:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3736:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3737:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3739:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3743:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3745:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3750:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3751:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3752:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3753:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3754:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3756:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3760:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3762:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3767:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3771:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3772:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3774:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3778:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3780:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3784:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3786:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3791:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3795:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3796:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3798:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3802:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3804:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3808:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3810:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3815:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3819:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3820:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3821:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3823:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3827:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3828:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3829:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3830:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3832:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3836:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3837:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3838:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3840:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3844:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3851:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3855:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3856:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3858:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3862:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3864:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3868:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3870:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3875:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3879:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3880:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3882:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3886:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3888:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3892:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3894:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3909:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3911:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3933:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3935:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3953:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3967:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3969:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3973:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3975:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3979:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3980:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3986:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3988:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3992:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3994:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4004:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4006:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4010:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4016:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4018:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4028:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4029:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4037:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4039:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4045:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4049:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4051:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4056:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4060:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4061:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4063:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4067:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4069:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4075:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4080:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4084:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4086:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4087:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4090:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4094:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4096:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4101:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4105:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4106:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4114:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4120:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4125:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4129:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4130:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4132:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4136:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4138:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4142:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4144:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4149:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4153:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4155:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4166:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4170:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4172:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4176:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4178:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4182:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4185:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4191:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4195:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4197:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4202:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4209:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4211:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4215:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4217:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4221:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4222:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4224:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4228:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4230:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4234:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4236:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4241:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4245:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4246:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4247:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4248:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4250:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4255:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4257:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4261:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4263:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4267:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4269:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4274:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4280:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4281:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4282:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4284:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4288:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4290:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4296:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4301:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4305:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4306:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4312:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4314:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4320:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4325:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4331:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4332:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4339:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4341:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4352:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4353:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4354:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4356:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4360:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4362:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4367:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4368:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4376:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4377:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4378:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4380:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4386:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4390:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4392:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4397:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4401:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4403:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4407:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4409:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4410:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4412:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4413:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4415:21
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4445:13
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4446:13
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4447:13
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4448:13
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4449:13
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4451:13
pub const __API_AVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4454:14
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4456:13
pub const __API_A = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4460:17
pub const __API_AVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4469:13
pub const __API_AVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4470:13
pub const __API_AVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4471:13
pub const __API_AVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4472:13
pub const __API_AVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4473:13
pub const __API_AVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4474:13
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4475:13
pub const __API_APPLY_TO = @compileError("unable to translate C expr: unexpected token .Keyword_enum"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4477:13
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token .Hash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4479:13
pub const __API_A_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4481:13
pub const __API_AVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4484:13
pub const __API_AVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4485:13
pub const __API_AVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4486:13
pub const __API_AVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4487:13
pub const __API_AVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4488:13
pub const __API_AVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4489:13
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4490:13
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4493:13
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4494:13
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4495:13
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4496:13
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4497:13
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4499:13
pub const __API_DEPRECATED_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4502:14
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4504:13
pub const __API_D = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4508:17
pub const __API_DEPRECATED_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4517:13
pub const __API_DEPRECATED_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4518:13
pub const __API_DEPRECATED_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4519:13
pub const __API_DEPRECATED_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4520:13
pub const __API_DEPRECATED_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4521:13
pub const __API_DEPRECATED_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4522:13
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4523:13
pub const __API_D_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4525:13
pub const __API_DEPRECATED_BEGIN_MSG3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4528:13
pub const __API_DEPRECATED_BEGIN_MSG4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4529:13
pub const __API_DEPRECATED_BEGIN_MSG5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4530:13
pub const __API_DEPRECATED_BEGIN_MSG6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4531:13
pub const __API_DEPRECATED_BEGIN_MSG7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4532:13
pub const __API_DEPRECATED_BEGIN_MSG8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4533:13
pub const __API_DEPRECATED_BEGIN_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4534:13
pub const __API_R = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4537:17
pub const __API_DEPRECATED_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4543:13
pub const __API_DEPRECATED_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4544:13
pub const __API_DEPRECATED_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4545:13
pub const __API_DEPRECATED_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4546:13
pub const __API_DEPRECATED_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4547:13
pub const __API_DEPRECATED_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4548:13
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4549:13
pub const __API_R_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4552:17
pub const __API_DEPRECATED_BEGIN_REP3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4558:13
pub const __API_DEPRECATED_BEGIN_REP4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4559:13
pub const __API_DEPRECATED_BEGIN_REP5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4560:13
pub const __API_DEPRECATED_BEGIN_REP6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4561:13
pub const __API_DEPRECATED_BEGIN_REP7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4562:13
pub const __API_DEPRECATED_BEGIN_REP8 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4563:13
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4564:13
pub const __API_U = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4589:17
pub const __API_UNAVAILABLE2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4598:13
pub const __API_UNAVAILABLE3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4599:13
pub const __API_UNAVAILABLE4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4600:13
pub const __API_UNAVAILABLE5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4601:13
pub const __API_UNAVAILABLE6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4602:13
pub const __API_UNAVAILABLE7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4603:13
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4604:13
pub const __API_U_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4606:13
pub const __API_UNAVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4609:13
pub const __API_UNAVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4610:13
pub const __API_UNAVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4611:13
pub const __API_UNAVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4612:13
pub const __API_UNAVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4613:13
pub const __API_UNAVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4614:13
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4615:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4664:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4672:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:172:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:173:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:175:17
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:199:13
pub const __OS_EXTENSION_UNAVAILABLE = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:227:9
pub const __OSX_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:235:13
pub const __OSX_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:236:13
pub const __IOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:258:13
pub const __IOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:259:13
pub const __TVOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:285:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:286:13
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:312:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate C expr: unexpected token .Identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:313:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:381:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:383:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:402:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:403:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:405:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:408:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:419:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:421:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:475:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:479:11
pub const INT64_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:65:9
pub const UINT32_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:69:9
pub const UINT64_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:70:9
pub const INTMAX_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:73:9
pub const UINTMAX_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:74:9
pub const __sgetc = @compileError("TODO unary inc/dec expr"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h:258:9
pub const __sclearerr = @compileError("unable to translate C expr: expected ')''"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h:282:9
pub const REDISMODULE_HASH_DELETE = @compileError("unable to translate C expr: expected ')'' instead got: IntegerLiteral"); // redismodule.h:160:9
pub const REDISMODULE_GET_API = @compileError("unable to translate C expr: expected ',' or ')'"); // redismodule.h:539:9
pub const RedisModule_Assert = @compileError("unable to translate C expr: unexpected token .Hash"); // redismodule.h:1063:9
pub const __llvm__ = 1;
pub const __clang__ = 1;
pub const __clang_major__ = 11;
pub const __clang_minor__ = 0;
pub const __clang_patchlevel__ = 0;
pub const __clang_version__ = "11.0.0 ";
pub const __GNUC__ = 4;
pub const __GNUC_MINOR__ = 2;
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __GXX_ABI_VERSION = 1002;
pub const __ATOMIC_RELAXED = 0;
pub const __ATOMIC_CONSUME = 1;
pub const __ATOMIC_ACQUIRE = 2;
pub const __ATOMIC_RELEASE = 3;
pub const __ATOMIC_ACQ_REL = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __VERSION__ = "Clang 11.0.0";
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const __block = __attribute__(__blocks__(byref));
pub const __BLOCKS__ = 1;
pub const __OPTIMIZE__ = 1;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = 1;
pub const _LP64 = 1;
pub const __LP64__ = 1;
pub const __CHAR_BIT__ = 8;
pub const __SCHAR_MAX__ = 127;
pub const __SHRT_MAX__ = 32767;
pub const __INT_MAX__ = 2147483647;
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = 2147483647;
pub const __WINT_MAX__ = 2147483647;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __SIZEOF_DOUBLE__ = 8;
pub const __SIZEOF_FLOAT__ = 4;
pub const __SIZEOF_INT__ = 4;
pub const __SIZEOF_LONG__ = 8;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZEOF_SHORT__ = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const __SIZEOF_WINT_T__ = 4;
pub const __SIZEOF_INT128__ = 16;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INTMAX_WIDTH__ = 64;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = 64;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = 64;
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = 32;
pub const __WINT_TYPE__ = c_int;
pub const __WINT_WIDTH__ = 32;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = 64;
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = 1;
pub const __FLT_DIG__ = 6;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __FLT_MANT_DIG__ = 24;
pub const __FLT_MAX_10_EXP__ = 38;
pub const __FLT_MAX_EXP__ = 128;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -37;
pub const __FLT_MIN_EXP__ = -125;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = 1;
pub const __DBL_DIG__ = 15;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = 1;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __DBL_MANT_DIG__ = 53;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __DBL_MAX_EXP__ = 1024;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __DBL_MIN_EXP__ = -1021;
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = 1;
pub const __LDBL_DIG__ = 18;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __LDBL_MANT_DIG__ = 64;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = 64;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = LL;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = 255;
pub const __INT8_MAX__ = 127;
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = 65535;
pub const __INT16_MAX__ = 32767;
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __INT32_MAX__ = 2147483647;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = ULL;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = 127;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = 255;
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = 127;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = 255;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = _;
pub const __FINITE_MATH_ONLY__ = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __PIC__ = 2;
pub const __pic__ = 2;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __FLT_RADIX__ = 2;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = 2;
pub const __nonnull = _Nonnull;
pub const __null_unspecified = _Null_unspecified;
pub const __nullable = _Nullable;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __code_model_small__ = 1;
pub const __amd64__ = 1;
pub const __amd64 = 1;
pub const __x86_64 = 1;
pub const __x86_64__ = 1;
pub const __SEG_GS = 1;
pub const __SEG_FS = 1;
pub const __seg_gs = __attribute__(address_space(256));
pub const __seg_fs = __attribute__(address_space(257));
pub const __corei7 = 1;
pub const __corei7__ = 1;
pub const __tune_corei7__ = 1;
pub const __NO_MATH_INLINES = 1;
pub const __AES__ = 1;
pub const __PCLMUL__ = 1;
pub const __LZCNT__ = 1;
pub const __RDRND__ = 1;
pub const __FSGSBASE__ = 1;
pub const __BMI__ = 1;
pub const __BMI2__ = 1;
pub const __POPCNT__ = 1;
pub const __PRFCHW__ = 1;
pub const __RDSEED__ = 1;
pub const __ADX__ = 1;
pub const __MOVBE__ = 1;
pub const __FMA__ = 1;
pub const __F16C__ = 1;
pub const __FXSR__ = 1;
pub const __XSAVE__ = 1;
pub const __XSAVEOPT__ = 1;
pub const __XSAVEC__ = 1;
pub const __XSAVES__ = 1;
pub const __CLFLUSHOPT__ = 1;
pub const __SGX__ = 1;
pub const __INVPCID__ = 1;
pub const __AVX2__ = 1;
pub const __AVX__ = 1;
pub const __SSE4_2__ = 1;
pub const __SSE4_1__ = 1;
pub const __SSSE3__ = 1;
pub const __SSE3__ = 1;
pub const __SSE2__ = 1;
pub const __SSE2_MATH__ = 1;
pub const __SSE__ = 1;
pub const __SSE_MATH__ = 1;
pub const __MMX__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __APPLE_CC__ = 6000;
pub const __APPLE__ = 1;
pub const __STDC_NO_THREADS__ = 1;
pub const __weak = __attribute__(objc_gc(weak));
pub const __DYNAMIC__ = 1;
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = 110100;
pub const __MACH__ = 1;
pub const __STDC__ = 1;
pub const __STDC_HOSTED__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = 1;
pub const __STDC_UTF_32__ = 1;
pub const _DEBUG = 1;
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    return protos;
}
pub const __signed = c_int;
pub const __dead2 = __attribute__(__noreturn__);
pub const __pure2 = __attribute__(__const__);
pub const __unused = __attribute__(__unused__);
pub const __used = __attribute__(__used__);
pub const __cold = __attribute__(__cold__);
pub const __exported = __attribute__(__visibility__("default"));
pub const __exported_push = _Pragma("GCC visibility push(default)");
pub const __exported_pop = _Pragma("GCC visibility pop");
pub const __deprecated = __attribute__(__deprecated__);
pub inline fn __deprecated_msg(_msg: anytype) @TypeOf(__attribute__(__deprecated__(_msg))) {
    return __attribute__(__deprecated__(_msg));
}
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const __unavailable = __attribute__(__unavailable__);
pub const __disable_tail_calls = __attribute__(__disable_tail_calls__);
pub const __not_tail_called = __attribute__(__not_tail_called__);
pub const __result_use_check = __attribute__(__warn_unused_result__);
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_always_inline = __header_inline ++ __attribute__(__always_inline__);
pub const __unreachable_ok_pop = _Pragma("clang diagnostic pop");
pub inline fn __printflike(fmtarg: anytype, firstvararg: anytype) @TypeOf(__attribute__(__format__(__printf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf__, fmtarg, firstvararg));
}
pub inline fn __printf0like(fmtarg: anytype, firstvararg: anytype) @TypeOf(__attribute__(__format__(__printf0__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf0__, fmtarg, firstvararg));
}
pub inline fn __scanflike(fmtarg: anytype, firstvararg: anytype) @TypeOf(__attribute__(__format__(__scanf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__scanf__, fmtarg, firstvararg));
}
pub inline fn __COPYRIGHT(s: anytype) @TypeOf(__IDSTRING(copyright, s)) {
    return __IDSTRING(copyright, s);
}
pub inline fn __RCSID(s: anytype) @TypeOf(__IDSTRING(rcsid, s)) {
    return __IDSTRING(rcsid, s);
}
pub inline fn __SCCSID(s: anytype) @TypeOf(__IDSTRING(sccsid, s)) {
    return __IDSTRING(sccsid, s);
}
pub inline fn __PROJECT_VERSION(s: anytype) @TypeOf(__IDSTRING(project_version, s)) {
    return __IDSTRING(project_version, s);
}
pub const __DARWIN_ONLY_64_BIT_INO_T = 0;
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = 1;
pub const __DARWIN_ONLY_VERS_1050 = 0;
pub const __DARWIN_UNIX03 = 1;
pub const __DARWIN_64_BIT_INO_T = 1;
pub const __DARWIN_VERS_1050 = 1;
pub const __DARWIN_NON_CANCELABLE = 0;
pub const __DARWIN_SUF_64_BIT_INO_T = "$INODE64";
pub const __DARWIN_SUF_1050 = "$1050";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    return x;
}
pub const __DARWIN_C_ANSI = @as(c_long, 0o010000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = 1;
pub const __DARWIN_NO_LONG_LONG = 0;
pub const _DARWIN_FEATURE_64_BIT_INODE = 1;
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;
pub inline fn __CAST_AWAY_QUALIFIER(variable: anytype, qualifier: anytype, type_1: anytype) @TypeOf((@import("std").meta.cast(type_1, c_long))(variable)) {
    return (@import("std").meta.cast(type_1, c_long))(variable);
}
pub const __XNU_PRIVATE_EXTERN = __attribute__(visibility("hidden"));
pub const __enum_open = __attribute__(__enum_extensibility__(open));
pub const __enum_closed = __attribute__(__enum_extensibility__(closed));
pub const __enum_options = __attribute__(__flag_enum__);
pub const USER_ADDR_NULL = (@import("std").meta.cast(user_addr_t, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) @TypeOf((@import("std").meta.cast(user_addr_t, (@import("std").meta.cast(usize, a_ptr))))) {
    return (@import("std").meta.cast(user_addr_t, (@import("std").meta.cast(usize, a_ptr))));
}
pub const __DARWIN_NULL = (@import("std").meta.cast(?*c_void, 0));
pub const __PTHREAD_SIZE__ = 8176;
pub const __PTHREAD_ATTR_SIZE__ = 56;
pub const __PTHREAD_MUTEXATTR_SIZE__ = 8;
pub const __PTHREAD_MUTEX_SIZE__ = 56;
pub const __PTHREAD_CONDATTR_SIZE__ = 8;
pub const __PTHREAD_COND_SIZE__ = 40;
pub const __PTHREAD_ONCE_SIZE__ = 8;
pub const __PTHREAD_RWLOCK_SIZE__ = 192;
pub const __PTHREAD_RWLOCKATTR_SIZE__ = 16;
pub inline fn __offsetof(type_1: anytype, field: anytype) @TypeOf(__builtin_offsetof(type_1, field)) {
    return __builtin_offsetof(type_1, field);
}
pub const _QUAD_HIGHWORD = 1;
pub const _QUAD_LOWWORD = 0;
pub const __DARWIN_LITTLE_ENDIAN = 1234;
pub const __DARWIN_BIG_ENDIAN = 4321;
pub const __DARWIN_PDP_ENDIAN = 3412;
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub inline fn __DARWIN_OSSwapConstInt16(x: anytype) @TypeOf((@import("std").meta.cast(__uint16_t, (((@import("std").meta.cast(__uint16_t, x)) & @as(c_uint, 0xff00)) >> 8) | (((@import("std").meta.cast(__uint16_t, x)) & @as(c_uint, 0x00ff)) << 8)))) {
    return (@import("std").meta.cast(__uint16_t, (((@import("std").meta.cast(__uint16_t, x)) & @as(c_uint, 0xff00)) >> 8) | (((@import("std").meta.cast(__uint16_t, x)) & @as(c_uint, 0x00ff)) << 8)));
}
pub inline fn __DARWIN_OSSwapConstInt32(x: anytype) @TypeOf((@import("std").meta.cast(__uint32_t, (((((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0xff000000)) >> 24) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x00ff0000)) >> 8)) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x0000ff00)) << 8)) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x000000ff)) << 24)))) {
    return (@import("std").meta.cast(__uint32_t, (((((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0xff000000)) >> 24) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x00ff0000)) >> 8)) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x0000ff00)) << 8)) | (((@import("std").meta.cast(__uint32_t, x)) & @as(c_uint, 0x000000ff)) << 24)));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: anytype) @TypeOf((@import("std").meta.cast(__uint64_t, (((((((((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)))) {
    return (@import("std").meta.cast(__uint64_t, (((((((((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40)) | (((@import("std").meta.cast(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)));
}
pub inline fn __DARWIN_OSSwapInt16(x: anytype) @TypeOf((@import("std").meta.cast(__uint16_t, if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x)))) {
    return (@import("std").meta.cast(__uint16_t, if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x)));
}
pub inline fn __DARWIN_OSSwapInt32(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x)) {
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x);
}
pub inline fn __DARWIN_OSSwapInt64(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x)) {
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x);
}
pub inline fn ntohs(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn htons(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn ntohl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn htonl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn ntohll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn htonll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn major(x: anytype) @TypeOf((@import("std").meta.cast(i32, ((@import("std").meta.cast(u_int32_t, x)) >> 24) & 0xff))) {
    return (@import("std").meta.cast(i32, ((@import("std").meta.cast(u_int32_t, x)) >> 24) & 0xff));
}
pub inline fn minor(x: anytype) @TypeOf((@import("std").meta.cast(i32, x & 0xffffff))) {
    return (@import("std").meta.cast(i32, x & 0xffffff));
}
pub inline fn makedev(x: anytype, y: anytype) @TypeOf((@import("std").meta.cast(dev_t, (x << 24) | y))) {
    return (@import("std").meta.cast(dev_t, (x << 24) | y));
}
pub const __API_TO_BE_DEPRECATED = 100000;
pub const __MAC_10_0 = 1000;
pub const __MAC_10_1 = 1010;
pub const __MAC_10_2 = 1020;
pub const __MAC_10_3 = 1030;
pub const __MAC_10_4 = 1040;
pub const __MAC_10_5 = 1050;
pub const __MAC_10_6 = 1060;
pub const __MAC_10_7 = 1070;
pub const __MAC_10_8 = 1080;
pub const __MAC_10_9 = 1090;
pub const __MAC_10_10 = 101000;
pub const __MAC_10_10_2 = 101002;
pub const __MAC_10_10_3 = 101003;
pub const __MAC_10_11 = 101100;
pub const __MAC_10_11_2 = 101102;
pub const __MAC_10_11_3 = 101103;
pub const __MAC_10_11_4 = 101104;
pub const __MAC_10_12 = 101200;
pub const __MAC_10_12_1 = 101201;
pub const __MAC_10_12_2 = 101202;
pub const __MAC_10_12_4 = 101204;
pub const __MAC_10_13 = 101300;
pub const __MAC_10_13_1 = 101301;
pub const __MAC_10_13_2 = 101302;
pub const __MAC_10_13_4 = 101304;
pub const __MAC_10_14 = 101400;
pub const __MAC_10_14_1 = 101401;
pub const __MAC_10_14_4 = 101404;
pub const __MAC_10_14_6 = 101406;
pub const __MAC_10_15 = 101500;
pub const __MAC_10_15_1 = 101501;
pub const __MAC_10_15_4 = 101504;
pub const __MAC_10_16 = 101600;
pub const __MAC_11_0 = 110000;
pub const __MAC_11_1 = 110100;
pub const __IPHONE_2_0 = 20000;
pub const __IPHONE_2_1 = 20100;
pub const __IPHONE_2_2 = 20200;
pub const __IPHONE_3_0 = 30000;
pub const __IPHONE_3_1 = 30100;
pub const __IPHONE_3_2 = 30200;
pub const __IPHONE_4_0 = 40000;
pub const __IPHONE_4_1 = 40100;
pub const __IPHONE_4_2 = 40200;
pub const __IPHONE_4_3 = 40300;
pub const __IPHONE_5_0 = 50000;
pub const __IPHONE_5_1 = 50100;
pub const __IPHONE_6_0 = 60000;
pub const __IPHONE_6_1 = 60100;
pub const __IPHONE_7_0 = 70000;
pub const __IPHONE_7_1 = 70100;
pub const __IPHONE_8_0 = 80000;
pub const __IPHONE_8_1 = 80100;
pub const __IPHONE_8_2 = 80200;
pub const __IPHONE_8_3 = 80300;
pub const __IPHONE_8_4 = 80400;
pub const __IPHONE_9_0 = 90000;
pub const __IPHONE_9_1 = 90100;
pub const __IPHONE_9_2 = 90200;
pub const __IPHONE_9_3 = 90300;
pub const __IPHONE_10_0 = 100000;
pub const __IPHONE_10_1 = 100100;
pub const __IPHONE_10_2 = 100200;
pub const __IPHONE_10_3 = 100300;
pub const __IPHONE_11_0 = 110000;
pub const __IPHONE_11_1 = 110100;
pub const __IPHONE_11_2 = 110200;
pub const __IPHONE_11_3 = 110300;
pub const __IPHONE_11_4 = 110400;
pub const __IPHONE_12_0 = 120000;
pub const __IPHONE_12_1 = 120100;
pub const __IPHONE_12_2 = 120200;
pub const __IPHONE_12_3 = 120300;
pub const __IPHONE_12_4 = 120400;
pub const __IPHONE_13_0 = 130000;
pub const __IPHONE_13_1 = 130100;
pub const __IPHONE_13_2 = 130200;
pub const __IPHONE_13_3 = 130300;
pub const __IPHONE_13_4 = 130400;
pub const __IPHONE_13_5 = 130500;
pub const __IPHONE_13_6 = 130600;
pub const __IPHONE_13_7 = 130700;
pub const __IPHONE_14_0 = 140000;
pub const __IPHONE_14_1 = 140100;
pub const __IPHONE_14_2 = 140200;
pub const __IPHONE_14_3 = 140300;
pub const __TVOS_9_0 = 90000;
pub const __TVOS_9_1 = 90100;
pub const __TVOS_9_2 = 90200;
pub const __TVOS_10_0 = 100000;
pub const __TVOS_10_0_1 = 100001;
pub const __TVOS_10_1 = 100100;
pub const __TVOS_10_2 = 100200;
pub const __TVOS_11_0 = 110000;
pub const __TVOS_11_1 = 110100;
pub const __TVOS_11_2 = 110200;
pub const __TVOS_11_3 = 110300;
pub const __TVOS_11_4 = 110400;
pub const __TVOS_12_0 = 120000;
pub const __TVOS_12_1 = 120100;
pub const __TVOS_12_2 = 120200;
pub const __TVOS_12_3 = 120300;
pub const __TVOS_12_4 = 120400;
pub const __TVOS_13_0 = 130000;
pub const __TVOS_13_2 = 130200;
pub const __TVOS_13_3 = 130300;
pub const __TVOS_13_4 = 130400;
pub const __TVOS_14_0 = 140000;
pub const __TVOS_14_1 = 140100;
pub const __TVOS_14_2 = 140200;
pub const __TVOS_14_3 = 140300;
pub const __WATCHOS_1_0 = 10000;
pub const __WATCHOS_2_0 = 20000;
pub const __WATCHOS_2_1 = 20100;
pub const __WATCHOS_2_2 = 20200;
pub const __WATCHOS_3_0 = 30000;
pub const __WATCHOS_3_1 = 30100;
pub const __WATCHOS_3_1_1 = 30101;
pub const __WATCHOS_3_2 = 30200;
pub const __WATCHOS_4_0 = 40000;
pub const __WATCHOS_4_1 = 40100;
pub const __WATCHOS_4_2 = 40200;
pub const __WATCHOS_4_3 = 40300;
pub const __WATCHOS_5_0 = 50000;
pub const __WATCHOS_5_1 = 50100;
pub const __WATCHOS_5_2 = 50200;
pub const __WATCHOS_5_3 = 50300;
pub const __WATCHOS_6_0 = 60000;
pub const __WATCHOS_6_1 = 60100;
pub const __WATCHOS_6_2 = 60200;
pub const __WATCHOS_7_0 = 70000;
pub const __WATCHOS_7_1 = 70100;
pub const __WATCHOS_7_2 = 70200;
pub const MAC_OS_X_VERSION_10_0 = 1000;
pub const MAC_OS_X_VERSION_10_1 = 1010;
pub const MAC_OS_X_VERSION_10_2 = 1020;
pub const MAC_OS_X_VERSION_10_3 = 1030;
pub const MAC_OS_X_VERSION_10_4 = 1040;
pub const MAC_OS_X_VERSION_10_5 = 1050;
pub const MAC_OS_X_VERSION_10_6 = 1060;
pub const MAC_OS_X_VERSION_10_7 = 1070;
pub const MAC_OS_X_VERSION_10_8 = 1080;
pub const MAC_OS_X_VERSION_10_9 = 1090;
pub const MAC_OS_X_VERSION_10_10 = 101000;
pub const MAC_OS_X_VERSION_10_10_2 = 101002;
pub const MAC_OS_X_VERSION_10_10_3 = 101003;
pub const MAC_OS_X_VERSION_10_11 = 101100;
pub const MAC_OS_X_VERSION_10_11_2 = 101102;
pub const MAC_OS_X_VERSION_10_11_3 = 101103;
pub const MAC_OS_X_VERSION_10_11_4 = 101104;
pub const MAC_OS_X_VERSION_10_12 = 101200;
pub const MAC_OS_X_VERSION_10_12_1 = 101201;
pub const MAC_OS_X_VERSION_10_12_2 = 101202;
pub const MAC_OS_X_VERSION_10_12_4 = 101204;
pub const MAC_OS_X_VERSION_10_13 = 101300;
pub const MAC_OS_X_VERSION_10_13_1 = 101301;
pub const MAC_OS_X_VERSION_10_13_2 = 101302;
pub const MAC_OS_X_VERSION_10_13_4 = 101304;
pub const MAC_OS_X_VERSION_10_14 = 101400;
pub const MAC_OS_X_VERSION_10_14_1 = 101401;
pub const MAC_OS_X_VERSION_10_14_4 = 101404;
pub const MAC_OS_X_VERSION_10_14_6 = 101406;
pub const MAC_OS_X_VERSION_10_15 = 101500;
pub const MAC_OS_X_VERSION_10_15_1 = 101501;
pub const MAC_OS_X_VERSION_10_16 = 101600;
pub const MAC_OS_VERSION_11_0 = 110000;
pub const __DRIVERKIT_19_0 = 190000;
pub const __DRIVERKIT_20_0 = 200000;
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_11_1;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = __attribute__(deprecated);
pub inline fn __AVAILABILITY_INTERNAL_DEPRECATED_MSG(_msg: anytype) @TypeOf(__attribute__(deprecated(_msg))) {
    return __attribute__(deprecated(_msg));
}
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = __attribute__(unavailable);
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = __attribute__(weak_import);
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = 1;
pub const __AVAILABILITY_INTERNAL__MAC_NA = __attribute__(availability(macosx, unavailable));
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = __attribute__(availability(macosx, unavailable));
pub inline fn __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG(_msg: anytype) @TypeOf(__attribute__(availability(macosx, unavailable))) {
    return __attribute__(availability(macosx, unavailable));
}
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub inline fn __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG(_msg: anytype) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub inline fn __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG(_msg: anytype) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub inline fn __API_AVAILABLE1(x: anytype) @TypeOf(__API_A(x)) {
    return __API_A(x);
}
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    return __API_RANGE_STRINGIFY2(x);
}
pub inline fn __API_AVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_A_BEGIN(a)) {
    return __API_A_BEGIN(a);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, x: anytype) @TypeOf(__API_D(msg, x)) {
    return __API_D(msg, x);
}
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: anytype, a: anytype) @TypeOf(__API_D_BEGIN(msg, a)) {
    return __API_D_BEGIN(msg, a);
}
pub inline fn __API_DEPRECATED_REP2(rep: anytype, x: anytype) @TypeOf(__API_R(rep, x)) {
    return __API_R(rep, x);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(rep: anytype, a: anytype) @TypeOf(__API_R_BEGIN(rep, a)) {
    return __API_R_BEGIN(rep, a);
}
pub const __API_UNAVAILABLE_PLATFORM_macos = blk: {
    _ = macos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_macosx = blk: {
    _ = macosx;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_ios = blk: {
    _ = ios;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_watchos = blk: {
    _ = watchos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_tvos = blk: {
    _ = tvos;
    break :blk unavailable;
};
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = blk: {
    _ = macCatalyst;
    break :blk unavailable;
};
pub inline fn __API_UNAVAILABLE_PLATFORM_uikitformac(x: anytype) @TypeOf(unavailable) {
    return blk: {
        _ = uikitformac;
        break :blk unavailable;
    };
}
pub const __API_UNAVAILABLE_PLATFORM_driverkit = blk: {
    _ = driverkit;
    break :blk unavailable;
};
pub inline fn __API_UNAVAILABLE1(x: anytype) @TypeOf(__API_U(x)) {
    return __API_U(x);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_U_BEGIN(a)) {
    return __API_U_BEGIN(a);
}
pub inline fn __OS_AVAILABILITY(_target: anytype, _availability: anytype) @TypeOf(__attribute__(availability(_target, _availability))) {
    return __attribute__(availability(_target, _availability));
}
pub inline fn __OSX_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg);
}
pub inline fn __IOS_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg);
}
pub const __OSX_UNAVAILABLE = __OS_AVAILABILITY(macosx, unavailable);
pub const __IOS_UNAVAILABLE = __OS_AVAILABILITY(ios, unavailable);
pub const __IOS_PROHIBITED = __OS_AVAILABILITY(ios, unavailable);
pub const __TVOS_UNAVAILABLE = __OS_AVAILABILITY(tvos, unavailable);
pub const __TVOS_PROHIBITED = __OS_AVAILABILITY(tvos, unavailable);
pub const __WATCHOS_UNAVAILABLE = __OS_AVAILABILITY(watchos, unavailable);
pub const __WATCHOS_PROHIBITED = __OS_AVAILABILITY(watchos, unavailable);
pub const __SWIFT_UNAVAILABLE = __OS_AVAILABILITY(swift, unavailable);
pub inline fn __SWIFT_UNAVAILABLE_MSG(_msg: anytype) @TypeOf(__OS_AVAILABILITY_MSG(swift, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(swift, unavailable, _msg);
}
pub const __API_AVAILABLE_END = _Pragma("clang attribute pop");
pub const __API_DEPRECATED_END = _Pragma("clang attribute pop");
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = _Pragma("clang attribute pop");
pub const __API_UNAVAILABLE_END = _Pragma("clang attribute pop");
pub const __DARWIN_FD_SETSIZE = 1024;
pub const __DARWIN_NBBY = 8;
pub const __DARWIN_NFDBITS = @import("std").meta.sizeof(__int32_t) * __DARWIN_NBBY;
pub inline fn __DARWIN_howmany(x: anytype, y: anytype) @TypeOf(if ((x % y) == 0) x / y else (x / y) + 1) {
    return if ((x % y) == 0) x / y else (x / y) + 1;
}
pub inline fn __DARWIN_FD_SET(n: anytype, p: anytype) @TypeOf(__darwin_fd_set(n, p)) {
    return __darwin_fd_set(n, p);
}
pub inline fn __DARWIN_FD_CLR(n: anytype, p: anytype) @TypeOf(__darwin_fd_clr(n, p)) {
    return __darwin_fd_clr(n, p);
}
pub inline fn __DARWIN_FD_ISSET(n: anytype, p: anytype) @TypeOf(__darwin_fd_isset(n, p)) {
    return __darwin_fd_isset(n, p);
}
pub inline fn __DARWIN_FD_ZERO(p: anytype) @TypeOf(__builtin_bzero(p, @import("std").meta.sizeof(p.*))) {
    return __builtin_bzero(p, @import("std").meta.sizeof(p.*));
}
pub inline fn __DARWIN_FD_COPY(f: anytype, t: anytype) @TypeOf(bcopy(f, t, @import("std").meta.sizeof(f.*))) {
    return bcopy(f, t, @import("std").meta.sizeof(f.*));
}
pub const NBBY = __DARWIN_NBBY;
pub const NFDBITS = __DARWIN_NFDBITS;
pub inline fn howmany(x: anytype, y: anytype) @TypeOf(__DARWIN_howmany(x, y)) {
    return __DARWIN_howmany(x, y);
}
pub const FD_SETSIZE = __DARWIN_FD_SETSIZE;
pub inline fn FD_SET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_SET(n, p)) {
    return __DARWIN_FD_SET(n, p);
}
pub inline fn FD_CLR(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_CLR(n, p)) {
    return __DARWIN_FD_CLR(n, p);
}
pub inline fn FD_ZERO(p: anytype) @TypeOf(__DARWIN_FD_ZERO(p)) {
    return __DARWIN_FD_ZERO(p);
}
pub inline fn FD_ISSET(n: anytype, p: anytype) @TypeOf(__DARWIN_FD_ISSET(n, p)) {
    return __DARWIN_FD_ISSET(n, p);
}
pub inline fn FD_COPY(f: anytype, t: anytype) @TypeOf(__DARWIN_FD_COPY(f, t)) {
    return __DARWIN_FD_COPY(f, t);
}
pub const __WORDSIZE = 64;
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    return v;
}
pub const INT8_MAX = 127;
pub const INT16_MAX = 32767;
pub const INT32_MAX = 2147483647;
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -128;
pub const INT16_MIN = -32768;
pub const INT32_MIN = -INT32_MAX - 1;
pub const INT64_MIN = -INT64_MAX - 1;
pub const UINT8_MAX = 255;
pub const UINT16_MAX = 65535;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @as(c_long, 9223372036854775807);
pub const INTPTR_MIN = -INTPTR_MAX - 1;
pub const UINTPTR_MAX = @as(c_ulong, 18446744073709551615);
pub const INTMAX_MAX = INTMAX_C(9223372036854775807);
pub const UINTMAX_MAX = UINTMAX_C(18446744073709551615);
pub const INTMAX_MIN = -INTMAX_MAX - 1;
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> 1;
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - 1;
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub inline fn __strfmonlike(fmtarg: anytype, firstvararg: anytype) @TypeOf(__attribute__(__format__(__strfmon__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__strfmon__, fmtarg, firstvararg));
}
pub inline fn __strftimelike(fmtarg: anytype) @TypeOf(__attribute__(__format__(__strftime__, fmtarg, 0))) {
    return __attribute__(__format__(__strftime__, fmtarg, 0));
}
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -0x7fffffff - 1;
pub const __DARWIN_WEOF = __darwin_wint_t - 1;
pub const _FORTIFY_SOURCE = 2;
pub const NULL = __DARWIN_NULL;
pub const RENAME_SECLUDE = 0x00000001;
pub const RENAME_SWAP = 0x00000002;
pub const RENAME_EXCL = 0x00000004;
pub const __SLBF = 0x0001;
pub const __SNBF = 0x0002;
pub const __SRD = 0x0004;
pub const __SWR = 0x0008;
pub const __SRW = 0x0010;
pub const __SEOF = 0x0020;
pub const __SERR = 0x0040;
pub const __SMBF = 0x0080;
pub const __SAPP = 0x0100;
pub const __SSTR = 0x0200;
pub const __SOPT = 0x0400;
pub const __SNPT = 0x0800;
pub const __SOFF = 0x1000;
pub const __SMOD = 0x2000;
pub const __SALC = 0x4000;
pub const __SIGN = 0x8000;
pub const _IOFBF = 0;
pub const _IOLBF = 1;
pub const _IONBF = 2;
pub const BUFSIZ = 1024;
pub const EOF = -1;
pub const FOPEN_MAX = 20;
pub const FILENAME_MAX = 1024;
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = 1024;
pub const TMP_MAX = 308915776;
pub const SEEK_SET = 0;
pub const SEEK_CUR = 1;
pub const SEEK_END = 2;
pub const stdin = __stdinp;
pub const stdout = __stdoutp;
pub const stderr = __stderrp;
pub const L_ctermid = 1024;
pub inline fn __swift_unavailable_on(osx_msg: anytype, ios_msg: anytype) @TypeOf(__swift_unavailable(osx_msg)) {
    return __swift_unavailable(osx_msg);
}
pub inline fn __sfeof(p: anytype) @TypeOf(((p.*._flags) & __SEOF) != 0) {
    return ((p.*._flags) & __SEOF) != 0;
}
pub inline fn __sferror(p: anytype) @TypeOf(((p.*._flags) & __SERR) != 0) {
    return ((p.*._flags) & __SERR) != 0;
}
pub inline fn __sfileno(p: anytype) @TypeOf(p.*._file) {
    return p.*._file;
}
pub inline fn fropen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @"fn", 0, 0, 0)) {
    return funopen(cookie, @"fn", 0, 0, 0);
}
pub inline fn fwopen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, 0, @"fn", 0, 0)) {
    return funopen(cookie, 0, @"fn", 0, 0);
}
pub inline fn feof_unlocked(p: anytype) @TypeOf(__sfeof(p)) {
    return __sfeof(p);
}
pub inline fn ferror_unlocked(p: anytype) @TypeOf(__sferror(p)) {
    return __sferror(p);
}
pub inline fn clearerr_unlocked(p: anytype) @TypeOf(__sclearerr(p)) {
    return __sclearerr(p);
}
pub inline fn fileno_unlocked(p: anytype) @TypeOf(__sfileno(p)) {
    return __sfileno(p);
}
pub const _USE_FORTIFY_LEVEL = 2;
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin_object_size(object, 0)) {
    return __builtin_object_size(object, 0);
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > 1) 1 else 0)) {
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > 1) 1 else 0);
}
pub const REDISMODULE_EXPERIMENTAL_API = 1;
pub const REDISMODULE_OK = 0;
pub const REDISMODULE_ERR = 1;
pub const REDISMODULE_APIVER_1 = 1;
pub const REDISMODULE_TYPE_METHOD_VERSION = 3;
pub const REDISMODULE_READ = 1 << 0;
pub const REDISMODULE_WRITE = 1 << 1;
pub const REDISMODULE_OPEN_KEY_NOTOUCH = 1 << 16;
pub const REDISMODULE_LIST_HEAD = 0;
pub const REDISMODULE_LIST_TAIL = 1;
pub const REDISMODULE_KEYTYPE_EMPTY = 0;
pub const REDISMODULE_KEYTYPE_STRING = 1;
pub const REDISMODULE_KEYTYPE_LIST = 2;
pub const REDISMODULE_KEYTYPE_HASH = 3;
pub const REDISMODULE_KEYTYPE_SET = 4;
pub const REDISMODULE_KEYTYPE_ZSET = 5;
pub const REDISMODULE_KEYTYPE_MODULE = 6;
pub const REDISMODULE_KEYTYPE_STREAM = 7;
pub const REDISMODULE_REPLY_UNKNOWN = -1;
pub const REDISMODULE_REPLY_STRING = 0;
pub const REDISMODULE_REPLY_ERROR = 1;
pub const REDISMODULE_REPLY_INTEGER = 2;
pub const REDISMODULE_REPLY_ARRAY = 3;
pub const REDISMODULE_REPLY_NULL = 4;
pub const REDISMODULE_POSTPONED_ARRAY_LEN = -1;
pub const REDISMODULE_NO_EXPIRE = -1;
pub const REDISMODULE_ZADD_XX = 1 << 0;
pub const REDISMODULE_ZADD_NX = 1 << 1;
pub const REDISMODULE_ZADD_ADDED = 1 << 2;
pub const REDISMODULE_ZADD_UPDATED = 1 << 3;
pub const REDISMODULE_ZADD_NOP = 1 << 4;
pub const REDISMODULE_ZADD_GT = 1 << 5;
pub const REDISMODULE_ZADD_LT = 1 << 6;
pub const REDISMODULE_HASH_NONE = 0;
pub const REDISMODULE_HASH_NX = 1 << 0;
pub const REDISMODULE_HASH_XX = 1 << 1;
pub const REDISMODULE_HASH_CFIELDS = 1 << 2;
pub const REDISMODULE_HASH_EXISTS = 1 << 3;
pub const REDISMODULE_CTX_FLAGS_LUA = 1 << 0;
pub const REDISMODULE_CTX_FLAGS_MULTI = 1 << 1;
pub const REDISMODULE_CTX_FLAGS_MASTER = 1 << 2;
pub const REDISMODULE_CTX_FLAGS_SLAVE = 1 << 3;
pub const REDISMODULE_CTX_FLAGS_READONLY = 1 << 4;
pub const REDISMODULE_CTX_FLAGS_CLUSTER = 1 << 5;
pub const REDISMODULE_CTX_FLAGS_AOF = 1 << 6;
pub const REDISMODULE_CTX_FLAGS_RDB = 1 << 7;
pub const REDISMODULE_CTX_FLAGS_MAXMEMORY = 1 << 8;
pub const REDISMODULE_CTX_FLAGS_EVICT = 1 << 9;
pub const REDISMODULE_CTX_FLAGS_OOM = 1 << 10;
pub const REDISMODULE_CTX_FLAGS_OOM_WARNING = 1 << 11;
pub const REDISMODULE_CTX_FLAGS_REPLICATED = 1 << 12;
pub const REDISMODULE_CTX_FLAGS_LOADING = 1 << 13;
pub const REDISMODULE_CTX_FLAGS_REPLICA_IS_STALE = 1 << 14;
pub const REDISMODULE_CTX_FLAGS_REPLICA_IS_CONNECTING = 1 << 15;
pub const REDISMODULE_CTX_FLAGS_REPLICA_IS_TRANSFERRING = 1 << 16;
pub const REDISMODULE_CTX_FLAGS_REPLICA_IS_ONLINE = 1 << 17;
pub const REDISMODULE_CTX_FLAGS_ACTIVE_CHILD = 1 << 18;
pub const REDISMODULE_CTX_FLAGS_MULTI_DIRTY = 1 << 19;
pub const REDISMODULE_CTX_FLAGS_IS_CHILD = 1 << 20;
pub const REDISMODULE_CTX_FLAGS_DENY_BLOCKING = 1 << 21;
pub const _REDISMODULE_CTX_FLAGS_NEXT = 1 << 22;
pub const REDISMODULE_NOTIFY_KEYSPACE = 1 << 0;
pub const REDISMODULE_NOTIFY_KEYEVENT = 1 << 1;
pub const REDISMODULE_NOTIFY_GENERIC = 1 << 2;
pub const REDISMODULE_NOTIFY_STRING = 1 << 3;
pub const REDISMODULE_NOTIFY_LIST = 1 << 4;
pub const REDISMODULE_NOTIFY_SET = 1 << 5;
pub const REDISMODULE_NOTIFY_HASH = 1 << 6;
pub const REDISMODULE_NOTIFY_ZSET = 1 << 7;
pub const REDISMODULE_NOTIFY_EXPIRED = 1 << 8;
pub const REDISMODULE_NOTIFY_EVICTED = 1 << 9;
pub const REDISMODULE_NOTIFY_STREAM = 1 << 10;
pub const REDISMODULE_NOTIFY_KEY_MISS = 1 << 11;
pub const REDISMODULE_NOTIFY_LOADED = 1 << 12;
pub const _REDISMODULE_NOTIFY_NEXT = 1 << 13;
pub const REDISMODULE_NOTIFY_ALL = (((((((REDISMODULE_NOTIFY_GENERIC | REDISMODULE_NOTIFY_STRING) | REDISMODULE_NOTIFY_LIST) | REDISMODULE_NOTIFY_SET) | REDISMODULE_NOTIFY_HASH) | REDISMODULE_NOTIFY_ZSET) | REDISMODULE_NOTIFY_EXPIRED) | REDISMODULE_NOTIFY_EVICTED) | REDISMODULE_NOTIFY_STREAM;
pub const REDISMODULE_ERRORMSG_WRONGTYPE = "WRONGTYPE Operation against a key holding the wrong kind of value";
pub const REDISMODULE_POSITIVE_INFINITE = 1.0 / 0.0;
pub const REDISMODULE_NEGATIVE_INFINITE = -1.0 / 0.0;
pub const REDISMODULE_NODE_ID_LEN = 40;
pub const REDISMODULE_NODE_MYSELF = 1 << 0;
pub const REDISMODULE_NODE_MASTER = 1 << 1;
pub const REDISMODULE_NODE_SLAVE = 1 << 2;
pub const REDISMODULE_NODE_PFAIL = 1 << 3;
pub const REDISMODULE_NODE_FAIL = 1 << 4;
pub const REDISMODULE_NODE_NOFAILOVER = 1 << 5;
pub const REDISMODULE_CLUSTER_FLAG_NONE = 0;
pub const REDISMODULE_CLUSTER_FLAG_NO_FAILOVER = 1 << 1;
pub const REDISMODULE_CLUSTER_FLAG_NO_REDIRECTION = 1 << 2;
pub inline fn REDISMODULE_NOT_USED(V: anytype) @TypeOf((@import("std").meta.cast(c_void, V))) {
    return (@import("std").meta.cast(c_void, V));
}
pub const REDISMODULE_AUX_BEFORE_RDB = 1 << 0;
pub const REDISMODULE_AUX_AFTER_RDB = 1 << 1;
pub const REDISMODULE_CMDFILTER_NOSELF = 1 << 0;
pub const REDISMODULE_OPTIONS_HANDLE_IO_ERRORS = 1 << 0;
pub const REDISMODULE_OPTION_NO_IMPLICIT_SIGNAL_MODIFIED = 1 << 1;
pub const REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED = 0;
pub const REDISMODULE_EVENT_PERSISTENCE = 1;
pub const REDISMODULE_EVENT_FLUSHDB = 2;
pub const REDISMODULE_EVENT_LOADING = 3;
pub const REDISMODULE_EVENT_CLIENT_CHANGE = 4;
pub const REDISMODULE_EVENT_SHUTDOWN = 5;
pub const REDISMODULE_EVENT_REPLICA_CHANGE = 6;
pub const REDISMODULE_EVENT_MASTER_LINK_CHANGE = 7;
pub const REDISMODULE_EVENT_CRON_LOOP = 8;
pub const REDISMODULE_EVENT_MODULE_CHANGE = 9;
pub const REDISMODULE_EVENT_LOADING_PROGRESS = 10;
pub const REDISMODULE_EVENT_SWAPDB = 11;
pub const REDISMODULE_EVENT_REPL_BACKUP = 12;
pub const _REDISMODULE_EVENT_NEXT = 13;
pub const REDISMODULE_SUBEVENT_PERSISTENCE_RDB_START = 0;
pub const REDISMODULE_SUBEVENT_PERSISTENCE_AOF_START = 1;
pub const REDISMODULE_SUBEVENT_PERSISTENCE_SYNC_RDB_START = 2;
pub const REDISMODULE_SUBEVENT_PERSISTENCE_ENDED = 3;
pub const REDISMODULE_SUBEVENT_PERSISTENCE_FAILED = 4;
pub const _REDISMODULE_SUBEVENT_PERSISTENCE_NEXT = 5;
pub const REDISMODULE_SUBEVENT_LOADING_RDB_START = 0;
pub const REDISMODULE_SUBEVENT_LOADING_AOF_START = 1;
pub const REDISMODULE_SUBEVENT_LOADING_REPL_START = 2;
pub const REDISMODULE_SUBEVENT_LOADING_ENDED = 3;
pub const REDISMODULE_SUBEVENT_LOADING_FAILED = 4;
pub const _REDISMODULE_SUBEVENT_LOADING_NEXT = 5;
pub const REDISMODULE_SUBEVENT_CLIENT_CHANGE_CONNECTED = 0;
pub const REDISMODULE_SUBEVENT_CLIENT_CHANGE_DISCONNECTED = 1;
pub const _REDISMODULE_SUBEVENT_CLIENT_CHANGE_NEXT = 2;
pub const REDISMODULE_SUBEVENT_MASTER_LINK_UP = 0;
pub const REDISMODULE_SUBEVENT_MASTER_LINK_DOWN = 1;
pub const _REDISMODULE_SUBEVENT_MASTER_NEXT = 2;
pub const REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE = 0;
pub const REDISMODULE_SUBEVENT_REPLICA_CHANGE_OFFLINE = 1;
pub const _REDISMODULE_SUBEVENT_REPLICA_CHANGE_NEXT = 2;
pub const REDISMODULE_EVENT_REPLROLECHANGED_NOW_MASTER = 0;
pub const REDISMODULE_EVENT_REPLROLECHANGED_NOW_REPLICA = 1;
pub const _REDISMODULE_EVENT_REPLROLECHANGED_NEXT = 2;
pub const REDISMODULE_SUBEVENT_FLUSHDB_START = 0;
pub const REDISMODULE_SUBEVENT_FLUSHDB_END = 1;
pub const _REDISMODULE_SUBEVENT_FLUSHDB_NEXT = 2;
pub const REDISMODULE_SUBEVENT_MODULE_LOADED = 0;
pub const REDISMODULE_SUBEVENT_MODULE_UNLOADED = 1;
pub const _REDISMODULE_SUBEVENT_MODULE_NEXT = 2;
pub const REDISMODULE_SUBEVENT_LOADING_PROGRESS_RDB = 0;
pub const REDISMODULE_SUBEVENT_LOADING_PROGRESS_AOF = 1;
pub const _REDISMODULE_SUBEVENT_LOADING_PROGRESS_NEXT = 2;
pub const REDISMODULE_SUBEVENT_REPL_BACKUP_CREATE = 0;
pub const REDISMODULE_SUBEVENT_REPL_BACKUP_RESTORE = 1;
pub const REDISMODULE_SUBEVENT_REPL_BACKUP_DISCARD = 2;
pub const _REDISMODULE_SUBEVENT_REPL_BACKUP_NEXT = 3;
pub const _REDISMODULE_SUBEVENT_SHUTDOWN_NEXT = 0;
pub const _REDISMODULE_SUBEVENT_CRON_LOOP_NEXT = 0;
pub const _REDISMODULE_SUBEVENT_SWAPDB_NEXT = 0;
pub const REDISMODULE_CLIENTINFO_FLAG_SSL = 1 << 0;
pub const REDISMODULE_CLIENTINFO_FLAG_PUBSUB = 1 << 1;
pub const REDISMODULE_CLIENTINFO_FLAG_BLOCKED = 1 << 2;
pub const REDISMODULE_CLIENTINFO_FLAG_TRACKING = 1 << 3;
pub const REDISMODULE_CLIENTINFO_FLAG_UNIXSOCKET = 1 << 4;
pub const REDISMODULE_CLIENTINFO_FLAG_MULTI = 1 << 5;
pub const REDISMODULE_CLIENTINFO_VERSION = 1;
pub const RedisModuleClientInfo = RedisModuleClientInfoV1;
pub const REDISMODULE_REPLICATIONINFO_VERSION = 1;
pub const RedisModuleReplicationInfo = RedisModuleReplicationInfoV1;
pub const REDISMODULE_FLUSHINFO_VERSION = 1;
pub const RedisModuleFlushInfo = RedisModuleFlushInfoV1;
pub const REDISMODULE_MODULE_CHANGE_VERSION = 1;
pub const RedisModuleModuleChange = RedisModuleModuleChangeV1;
pub const REDISMODULE_CRON_LOOP_VERSION = 1;
pub const RedisModuleCronLoop = RedisModuleCronLoopV1;
pub const REDISMODULE_LOADING_PROGRESS_VERSION = 1;
pub const RedisModuleLoadingProgress = RedisModuleLoadingProgressV1;
pub const REDISMODULE_SWAPDBINFO_VERSION = 1;
pub const RedisModuleSwapDbInfo = RedisModuleSwapDbInfoV1;
pub const REDISMODULE_ATTR_UNUSED = __attribute__(unused);
pub inline fn REDISMODULE_ATTR_PRINTF(idx: anytype, cnt: anytype) @TypeOf(__attribute__(format(printf, idx, cnt))) {
    return __attribute__(format(printf, idx, cnt));
}
pub const REDISMODULE_ATTR = REDISMODULE_ATTR_COMMON;
pub const REDISMODULE_EXPERIMENTAL_API_VERSION = 3;
pub inline fn RedisModule_IsAOFClient(id: anytype) @TypeOf(id == CLIENT_ID_AOF) {
    return id == CLIENT_ID_AOF;
}
pub inline fn RMAPI_FUNC_SUPPORTED(func: anytype) @TypeOf(func != NULL) {
    return func != NULL;
}
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const __va_list_tag = struct___va_list_tag;
pub const RedisModuleCronLoopInfo = struct_RedisModuleCronLoopInfo;
pub const RedisModuleLoadingProgressInfo = struct_RedisModuleLoadingProgressInfo;
