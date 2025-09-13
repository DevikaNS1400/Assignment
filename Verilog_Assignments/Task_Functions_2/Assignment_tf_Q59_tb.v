`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 10:16:48
// Design Name: 
// Module Name: Assignment_tf_Q59_tb
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


module looping_arrays_tb();
wire [7:0]r_data;
reg [7:0]w_data;
reg [2:0]addr;
reg wen;

looping_arrays u1(.r_data(r_data),.w_data(w_data),.addr(addr),.wen(wen));
integer i;
initial begin
wen=1;
for(i=0;i<8;i=i+1)begin
addr=i;
w_data=i*3;#10;
end
wen=0;
for(i=0;i<8;i=i+1)begin
addr=i;#10;
end
$finish;
end
endmodule
