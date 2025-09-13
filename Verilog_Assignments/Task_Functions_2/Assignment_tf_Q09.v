`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 14:30:04
// Design Name: 
// Module Name: Assignment_tf_Q09
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


module Assignment_tf_Q09(
output reg [5:0]ps,
input [2:0]s
    );
   
task task_sq;
input [2:0]s;
output [5:0]ps;
begin
ps=4*s;
end
endtask

task main_task;
input [2:0]s;
output [5:0]ps;
begin
task_sq(s,ps);
end
endtask

always@(*)begin
main_task(s,ps);
$display("Perimeter of square (%dX%d) is %d cm",s,s,ps);
end
endmodule
