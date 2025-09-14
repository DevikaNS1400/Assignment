`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 14:58:59
// Design Name: 
// Module Name: Assignment_tf_Q10
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


module Assignment_tf_Q10(
output reg[7:0]largest
    );
reg [7:0]a,b,c,d;

task largest_f;
output [7:0]largest;
input [7:0]a,b,c,d;
begin
largest=a;
if(largest<b)
   largest=b;
if(largest<c)
   largest=c;
if(largest<d)
   largest=d;
end
endtask

initial begin
a=8'd23;b=8'd214;c=8'd120;d=8'd180;#10;
largest_f(largest,a,b,c,d);
$display("Largest of %d,%d,%d and %d is %d",a,b,c,d,largest);
end  
endmodule
