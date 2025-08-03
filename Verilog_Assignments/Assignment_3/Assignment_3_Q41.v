`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_encoder(
output reg [1:0]S,
input [3:0]I
    );
always @(*) begin
if(I==4'b0001)begin
    S=2'b00;end
    else begin
      if(I==4'b0010)begin
        S=2'b01;end
        else begin
             if(I==4'b0100)begin
             S=2'b10;end
             else begin
               if(I==4'b1000)begin
               S=2'b11;end
               else 
               S=2'bxx;end
               end
             end
    end        
endmodule
