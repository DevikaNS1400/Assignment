`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 17:55:39
// Design Name: 
// Module Name: mod_sram_tb
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


module mod_sram_tb();
    reg clk;
    reg reset;
    reg wr_en;
    reg rd_en;
    reg burst_en;
    reg [2:0] burst_len;
    reg [7:0] data_in;
    reg [7:0] addr;
    wire [7:0] data_out;
    wire error_flag;

    mod_sram u1 (
        .clk(clk),.reset(reset),.wr_en(wr_en),.rd_en(rd_en),
        .burst_en(burst_en),.burst_len(burst_len),.data_in(data_in),
        .addr(addr),.data_out(data_out),.error_flag(error_flag)
        );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        wr_en = 0;
        rd_en = 0;
        burst_en = 0;
        burst_len = 0;
        data_in = 0;
        addr = 0;

        #10 reset = 0;

        // ? Single Write
        #10 addr = 8'h10;
            data_in = 8'hAA;
            wr_en = 1;
        #10 wr_en = 0;

        // ? Single Read
        #10 rd_en = 1;
        #10 rd_en = 0;

        // Simultaneous Read/Write (should trigger error)
        #10 wr_en = 1;
            rd_en = 1;
        #10 wr_en = 0;
            rd_en = 0;

        // ?Burst Write
        #10 burst_en = 1;
            burst_len = 3;
            addr = 8'h20;
            data_in = 8'h55;
            wr_en = 1;
        #50 burst_en = 0;
            wr_en = 0;

        //  Burst Read
        #10 burst_en = 1;
            burst_len = 3;
            addr = 8'h20;
            rd_en = 1;
        #50 burst_en = 0;
            rd_en = 0;
        #20 $finish;
    end
endmodule
