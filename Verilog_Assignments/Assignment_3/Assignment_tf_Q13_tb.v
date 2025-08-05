`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_fucntion_call_tb;
reg [2:0]l,b;
wire [5:0]perimeter;
mod_function u1(.perimeter(perimeter),.l(l),.b(b));
initial begin
l=3'b011;b=3'b001;#10;
l=3'b101;b=3'b011;#10;
l=3'b111;b=3'b100;#10;
l=3'b110;b=3'b010;#10;
$finish;
end
endmodule
