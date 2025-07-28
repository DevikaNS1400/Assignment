`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module udp_eqn_tb;
reg x,y,z;
wire f;
udp_eqn u1(.f(f),.x(x),.y(y),.z(z));
initial begin
$dumpfile("Assignment_1_Q20.vcd");
$dumpvars(1);
end
initial begin
x=0;y=0;z=0;#10;
x=0;y=0;z=1;#10;
x=0;y=1;z=0;#10;
x=0;y=1;z=1;#10;
x=1;y=0;z=0;#10;
x=1;y=0;z=1;#10;
x=1;y=1;z=0;#10;
x=1;y=1;z=1;#10;
$finish;
end
endmodule
