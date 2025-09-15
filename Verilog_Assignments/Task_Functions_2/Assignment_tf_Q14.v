`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2025 15:44:37
// Design Name: 
// Module Name: Assignment_tf_Q14
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


module Assignment_tf_Q14();
reg clk;
task toggle_clk;
//reg clock;
integer i;
begin
//clock=1'b0;
for(i=0;i<10;i=i+1)begin
clk=~clk;#5;
$display("Toggling clock at %0d is %b",$time,clk);
end
end
endtask
initial begin
clk=1'b0;
toggle_clk;
#60;
$finish;
end
endmodule
