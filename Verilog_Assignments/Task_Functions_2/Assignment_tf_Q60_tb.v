`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 10:44:54
// Design Name: 
// Module Name: mod_error_flag_tb
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


module mod_error_flag_tb();
wire [3:0]r_data;
reg [3:0]w_data,addr;
reg wen;
reg error;
mod_error_flag u1(.r_data(r_data),.w_data(w_data),.addr(addr),.wen(wen));
reg [3:0]expt_mem[0:7];
integer i;
initial begin
wen=1;
for(i=0;i<8;i=i+1)begin
addr=i;
w_data=i*2;
expt_mem[i]=i*2;#10;
end
wen=0;
for(i=0;i<8;i=i+1)begin
addr=i;#10;
if(r_data!=expt_mem[i])
   error=1;
else 
  error=0;
end   
end
endmodule
