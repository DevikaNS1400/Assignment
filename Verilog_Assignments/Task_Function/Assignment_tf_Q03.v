`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module mod_sum_task(
output reg [3:0]y
 );
reg [2:0]a,b;

task task_sum;
input[2:0]a,b;
output [3:0]y;
begin
y=a+b;
end
endtask

initial begin
a=6;b=7;
task_sum(a,b,y);
$display("Sum of %d and %d is %d",a,b,y);#10;
$finish;
end
endmodule
