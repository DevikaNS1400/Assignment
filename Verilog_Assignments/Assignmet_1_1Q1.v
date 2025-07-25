`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 15:44:26
// Design Name: 
// Module Name: Assignmet_1_1Q1_netwire
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


module netwire();
 wire [2:0] net1,net2;
 assign net1=3'b100;
 assign net2=net1;
 initial begin
 $display("net1=%b,net2=%b",net1,net2);#10;
 end
endmodule
