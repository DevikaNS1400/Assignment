`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2025 13:00:06
// Design Name: 
// Module Name: Assignment_tf_Q06
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


module Assignment_tf_Q06();
reg clk;

 task toggle_signal;
 inout reg sig;
 input integer i;
 integer j;
 begin
 for(j=0;j<i;j=j+1)begin
 #10 sig=~sig;
 $display("Time=%0t,sig=%b",$time,sig);
 end
 end
 endtask
 
 initial begin
 $dumpfile("Assignment_tf_Q06.vcd");
 $dumpvars(0,Assignment_tf_Q06);
 clk=0;#10;
 toggle_signal(clk,20);
 #200;
 $finish;
 end
 
endmodule
