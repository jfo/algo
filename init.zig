const std = @import("std");
const os = std.os;
const warn = std.debug.warn;

pub fn main() void {
    var seed_bytes: [20]u8 = undefined;
    os.getRandomBytes(seed_bytes[0..]) catch |err| { };
    for (seed_bytes) |b| {
        warn("{}\n", b);
    }
}
