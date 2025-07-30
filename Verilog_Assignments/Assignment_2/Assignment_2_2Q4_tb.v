`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_bitwise_tb;
reg [3:0]x,y;
wire [3:0]a,b,c,d,e;
mod_bitwise u1(.a(a),.b(b),.c(c),.d(d),.e(e),.x(x),.y(y));
initial begin
$display("\t\t\t\tTime |   x    |   y    |  ~x   | x&y  | x|y  | x^y  | x^~y");
$monitor(" %d    %b    %b   %b    %b   %b  %b   %b",$time, x, y, a, b, c, d, e);

x=4'b0101;y=4'b1010;#10;
x=4'b1101;y=4'b1110;#10;
x=4'b0111;y=4'b1011;#10;
x=4'b1111;y=4'b0110;#10;
$finish;
end
endmodule
