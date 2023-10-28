                const s = @import("std");
             const c = s.math.cos;const q =
         s.math.sin; const o = s.io.getStdOut()
       .writer();pub fn main() !void { var A: f32
     = 0; var B: f32 = 0; var i: f32 = 0; var j: f32 
   = 0; var z: [1760]f32 = undefined;  var b: [1760]u8
  = undefined; try o.print("\x1b[2J",.{}) ; while (true)
 { @memset(&b, 32); @memset(&z, 0); j = 0; while (j<6.28)
 :(j+=0.03){i = 0;while(i    < 6.28):(i+=0.01){var m = 1 /
(q(i)*(c(j)+2) * q(A )                + q(j)*c(A)+5);var t = 
q(i)*(c(j)+2) * c(A)                   - q(j)*q(A);var x:u32=
@intFromFloat(  40                      + 30*m*(c(i)*(c(j)+2) 
* c(B)-t*q(B)));var                      y:u32=@intFromFloat(
12+15 * m*(c(i)*(                        c(j)+2)*q(B)+t*c(B)));
var p:u32=@as(u32,                       x+80*y) ; var N: i32 = 
@intFromFloat( 8*(                      (q(j)*q(A)-q(i)*c(j) *
c(A))*c(B) - q(i) *                  c(j)*q(A) - q(j)*c(A) -
c(i)*c(j)*q(B))); if               (22 > y and y > 0 and x //
 > 0 and 80 > x and m > z[p]){z[p] = m;var index: usize = if 
 (N > 0) @intCast(N) else 0;b[p] = ".,-~:;=!*#$@"[index];
  }}}try o.print("\x1b[d\n",.{});for(b, 0..b.len)|char //
   , k|{var print_char: []const u8 = if(@mod(k,80)==0)//
    &[_]u8{'\n'} else &[_]u8{char};_ = try o.write( //
       print_char);}try o.print("\n", .{});A += // 
         0.04;B += 0.02;}}// using zig 0.12.0-dev
             // donut.zig written by KaceyXam
                // github.com/KaceyXam //