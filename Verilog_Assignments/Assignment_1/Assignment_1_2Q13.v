`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module RCA_gtlvl(
output [3:0]S,
output c_out,
input [3:0]a,
input [3:0]b,
input Cin
);
wire c1,c2,c3;
FA_gtlvl u1(S[0],c1,a[0],b[0],Cin);
FA_gtlvl u2(S[1],c2,a[1],b[1],c1);
FA_gtlvl u3(S[2],c3,a[2],b[2],c2);
FA_gtlvl u4(S[3],c_out,a[3],b[3],c3);

endmodule

module FA_gtlvl(
output S,
output c_out,
input A,
input B,
input C
);
wire w1,w2,w3;
xor g1(w1,A,B);
xor g2(S,w1,C);
and g3(w2,A,B);
and g4(w3,B,C);
and g5(w4,C,A);
or g6(c_out,w2,w3,w4);
endmodule

