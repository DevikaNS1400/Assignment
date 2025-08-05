`timescale 1ns / 1ps
module mod_task_ft_tb;
wire [5:0]ps,pr;
reg [2:0]l,b,s;

mod_taskft u1(.ps(ps),.pr(pr),.l(l),.b(b),.s(s));
initial begin
l=3'b110;b=3'b101;s=3'b111;#10;
l=3'b100;b=3'b010;s=3'b011;#10;
l=3'b101;b=3'b111;s=3'b100;#10;
l=3'b111;b=3'b110;s=3'b110;#10;
$finish;
end
endmodule