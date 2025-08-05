`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_taskft(
output reg [5:0]ps,pr,
input [2:0]l,b,s
    );
   
task task_sq;
input [2:0]s;
output [5:0]ps;
begin
ps=4*s;
end
endtask

function [5:0]func_rectangle;
input [2:0]l,b;
begin
func_rectangle=2*(l+b);
end
endfunction

task main_task;
input [2:0]l,b,s;
output [5:0]ps,pr;
begin
task_sq(s,ps);
pr=func_rectangle(l,b);
end
endtask
always@(*)begin
main_task(l,b,s,ps,pr);
$display("Perimeter of rectangle (%dX%d) is %d cm",l,b,pr);
$display("Perimeter of square (%dX%d) is %d cm",s,s,ps);
end
endmodule
