`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_twos_cmplnt_adr_tb;
reg [3:0]x,y;
reg c_in;
wire [3:0] sum;
wire c_out;
mod_twos_complnt_adr u1(.sum(sum),.c_out(c_out),.x(x),.y(y),.c_in(c_in));
initial begin
x=4'b0010;y=4'b0101;c_in=0;#10;
x=4'b1010;y=4'b0110;c_in=1;#10;
x=4'b0011;y=4'b1101;c_in=0;#10;
x=4'b1011;y=4'b1111;c_in=1;#10;
$finish;
end
endmodule
