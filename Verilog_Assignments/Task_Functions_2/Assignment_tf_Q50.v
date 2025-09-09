`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:09:50
// Design Name: 
// Module Name: mod_write_display
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


module mod_write_display();
reg [2:0]a,b;
initial begin
a=3'b010;b=3'b101;
$display("Using $dispaly");
$display("a=%b",a);
$display("b=%b",b);
$display("\nUsing $write");
$write("a=%b",a);
$write("b=%b",b);
$finish;
end
endmodule

///////////////////////////////////////
OUTPUT
////////////////////////////////////////
////////////////////////////////////////
Using $dispaly
a=010
b=101

Using $write
a=010b=101
/////////////////////////////////////////
