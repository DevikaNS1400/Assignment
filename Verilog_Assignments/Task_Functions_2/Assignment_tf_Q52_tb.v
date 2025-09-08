`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 15:06:44
// Design Name: 
// Module Name: mod_asyn_dff_tb
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


module mod_dff_tb();
wire q;
reg d;
reg clk;
reg reset;
mod_dff u1(.q(q),.d(d),.clk(clk),.reset(reset));
always #5 clk=~clk;
initial begin
$monitor("Time=%0t,reset=%b,q=%b,d=%b",$time,reset,q,d);
clk=0;reset=1;#10;
d=0;#5
reset=0;
d=1;#4;
reset=1;
d=0;#2;
d=1;#5;
reset=0;#10;
reset=1;d=1;
#10;
$finish;
end
endmodule
