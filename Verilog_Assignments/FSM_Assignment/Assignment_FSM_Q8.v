`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 18:53:30
// Design Name: 
// Module Name: mod_111_detect
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


module mod_111_detect(
output reg y,
input x,clk,rst
    );
parameter [1:0]s0=2'b00,s1=2'b01,s2=2'b10;
reg [1:0] state,nx_state;
//reg x_r;
always@(posedge clk)begin
if(rst)begin
state<=s0;
//x_r<=0;
//y=1'b0;
end
else begin
state<=nx_state;
//x_r<=x;
end
end
always@(*)begin
nx_state=state;
y=1'b0;
case(state)
2'b00:begin
      nx_state=x?s1:s0;
      end
2'b01:begin
     if(x)begin
      nx_state=s2;
      y=1'b0;
     end
     else
     nx_state=s0;
     end
2'b10:begin
     if(x)begin
      nx_state=s2;
      y=1'b1;
      end
     else
     nx_state=s0;
     end
default:nx_state=s0;
endcase
end
endmodule
