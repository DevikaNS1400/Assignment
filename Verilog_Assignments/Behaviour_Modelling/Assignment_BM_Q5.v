`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 06:00:17
// Design Name: 
// Module Name: as
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


module circuit(
output reg[3:0] y
    );
reg [3:0]a;
always@(*) begin 
case( 1'b1 )  
a[3] : y =3; 
a[2] : y = 2;
a[1] : y = 1; 
a[0] : y = 0; 
endcase  
end 
initial begin
a=4'b0100;#10;
a=4'b1010;#10;
a=4'b1000;#10;
a=4'b0010;#10;
a=4'b0001;#10;
$finish;
end
endmodule
