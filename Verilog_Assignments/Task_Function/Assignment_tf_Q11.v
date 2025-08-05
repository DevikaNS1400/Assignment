`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_f_shiftrt(
output reg [4:0]y,
input [4:0]x
    );
function [4:0]f_shift_rt(input [4:0]x);
f_shift_rt=(x>>1);
endfunction

always@(*) begin
y=f_shift_rt(x);
$display("Before shift=%b After shift=%b",x,y);
end
endmodule
