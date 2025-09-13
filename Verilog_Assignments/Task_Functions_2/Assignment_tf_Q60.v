`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 10:34:09
// Design Name: 
// Module Name: Assignment_tf_Q60
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


module mod_error_flag(
output reg [3:0]r_data,
//output error,
input [3:0]w_data,
input wen,
input [3:0]addr
    );
 
 reg [3:0]mem[0:7];
 always@(*)begin
 if(wen)
    mem[addr]=w_data;
 else
 r_data=mem[addr];
 end
endmodule
