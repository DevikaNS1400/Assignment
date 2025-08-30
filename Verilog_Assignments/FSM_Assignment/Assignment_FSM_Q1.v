`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2025 14:05:38
// Design Name: 
// Module Name: three1or0
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


module three1or0(
output reg y,
input x,
input clk,reset
    );
 reg[2:0]state,nx_state;
 parameter idle=3'b000,one1=3'b001,two1=3'b010,three1=3'b011,
           one0=3'b100,two0=3'b101,three0=3'b110;
 always@(posedge clk)begin
 if(reset)
 state<=idle;
 else
 state<=nx_state;
 end
 
 always@(*)begin
 y=0;
 case(state)
 3'b000:nx_state=x?one1:one0;
 3'b001:nx_state=x?two1:one0;
 3'b010:nx_state=x?three1:one0;     
 3'b011:begin 
        y=1'b1;       
        nx_state=x?three1:one0;  
        end
 3'b100:nx_state=x?one1:two0;  
 3'b101:nx_state=x?one1:three0;  
 3'b110:begin
        y=1'b1;
        nx_state=x?one1:three0;         
        end
 default:nx_state=idle;
 endcase
 end         
endmodule
