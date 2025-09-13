`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 12:15:30
// Design Name: 
// Module Name: Assignment_tf_Q4
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


module Assignment_tf_Q4(
output reg [15:0]square_out
    );
reg [7:0]a;

task square_task;
input [7:0]a;
output [15:0]square_out;
begin
square_out=a*a;
end
endtask

initial begin
a=8'd221;#10;
square_task(a,square_out);
$display("Square of %d is %d",a,square_out);
end
endmodule
