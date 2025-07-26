`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module reg_module();
reg [3:0]a;
reg [3:0]b;
initial
begin
a=4'b0101;
b=a;
#10;
$finish;
end
endmodule

module wire_module();
wire [3:0]x,y;
assign x=3'b100;
assign y=x;
initial begin
$display("x=%b,y=%b",x,y);#10;
end
endmodule
