`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:18:17
// Design Name: 
// Module Name: mod_not_gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_not_gate_tb();
wire y;
reg x;
mod_not_gate u1(.y(y),.x(x));
initial begin
$dumpfile("Assignment_tf_Q48_tb.vcd");
$dumpvars(0,mod_not_gate_tb);
end
initial begin
$monitor("x=%b,y=%b\n",x,y);
x=0;#10;
x=1;#10;
x=0;#10;
x=1;#10;
$finish;
end
endmodule
