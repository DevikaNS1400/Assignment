`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 17:25:16
// Design Name: 
// Module Name: mod_strobe
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


module mod_strobe(
output reg q
);
reg clk,d;
always@(posedge clk)begin
q<=d;
$strobe("Time=%0d,d=%b,q=%b",$time,d,q);
end
always #5 clk=~clk;
initial begin
clk=0;d=0;#10;
d=1;#10;
$finish;
end
endmodule
