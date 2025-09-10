`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 22:16:22
// Design Name: 
// Module Name: mod_update_reg
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


module mod_update_reg(
output reg [3:0]q,
input [3:0]d,
input clk,
input reset
    );
always@(posedge clk)begin
if(reset)
q<=4'b0;
else
q<=d;
end
    
endmodule
