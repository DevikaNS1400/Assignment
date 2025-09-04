`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 18:16:03
// Design Name: 
// Module Name: mod_alternate1_0_tb
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


module mod_alternate1_0_tb();
    reg clk, reset;
    reg x;
    wire y;
    
    mod_alternate1_0 u1 (.clk(clk),.reset(reset),.x(x),.y(y));

    always #5 clk = ~clk;

    reg [15:0] test_vec;
    integer i;

    initial begin
        clk = 0; reset = 1;// x = 0;
        #10 reset = 0;
        test_vec = 16'b0100000011011010;#10;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_vec[i];
            #10;
        end
        #20 $finish;
    end

endmodule
