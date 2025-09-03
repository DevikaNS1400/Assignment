`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2025 10:29:28
// Design Name: 
// Module Name: jk_fsm_tb
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


module jk_fsm_tb();
wire out;
reg clk,reset,j,k;

jk_fsm u1(.out(out),.clk(clk),.reset(reset),.j(j),.k(k));

always #5 clk=~clk;
initial begin
clk=0;reset=1;
#10;
reset=0;
j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
$finish;
end

endmodule
