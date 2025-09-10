`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 14:53:42
// Design Name: 
// Module Name: mod_dff
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


module mod_dff(
output reg q,
input d,
input clk,
input reset
    );
  always@(posedge clk or posedge reset)begin
  if(reset)
  q<=0;
  else
  q<=d;
  end
endmodule
