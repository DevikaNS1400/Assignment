`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 11:09:57
// Design Name: 
// Module Name: mod_monitor
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


module mod_monitor();
reg clk;
reg [3:0]data;
always #5 clk=~clk;
initial begin
$monitor("Time=%0t,clk=%b,data=%d\n",$time,clk,data);
clk=0;data=4'd2;#10;
data=4'd4;#10;
data=4'd8;#10;
data=4'd12;#10;
$finish;
end
endmodule
