`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2025 19:38:13
// Design Name: 
// Module Name: Assignment_tf_Q16
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


module Assignment_tf_Q16();
integer i;
integer n;
reg [7:0]in;

task num_of_1s;
input [7:0]in;
output integer n;
begin
n=0;
for(i=0;i<8;i=i+1)begin
if(in[i]==1'b1)
n=n+1;
else
n=n;
#5;
end
end
endtask

initial begin
in=8'b10011010;#10;
num_of_1s(in,n);
$display("The number of ones in  the input %b is %0d",in,n);
end
endmodule
