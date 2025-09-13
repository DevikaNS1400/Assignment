`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 14:00:23
// Design Name: 
// Module Name: Assignment_tf_Q07
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


module Assignment_tf_Q07(
output reg[15:0]factorial
    );
reg [2:0]n;

task factorial_n;
input [2:0]n;
output [15:0]factorial;
integer i;
begin
factorial=1;
for(i=1;i<=n;i=i+1)
factorial=factorial*i;
end
endtask

initial begin
n=3'd5;
factorial_n(n,factorial);
$display("Factorial of %d is %d",n,factorial);
#10;
n=3'd7;
factorial_n(n,factorial);
$display("Factorial of %d is %d",n,factorial);
#10;
$finish;
end
endmodule
