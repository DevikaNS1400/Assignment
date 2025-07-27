`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module time_sim();
time t;
initial begin
t=$time;
$display("At time t=%d ns event started",t);
#10;
t=$time;
$display("At time t=%d ns 2nd event",t);#20;
t=$time;
$display("At time t=%d ns 3rd event",t);#30;
t=$time;
$display("At time t=%d ns 4th event",t);#40;
$finish;
end
endmodule
