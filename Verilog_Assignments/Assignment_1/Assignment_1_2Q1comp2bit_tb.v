`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module bit2_comp_gtlvl_tb;
reg [1:0]A,B;
wire AGTB,AETB,ALTB;

bit2_comp_gtlvl u1(.AGTB(AGTB),.AETB(AETB),.ALTB(ALTB),.A(A),.B(B));
initial 
begin
A=2'b10;B=2'b11;#10;
A=4'b11;B=4'b01;#10;
A=4'b10;B=4'b10;#10;
A=4'b11;B=4'b10;#10;
$finish;
end
endmodule
