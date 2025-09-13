`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 11:46:39
// Design Name: 
// Module Name: Assignment_tf_Q02
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


module Assignment_tf_Q02(
output reg [7:0]difference,
output reg borrow
    );
reg [7:0]a,b;
task difference_of_numbers;
input [7:0]A,B;
output [7:0]diff;
output b_out;
begin
assign {b_out,diff}=A-B;
end
endtask

initial begin
a=8'h45;b=8'h39;
end
initial begin
difference_of_numbers(a,b,difference,borrow);
$display("Difference of numbers %d and %d is %d",a,b,difference);
end
endmodule
