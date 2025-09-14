`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2025 17:37:59
// Design Name: 
// Module Name: Assignment_tf_Q13
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


module Assignment_tf_Q13();
reg [7:0]arr[0:7];
real avg;
integer i;

task average(
output real avg);
integer i;
integer sum;
begin
sum=0;
for(i=0;i<8;i=i+1)begin
arr[i]=i*2;#5;
sum=arr[i]+sum;#10;
end
avg=sum/8.0;
end
endtask

initial begin
average(avg);
$display("Average of the array is:%0f",avg);
end

endmodule
