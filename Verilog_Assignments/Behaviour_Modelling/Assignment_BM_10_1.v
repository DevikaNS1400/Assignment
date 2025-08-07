`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 10:33:46
// Design Name: 
// Module Name: mod_a_b
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


module mod_a_b();
reg a,b;
initial begin
a=0;b=0;
end
always@(a,b) begin
//$monitor($time,"a=%d,b=%d",a,b);
#10 a <= 1'b0;
#1 b <= 1'b1;
a <= 1;
#5 b <= a;
$display($time,"a=%d,b=%d",a,b);
end
endmodule


/////
/*
16a=1,b=1
*/
