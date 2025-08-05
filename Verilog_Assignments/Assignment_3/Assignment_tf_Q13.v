`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_function(
output reg [5:0] perimeter,
input [2:0]l,b
    );
//Function calculate   
function [5:0] func_calculate;
input [2:0] l,b;
begin 
func_calculate=2*(l+b);
end
endfunction
//Main function
function [5:0] func_perimeter;
input [2:0]l,b;
begin
func_perimeter=func_calculate(l,b);//calling another function
end
endfunction

always@(*) begin
perimeter=func_perimeter(l,b);
$display("Perimeter of rectangle (%dX%d) is %d",l,b,perimeter);
end
endmodule
