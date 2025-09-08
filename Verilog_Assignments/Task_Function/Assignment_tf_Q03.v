`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//////////////////////////////////////////////////////////////////////////////////
module mod_sum(
output reg [3:0]sum,
input [2:0]a,b
    );
task task_sum(input [2:0]a,input[2:0]b,output[3:0]sum);
begin
sum=a+b;
end
endtask
always @(*) begin
task_sum(a,b,sum);
$display("Sum of a=%d b=%d id sum=%d",a,b,sum);
end

endmodule
