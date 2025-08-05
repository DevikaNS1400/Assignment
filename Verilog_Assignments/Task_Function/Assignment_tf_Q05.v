`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_2function(
output reg [5:0]m,d,
input [2:0]a,b
    );
//multiply
function [5:0]multiply;
input [2:0]a,b;
multiply=a*b;
endfunction
//divide
function [5:0]division;
input [2:0]a,b;
if(a!=3'b00 && b!=3'b00)begin
   if(a>=b)
     division=a/b;
   else 
     division=b/a;
 end
 else
     division=6'bxxx;  
endfunction
always@(*)begin
m=multiply(a,b);
d=division(a,b);
end
endmodule
