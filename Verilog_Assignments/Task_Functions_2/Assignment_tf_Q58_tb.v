`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 22:20:31
// Design Name: 
// Module Name: mod_update_reg_tb
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


module mod_update_reg_tb();
wire [3:0]q;
reg [3:0]d;
reg clk;
reg reset;

mod_update_reg u1(.q(q),.d(d),.clk(clk),.reset(reset));
always #5 clk=~clk;

initial begin
clk=0;reset=1;#10;
reset=0;d=4'h7;#5;
d=4'hf;#15;
d=4'h8;#12;
d=4'hb;#10;
$finish;
end
endmodule
