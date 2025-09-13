`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 10:09:52
// Design Name: 
// Module Name: Assignment_tf_Q59
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


module looping_arrays(
output reg [2:0]r_data,
input [7:0]w_data,
input [2:0]addr,
input wen
);
reg [7:0]mem[0:7];
always@(*)begin
if(wen)
mem[addr]=w_data;
else
r_data=mem[addr];
end   
endmodule
