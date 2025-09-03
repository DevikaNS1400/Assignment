`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 16:25:26
// Design Name: 
// Module Name: mod_divisible_5_tb
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


module mod_divisible_5_tb();
wire y;
reg clk,rst,x;
reg [15:0] test_ip;
integer i;
mod_divisible_5 u1(.y(y),.x(x),.clk(clk),.rst(rst));
always #5 clk=~clk;
initial begin
clk=0;rst=1;
test_ip=16'b0011101111000111;
#10;rst=0;
for(i=0;i<16;i=i+1)begin
x=test_ip[i];#10;
end
$finish;
end
endmodule
