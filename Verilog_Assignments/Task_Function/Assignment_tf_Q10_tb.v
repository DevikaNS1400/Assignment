`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_sum_tb;
reg [2:0]a,b;
wire [5:0]s,d,p,q;
arithmetic_oprn u1(.s(s),.d(d),.p(p),.q(q),.a(a),.b(b));
//arithmetic_oprn u1(.s(s),.a(a),.b(b));
initial begin
a=3'b011;b=3'b101;#10;
a=3'b111;b=3'b010;#10;
a=3'b000;b=3'b100;#10;
a=3'b110;b=3'b011;#10;
$finish;
end
endmodule
