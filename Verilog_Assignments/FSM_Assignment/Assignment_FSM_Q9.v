`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 22:12:00
// Design Name: 
// Module Name: even_odd
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


module even_odd(
input clk,reset,din,
output  reg [3:0] detected
    );
  //  reg ee,oe,eo,oo;
    reg [2:0] state , next_state;
    parameter  a=3'd0,
               b=3'd1,
               c=3'd2,
               d=3'd3;
  always @ (posedge clk or posedge reset) begin
      if(reset)begin
         state<=a;
      end  else
         state<=next_state;
      end
   always @(*)begin
       next_state = state;
       detected = 0;
       case (state)
       a:begin
       detected=4'b1000;
       if(din)begin
       next_state=b;
       end
        else
       next_state=c;
       end
       b:begin
       detected=4'b0100;
       if(din)
       next_state=a;
        else
       next_state=d;
       end
       c:begin
       detected=4'b0010;
       if(din)
       next_state=d;
       else
       next_state=a;
       end
       d:begin
       detected=4'b0001;
       if(din)
       next_state=c;
       else begin
       next_state=b;
       //detected =1;
       end
       end
       endcase
       end
endmodule
