`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 22:50:51
// Design Name: 
// Module Name: mod_4_bit_adder_tb
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


module mod_4_bit_adder_tb();
wire [3:0]sum;
wire c_out;
reg [3:0]a,b;
reg cin;

mod_4_bit_adder u1(.sum(sum),.cin(cin),.a(a),.b(b),.c_out(c_out));
task inputs;
input [3:0]a_in,b_in;
input cin1;
begin
a=a_in;
b=b_in;
cin=cin1;
end
endtask
initial begin
inputs(4'b0100,4'b0110,1'b0);#10;
inputs(4'b0101,4'b1110,1'b0);#10;
inputs(4'b1001,4'b0111,1'b0);#10;
inputs(4'b0010,4'b1000,1'b0);#10;
end
endmodule
