`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2025 14:23:41
// Design Name: 
// Module Name: three1or0_tb
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

module three1or0_tb();
wire y;
reg x;
reg clk;
reg reset;
three1or0 u1(.y(y),.x(x),.clk(clk),.reset(reset));
reg [15:0] test_ip;
integer i;
always #5 clk=~clk;
initial begin
clk=0;reset=1;
test_ip=16'b0011101111000111;
//x=0;
#10;
reset=0;#5;
for(i=0;i<16;i=i+1)begin
x=test_ip[i];#10;
end
$finish;
end
endmodule
