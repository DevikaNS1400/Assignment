`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 14:14:10
// Design Name: 
// Module Name: Assignment_tf_Q08
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


module Assignment_tf_Q08(
output reg[7:0]x_rev
    );
reg [7:0]x;

task input_rev;
input [7:0]x;
output [7:0]x_rev;
integer i;
begin
for(i=0;i<8;i=i+1)
x_rev[7-i]=x[i];
end
endtask

initial begin
x=8'b11001010;#10;
input_rev(x,x_rev);
$display("The reversed form of %b is %b",x,x_rev);
#20;
end
endmodule
