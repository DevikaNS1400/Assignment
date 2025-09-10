`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2025 16:51:44
// Design Name: 
// Module Name: mod_mux
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

module mod_mux(
output reg [2:0]Y,
input [2:0]I0,
input [2:0]I1,
input [2:0]I2,
input [2:0]I3,
input [2:0]I4,
input [2:0]I5,
input [2:0]I6,
input [2:0]I7,
input S2,S1,S0   );
always@(*)begin
  case({S2,S1,S0})
   3'b000:Y=I0;
   3'b001:Y=I1;
   3'b010:Y=I2;
   3'b011:Y=I3;
   3'b100:Y=I4;
   3'b101:Y=I5;
   3'b110:Y=I6;
   3'b111:Y=I7;
   default:Y=I0;
  endcase
end
endmodule
