`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 15:25:30
// Design Name: 
// Module Name: mod_fa_tb
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


module mod_fa_tb();
reg A,B,C;
wire S,c_out;
mod_fa u1(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));
initial 
begin
A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
$finish;
end
endmodule
