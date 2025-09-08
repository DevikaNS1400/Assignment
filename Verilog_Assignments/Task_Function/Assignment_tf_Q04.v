`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_even_odd();
reg [19:0]n;
function [19:0] evenodd;
input [19:0]n;
integer i;
begin
for(i=0;i<20;i=i+1)begin
n[i]=$random;
if(n[i]%2==0)
$display("Number%d %d is even",i,n[i]);
else
$display("Number%d %d is odd",i,n[i]);
end
end
endfunction
initial begin

endmodule
