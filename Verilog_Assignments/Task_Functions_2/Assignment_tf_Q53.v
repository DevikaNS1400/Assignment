`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 15:23:17
// Design Name: 
// Module Name: mod_fa
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


module mod_fa(
output S,
output c_out,
input A,
input B,
input C
);
assign S=A^B^C;
assign c_out=(A&B)|(B&C)|(C&A);
endmodule
