`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 14:34:27
// Design Name: 
// Module Name: not_gate_tb
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


module not_gate_tb();
wire y;
reg x;
not_gate u1(.y(y),.x(x));
initial begin
$monitor("x=%b,y=%b\n",x,y);
x=0;#10;
x=1;#10;
x=0;#5;
x=1;#10;
$finish;
end
endmodule
