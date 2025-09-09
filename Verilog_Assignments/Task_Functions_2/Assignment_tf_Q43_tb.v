`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 11:36:10
// Design Name: 
// Module Name: mod_mux_tb
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


module mod_mux_tb();
reg I0,I1,I2,I3,I4,I5,I6,I7;
reg [2:0]S;
wire Y;
mod_mux u4(.Y(Y),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7),.S(S));
initial 
begin


S=$random;I0=1;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;#10;
S=$random;I0=0;I1=1;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;#10;
S=$random;I0=0;I1=0;I2=1;I3=0;I4=0;I5=0;I6=0;I7=0;#10;
S=$random;I0=0;I1=0;I2=0;I3=1;I4=0;I5=0;I6=0;I7=0;#10;
S=$random;I0=0;I1=0;I2=0;I3=0;I4=1;I5=0;I6=0;I7=0;#10;
S=$random;I0=0;I1=0;I2=0;I3=0;I4=0;I5=1;I6=0;I7=0;#10;
S=$random;I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=1;I7=0;#10;
S=$random;I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=1;#10;

$finish;
end
endmodule
