`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module bitslicing_tb;
reg [7:0]data;
wire [3:0]W,X,Y,Z;

bitslicing u1(.W(W),.X(X),.Y(Y),.Z(Z),.data(data));
initial begin
data=8'b10100010;#10;
data=8'b10000011;#10;
data=8'b10100110;#10;
data=8'b11100010;#10;

$finish;
end
endmodule
