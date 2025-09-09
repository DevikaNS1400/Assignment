`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:05:02
// Design Name: 
// Module Name: mod_finish
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


module mod_finish();
reg a,b;
wire z;
assign z=a&b;

initial begin
a=0;b=1;#10;
a=1;b=1;#10;
a=1;b=0;#10;
a=0;b=0;#20;
$finish;
end
endmodule
