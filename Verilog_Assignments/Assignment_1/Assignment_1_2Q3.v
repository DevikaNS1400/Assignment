`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module FA_gtlvl(output S,c_out,
input A,B,C
 );
 wire s1,w1,w2;
HA_module u1(s1,w1,A,B);
HA_module u2(S,w2,s1,C);
or g(c_out,w1,w2);

endmodule

module HA_module(output s_out,c_out1,
input x,y);
xor g1(s_out,x,y);
and g2(c_out1,x,y);
endmodule
