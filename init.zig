const std = @import("std");
const os = std.os;
const warn = std.debug.warn;

fn randomu64() u64 {
    var bytes: [4]u8 = undefined;
    os.getRandomBytes(bytes[0..]) catch |err| { };
    return  u64(bytes[0]) << 24 | u64(bytes[1]) << 16 | u64(bytes[2]) << 8 | u64(bytes[3]);
}

pub fn main() void {
    const numOfRandomNumbers = 100;
    var randomu64s: [numOfRandomNumbers]u64 = undefined;

    var i:u16 = 0;
    while (i < randomu64s.len) : (i += 1) {
        randomu64s[i] = randomu64();
        warn("{}\n", randomu64s[i]);
    }
}
