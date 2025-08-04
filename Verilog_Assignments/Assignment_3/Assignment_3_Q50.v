`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_casex(
output reg y,
input [2:0]s,
input I0,I1,I2,I3,I4,I5,I6,I7
    );
always@(*) begin
casex(s)
3'b000:y=I0;
3'b001:y=I1;
3'b01x:y=I2;
3'b011:y=I3;
3'b1x0:y=I4;
3'b1x1:y=I5;
3'b110:y=I6;
3'b111:y=I7;
default:y=1'bx;
endcase
end
endmodule
