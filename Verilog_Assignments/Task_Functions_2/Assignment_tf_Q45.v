`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 17:33:23
// Design Name: 
// Module Name: mod_time
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


module mod_time(
output reg q
);
reg clk,d;
always@(posedge clk)begin
q<=d;
$strobe("Time=%0t,Real time=%0f,d=%b,q=%b",$time,$realtime,d,q);
end
always #2.5 clk=~clk;
initial begin
clk=0;d=0;#10;
d=1;#10.5;
$finish;
end
endmodule
