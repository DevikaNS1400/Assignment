`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 12:56:45
// Design Name: 
// Module Name: mod_monitor
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


module mod_monitor();
reg a,b;
wire y;
assign y=a&b;
initial begin
$monitor("Time=%0d,a=%b,b=%b,y=%b",$time,a,b,y);
a=0;b=0;#10;
$monitoroff;
a=0;b=1;#10;
a=1;b=0;#10;
$monitoron;
a=1;b=1;#10;
$finish;
end
endmodule
