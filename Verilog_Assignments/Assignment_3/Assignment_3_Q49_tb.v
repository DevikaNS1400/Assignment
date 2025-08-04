`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_busdecoder_tb;
reg [2:0]addr;
wire [7:0]y;
mod_busdecoder u1(.y(y),.addr(addr));
initial begin
addr=001;#10;
addr=000;#10;
addr=100;#10;
addr=011;#10;
addr=010;#10;
addr=111;#10;
addr=101;#10;
addr=110;#10;
$finish;
end
endmodule
