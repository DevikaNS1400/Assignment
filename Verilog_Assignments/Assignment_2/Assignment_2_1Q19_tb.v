`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module gates_using_mux_tb;
reg A,B;
wire Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor;
gates_using_mux u1(.Y_and(Y_and),.Y_or(Y_or),.Y_nand(Y_nand),.Y_nor(Y_nor),.Y_xor(Y_xor),.Y_xnor(Y_xnor)
,.A(A),.B(B));

initial begin
A=0;B=0;#10;
A=0;B=1;#10;
A=1;B=0;#10;
A=1;B=1;#10;
$finish;
end
endmodule
