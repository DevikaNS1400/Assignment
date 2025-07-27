`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module NAND_SWLVL_tb;
reg A,B;
wire Y_nand;
NAND_SWLVL u1(.Y_nand(Y_nand),.A(A),.B(B));
initial begin
$dumpfile("NAND_SWLVL_tb.vcd");
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