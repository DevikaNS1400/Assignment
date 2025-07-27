`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module wand_wor( 
input a,b,e1,e2);

wand wand_a;
wor wor_a;
tri tri_a;
triand triand_a;

assign wand_a=a ;
assign wand_a=b;

assign wor_a=a;
assign wor_a=b;

assign tri_a=(e1)?a:1'bz;
assign tri_a=(e2)?b:1'bz;

assign triand_a =(e1)?a:1'bz;
assign triand_a =(e2)?b:1'bz;
initial begin
//$monitor("a=%b,b=%b,e1=%b,e2=%b,wand_a=%b,wor_a=%b,tri_a=%b,triand_a=%b",a,b,e1,e2,wand_a,wor_a,tri_a,triand_a);
//$display("a=%b,b=%b,e1=%b,e2=%b,wand_a=%b,wor_a=%b,tri_a=%b,triand_a=%b",a,b,e1,e2,wand_a,wor_a,tri_a,triand_a);
#100;
$finish;
end
endmodule
