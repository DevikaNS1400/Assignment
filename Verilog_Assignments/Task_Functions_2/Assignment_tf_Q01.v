`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 11:25:22
// Design Name: 
// Module Name: Assignment_tf_Q01
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


module Assignment_tf_Q01(
output reg [7:0]sum,
output reg cout
    );
reg [7:0]a,b;
task sum_of_numbers;
input [7:0]A,B;
output [7:0]SUM;
output c_out;
begin
assign {c_out,SUM}=A+B;
end
endtask

initial begin
a=8'h23;b=8'h45;
end
initial begin
sum_of_numbers(a,b,sum,cout);
$display("Sum of numbers %d and %d is %d",a,b,sum);
end

endmodule
