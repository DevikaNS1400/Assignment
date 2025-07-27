`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mux2_1_buftri_tb;
reg A,B,S;
wire Y;
mux_2_1_tri u1(.Y(Y),.S(S),.A(A),.B(B));
initial begin
$dumpfile("mux2_1_buftri_tb.vcd");
$dumpvars(1);
end
initial begin
S=0;A=1;B=0;#10;
S=1;A=0;B=1;#10;
S=0;A=0;B=1;#10;
S=1;A=1;B=0;#10;
$finish;
end
endmodule
