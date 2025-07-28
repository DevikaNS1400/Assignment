`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module gates_using_mux (
output Y_and,Y_or,Y_nand,Y_nor,Y_xor,Y_xnor,
input A,B
    );

assign Y_and=(A)?B:1'b0;
assign Y_or=(A)?1'b1:B;
assign Y_nand=(A)?~B:1'b1;
assign Y_nor=(A)?1'b0:(~B);
assign Y_xor=(A)?~B:B;
assign Y_xnor=(A)?B:(~B);

endmodule
