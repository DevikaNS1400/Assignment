`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_fa_tb;
reg [3:0]a,b;
reg c_in;
wire [3:0]sum;
wire c_out;

mod_4_bit_fa u1(.sum(sum),.c_out(c_out),.a(a),.b(b),.c_in(c_in));
initial begin
$display("\t\t\t\tTime  |  a   |  b  | c_in|  sum  |  c_out  |");
$monitor("%d   %b   %b   %b    %b     %b  ",$time,a,b,c_in,sum,c_out);
a=4'b0010;b=4'b1010;c_in=0;#10;
a=4'b1011;b=4'b0010;c_in=1;#10;
a=4'b1001;b=4'b0111;c_in=1;#10;
a=4'b0100;b=4'b1110;c_in=0;#10;
$finish;
end
endmodule
