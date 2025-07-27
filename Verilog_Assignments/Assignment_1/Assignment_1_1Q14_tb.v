`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module FA_tb;
reg A,B,C;
wire S,c_out;
FA_gtlvl_1 u1(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_gtlvl
//FA_Dataflow u2(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_dataflow
//FA_using_HA u3(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_gtlvl
initial begin
$dumpfile("FA_tb.vcd");
$dumpvars(1);
end
initial
begin

A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
$finish;
end
endmodule


