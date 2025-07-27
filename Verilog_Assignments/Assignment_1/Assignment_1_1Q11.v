`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module busmodify;
reg [3:0]bus,busA;
integer i;
initial begin
bus=4'b0110;
for(i=0;i<4;i=i+1)
begin
busA[i]=bus[i];
end
$display("After assignment busA=%b",busA);#10;
bus=4'b1010;
busA=bus[3:0];
$display("After assignment busA=%b",busA);
end
endmodule
