`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 15:19:35
// Design Name: 
// Module Name: qns_no_9_tb
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


module even_odd_tb();
    reg clk;
    reg reset;
    reg din;
    wire [3:0] detected;

    even_odd u1 (.clk(clk),.reset(reset),.din(din),.detected(detected));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    initial begin
            reset = 1;
        din   = 0;
        #12;                
        reset = 0;

        // 1 0 1 1 0 0 1 0
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;

        #40;
        $finish;
    end

   

endmodule
