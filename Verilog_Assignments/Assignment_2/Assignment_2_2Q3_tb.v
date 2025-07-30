`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module module_sum_tb;
reg a,b;
wire sum;
module_sum u1(.sum(sum),.a(a),.b(b));
initial begin
$monitor("Time = %0t, a = %b, b = %b, sum = %b", $time,a,b,sum);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule
