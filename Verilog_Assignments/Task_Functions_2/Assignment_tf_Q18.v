`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 16:09:13
// Design Name: 
// Module Name: Assignment_tf_Q18
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Assignment_tf_Q18(
output reg flag);
reg [7:0]a,b;

task eq_flag;
input [7:0]a,b;
output reg flag;
begin
if(a==b)begin
flag=1'b1;
$display("The arrays a=%b and b=%b are equal",a,b);
end
else begin
flag=0;
$display("The arrays a=%b and b=%b are not equal",a,b);
end
end
endtask

initial begin
a=8'b01101100;b=8'b11100110;#10;
eq_flag(a,b,flag);

a=8'b10101010;b=8'b10101010;
eq_flag(a,b,flag);
#50;
$finish;
end
endmodule
