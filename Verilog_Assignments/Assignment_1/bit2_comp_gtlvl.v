`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module bit2_comp_gtlvl(
output AGTB,ALTB,AETB,
input [1:0]A,B
    );
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
not g1(w1,A[1]);
not g2(w2,A[0]);
not g3(w3,B[1]);
not g4(w4,B[0]);
//A>B
and g5(w5,A[1],w3);
and g6(w6,A[0],w3,w4);
and g7(w7,w4,A[1],A[0]);
or g13(AGTB,w5,w6,w7);

//A=B
xnor g8(w8,A[0],B[0]);
xnor g9(w9,A[1],B[1]);
and g14(AETB,w8,w9);

//A<B
and g10(w10,B[1],w1);
and g11(w11,w1,w2,B[0]);
and g12(w12,w2,B[1],B[0]);
or g15(ALTB,w10,w11,w12);
endmodule
