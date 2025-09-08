`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 16:52:49
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
reg [2:0]I0,I1,I2,I3,I4,I5,I6,I7;
reg S2,S1,S0;
wire [2:0] Y;
mod_mux u4(.Y(Y),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7),.S2(S2),.S1(S1),.S0(S0));
initial 
begin

S2=0;S1=0;S0=0;I0=3'd7;I1=3'd6;I2=3'd5;I3=3'd4;I4=3'd3;I5=3'd2;I6=3'd1;I7=3'd0;#10;
S2=0;S1=0;S0=1;#10;
S2=0;S1=1;S0=0;#10;
S2=0;S1=1;S0=1;#10;
S2=1;S1=0;S0=0;#10;
S2=1;S1=0;S0=1;#10;
S2=1;S1=1;S0=0;#10;
S2=1;S1=1;S0=1;#10;
$finish;
end
endmodule
