`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_a_b();
reg [1:0] a,b;
reg clk;
always #5 clk=~clk;
always@(posedge clk)begin
a<=b;
$monitor("a=%b b=%b",a,b);
end
always@(posedge clk)begin
b<=a;end
initial begin
a=1;b=2;clk=0;
#40$finish;
end
endmodule

////OUTPUT//////
/*
Initially a=1 b=2
After first clock edge a=2 b=1
Afetr 2nd clock edge   a=1 b=2
Afetr 3rd clock edge   a=2 b=1
Afetr 4th clock edge   a=1 b=2
*/