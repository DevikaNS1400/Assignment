`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 11:53:33
// Design Name: 
// Module Name: mod_multiple4
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


module mod_multiple4(
output reg z,
input x,y,
input clk,rst
    );
 parameter [1:0] s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
 reg [1:0]state,nx_state;
 
 always@(posedge clk)begin
 if(rst)
 state<=s0;
 else
 state<=nx_state;
 end
 reg [1:0]v;
 always@(*) begin
  v={x,y};
  end
 always@(*)begin
 z=1'b0;
 case(state)
 s0:begin
     z=1'b1;
     if(v==2'b00)begin     
     nx_state=s0;
     end
     else if((v==2'b10)||(v==2'b01))
     nx_state=s1;
     else
     nx_state=s2;
     end
 
 s1:begin
     if(v==2'b00)begin
     nx_state=s1;
     end
     else if((v==2'b10)||(v==2'b01))
     nx_state=s2;
     else
     nx_state=s3;
     end
     
 s2:begin
     if(v==2'b00)begin
     nx_state=s2;
     end
     else if((v==2'b10)||(v==2'b01))
     nx_state=s3;
     else
     nx_state=s0;
     end
     
 s3:begin
     if(v==2'b00)begin
     nx_state=s3;
     end
     else if((v==2'b10)||(v==2'b01))
     nx_state=s0;
     else
     nx_state=s1;
     end
 default:nx_state=s0 ; 
 endcase
 end
endmodule
