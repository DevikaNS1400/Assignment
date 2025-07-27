`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module cmos_d1_tb;
reg A,B;
wire OUT;
cmos_design1 u1(.OUT(OUT),.A(A),.B(B));
initial begin
$dumpfile("cmos_d1_tb.vcd");
$dumpvars(1);
end
initial
begin
A=0;B=0;#10;
A=0;B=1;#10;
A=1;B=0;#10;
A=1;B=1;#10;
$finish;
end
endmodule