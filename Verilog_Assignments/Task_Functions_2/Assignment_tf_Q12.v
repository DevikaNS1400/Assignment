`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 15:29:54
// Design Name: 
// Module Name: Assignment_tf_Q12
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


module Assignment_tf_Q12();
reg [7:0]in;
reg [7:0]out;
//reg temp;
task cirlr_lfshift;
input [7:0]in;
output [7:0]out;
reg temp;
integer i;
begin
temp=in[7];
for(i=7;i>0;i=i-1)
out[i]=in[i-1];#5;
out[0]=temp;
end
endtask

initial begin
in=8'b01100101;#10;
cirlr_lfshift(in,out);
$display ("The left circular shift of %b by one bit is %b:",in,out);
end
endmodule
