`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module wand_wor_tb;
reg a,b,e1,e2;

wand_wor u1(.a(a),.b(b),.e1(e1),.e2(e2));

initial begin
//$monitor("a=%b,b=%b,e1=%b,e2=%b,wand_a=%b,wor_a=%b,tri_a=%b,triand_a=%b",a,b,e1,e2,wand_a,wor_a,tri_a,tri_and);
//$display("a=%b,b=%b,e1=%b,e2=%b,wand_a=%b,wor_a=%b,tri_a=%b,triand_a=%b",a,b,e1,e2,wand_a,wor_a,tri_a,tri_and);
a=1;b=0;e1=1;e2=0;#10;
a=1;b=0;e1=1;e2=1;#10;
a=0;b=1;e1=0;e2=1;#10;
a=0;b=1;e1=1;e2=0;#10;
a=0;b=1;e1=1;e2=1;#10;
a=1;b=1;e1=0;e2=1;#10;
a=0;b=1;e1=1;e2=0;#10;
a=1;b=1;e1=1;e2=1;#10;
$finish;
end
endmodule

