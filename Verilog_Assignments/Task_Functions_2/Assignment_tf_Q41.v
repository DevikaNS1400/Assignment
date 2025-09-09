`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 10:49:06
// Design Name: 
// Module Name: mod_sum
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


module mod_sum();
reg [4:0]sum;
reg [4:0]a,b;
initial begin
a=5'b00100;
b=5'b01100;
sum=a+b;
$display("Reg a=%b\n",a);
$display("Reg b=%b\n",b);
$display("Sum=%b\n",sum);
#10;

a=5'b00101;
b=5'b00110;
sum=a+b;
$display("Reg a=%b\n",a);
$display("Reg b=%b\n",b);
$display("Sum=%b\n",sum);
#10;
end

//sum=a+b;
endmodule
