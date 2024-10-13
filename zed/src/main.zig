const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    var count: u8 = 1;
    while (count < 16) : (count += 1) {
        try stdout.print("({})", .{count});
        if ((count % 3 == 0) or (count % 5 == 0)) {
            if (count % 3 == 0) {
                try stdout.print("fiz ", .{});
            }
            if (count % 5 == 0) {
                try stdout.print("buzz", .{});
            }
            try stdout.print("\n", .{});
        } else {
            try stdout.print("{}\n", .{count});
        }
    }
}
