`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 16:15:14
// Design Name: 
// Module Name: mod_divisible_5
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


module mod_divisible_5(
output reg y,
input x,clk,rst
    );
parameter[2:0] s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
reg [2:0]state,nx_state;

always@(posedge clk)begin
if(rst)
state<=s0;
else
state<=nx_state;
end

always@(*)begin
case(state) 
  s0:nx_state=x?s1:s0;
  s1:nx_state=x?s3:s2;
  s2:nx_state=x?s0:s4;
  s3:nx_state=x?s2:s1;
  s4:nx_state=x?s4:s3;
endcase
if(state==s0)
y=1'b1;
else
y=1'b0;
end
endmodule
