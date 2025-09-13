`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 12:36:09
// Design Name: 
// Module Name: Assignment_tf_Q05
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


module Assignment_tf_Q05(
output reg[7:0]d,s
    );
reg [7:0]a,b;

task sum_difference;
output [6:0]d,s;
input [6:0]a,b;
begin
s=a+b;
d=a-b;
end
endtask

initial begin
a=8'h34;b=8'h24;#10;
sum_difference(d,s,a,b);
$display("Sum of %d and %d is %d",a,b,s);
$display("Difference of %d and %d is %d",a,b,d);
end
endmodule
