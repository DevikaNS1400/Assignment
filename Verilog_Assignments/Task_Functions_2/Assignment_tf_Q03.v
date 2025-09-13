`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 11:59:48
// Design Name: 
// Module Name: Assignment_tf_Q03
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

module Assignment_tf_Q03(
output reg[3:0] x,y
    );
reg [3:0]a,b;
task and_or_oprn;
output [3:0]x,y;
input [3:0]a,b;
begin
x=a&b;
y=a|b;
end
endtask

initial begin
a=4'b0110;b=4'b1010;#10;
and_or_oprn(x,y,a,b);
$display("Output of AND operation of %b and %b is %b",a,b,x);
$display("Output of OR operation of %b and %b is %b",a,b,y);
end
endmodule
