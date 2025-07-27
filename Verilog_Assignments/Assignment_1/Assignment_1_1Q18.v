module NAND_SWLVL(
input A,
input B,
output Y_nand
 );
 wire w1;
 supply1 Vdd;
 supply0 gnd;
 
 pmos p1(Y_nand,Vdd,A);
 pmos p2(Y_nand,Vdd,B);
 nmos n1(w1,gnd,B);
 nmos n2(Y_nand,w1,A);
 
 
endmodule