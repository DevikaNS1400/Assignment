`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2025 23:00:06
// Design Name: 
// Module Name: mod_clk
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


module mod_clk(
input clk_in,
    input reset, 
    output reg clk_out
);

    parameter period = 10,
              high   = 6,
              low    = (period - high);

    reg [$clog2(period)-1:0] counter;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end 
        else begin
            if (counter < period-1)
                counter <= counter + 1;
            else
                counter <= 0;

            if (counter < high)
                clk_out <= 1;
            else
                clk_out <= 0;
        end
end
endmodule

