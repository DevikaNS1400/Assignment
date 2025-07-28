`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
primitive udp_d_latch(
q,clk,d,rst
    );
output reg q;
input clk,d,rst;
initial q=0;
table 
// clk  rst   d : q : q_next
    ?    1    ? : ? : 0;
    0    0    ? : ? : -;
    1    0    1 : ? : 1;
    1    0    0 : ?  :0;
endtable
endprimitive

