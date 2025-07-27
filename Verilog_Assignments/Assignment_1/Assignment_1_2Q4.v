`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mux_8_1(output Y,
input I0,I1,I2,I3,I4,I5,I6,I7,
input [2:0]S );
wire w1,w2,w3;
assign w3=1'b0;
mux4_1 u1(w1,S[1:0],I0,I1,I2,I3);
mux4_1 u2(w2,S[1:0],I4,I5,I6,I7);
mux4_1 u3(Y,{1'b0,S[2]},w1,w2,w3,w3);
endmodule
module mux4_1(
output Y,
input [1:0]S,
input A0,
input A1,
input A2,
input A3);
wire w1,w2,w3,w4,w5,w6;
not g1(w1,S[0]);
not g2(w2,S[1]);
and g3(w3,w1,w2,A0);     //S1'S0'A0
and g4(w4,w2,S[0],A1);   //S1'S0A1
and g5(w5,S[1],w1,A2);   //S1S0'A2
and g6(w6,S[1],S[0],A3); //S1S0A3
or g7(Y,w3,w4,w5,w6);
endmodule 