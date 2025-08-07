`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_fork_join();
reg [2:0]bit;
integer i;
initial begin
fork begin
for (i=0;i<=3;i=i+1)
$display($time,"value of i=%0d",i);
end
begin
#1;
$display("Executed 2nd begin block");
end
join
$display("Fork Join Ended");
end
endmodule


/////OUTPUT 
/*

0value of i=0
0value of i=1
0value of i=2
0value of i=3
Executed 2nd begin block
Fork Join Ended

*/