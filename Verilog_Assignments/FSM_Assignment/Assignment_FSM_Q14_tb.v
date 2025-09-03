`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 23:00:46
// Design Name: 
// Module Name: mod_clk_tb
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


module mod_clk_tb();
 reg clk_in;
 reg reset;
 wire clk_out;

 mod_clk  #(.period(10),.high(6))
         uut (.clk_in(clk_in),.reset(reset),.clk_out(clk_out));

   always #5 clk_in = ~clk_in;  

    initial begin
        clk_in=0;
        reset = 1;
        #20;              

        reset = 0;       
        #200;             

        reset = 1;        
        #20;

        reset = 0;        
        #200;

        $finish;            
end
endmodule
