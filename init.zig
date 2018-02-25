const std = @import("std");
const os = std.os;
const warn = std.debug.warn;

pub fn main() void {
    var bytes: [20]u8 = undefined;
    os.getRandomBytes(bytes[0..]) catch |err| { };

    var i:u8 = 0;
    while (i < bytes.len) : (i += 4) {
        warn("{}\n",
            u64(bytes[i]) << 24 | u64(bytes[i + 1]) << 16 | u64(bytes[i + 2]) << 8 | u64(bytes[i + 3])
        );
    }
}
