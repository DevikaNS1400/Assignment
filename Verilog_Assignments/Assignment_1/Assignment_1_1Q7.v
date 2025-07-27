`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module real_delta();
real delta;
integer y;
initial begin
assign delta =4e10;
assign y=delta;
$display("delta=%f,y=%d",delta,y);
#10;
assign delta =2.18;
assign y=delta;
$display("delta=%f,y=%d",delta,y);#10;
$finish;
end
endmodule
