`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_shift_tb;
reg [3:0]x;
wire [3:0] lt_shift_x,rt_shift_x;

mod_ltrt_shift u1(.x(x),.lt_shift_x(lt_shift_x),.rt_shift_x(rt_shift_x));

initial begin
x=5'b0110;#10;
x=5'b1110;#10;
x=5'b0011;#10;
x=5'b1111;#10;
$finish;
end
endmodule
