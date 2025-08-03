`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_priority_encoder(
output reg [1:0]S,
input [3:0]I
    );
always @(*) begin
if(I[3]==1)begin
   S=2'b11;end
   else if(I[2]==1)
    S=2'b10;
     else if(I[1]==1)
      S=2'b01;
       else if(I[0]==1)
         S=2'b00;
           else 
            S=2'bxx;
end
endmodule
