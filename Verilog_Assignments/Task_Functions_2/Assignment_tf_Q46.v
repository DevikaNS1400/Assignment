`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 11:58:17
// Design Name: 
// Module Name: mod_sim
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


module mod_sim();
reg a,b;
wire z;
assign z=a&b;

initial begin
a=0;b=1;#8;
a=1;b=1;#7;
#5$stop;
a=1;b=0;#10;
a=0;b=0;#10;
$finish;
end
endmodule
