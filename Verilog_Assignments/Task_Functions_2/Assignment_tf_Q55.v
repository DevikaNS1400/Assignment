`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 22:47:49
// Design Name: 
// Module Name: mod_4_bit_adder
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

module mod_4_bit_adder(
output [3:0]sum,
output c_out,
input [3:0]a,
input [3:0]b,
input cin
    );
assign {c_out,sum}=a+b+cin;     
endmodule
