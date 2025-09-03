`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2025 10:27:05
// Design Name: 
// Module Name: fsm_jk
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

module jk_fsm(
    input clk,
    input reset,    // Synchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
         case(state)
            OFF:next_state=(j)?ON:OFF;
            ON:next_state=(k)?OFF:ON;
            default:next_state=OFF;       
        endcase   
    end

    always @(posedge clk) begin
        if(reset)
           state<=OFF;
        else
            state<=next_state;   
        end
    assign out = (state ==ON);
endmodule
