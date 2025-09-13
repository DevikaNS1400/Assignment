`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 14:32:52
// Design Name: 
// Module Name: Assignment_tf_Q09_tb
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


module Assignment_tf_Q09_tb;
wire [5:0]ps;
reg [2:0]s;

Assignment_tf_Q09 u1(.ps(ps),.s(s));
initial begin
s=3'b111;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b110;#10;
$finish;
end
endmodule
