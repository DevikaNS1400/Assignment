`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_initial();
 reg [3:0]a,b,c;
 initial begin
 $monitor("Time=%d a=%d b=%d c=%d",$time,a,b,c);
 a=0;#2
 b=a+1;
 c=b+1;a=b+c;
 #3c=a+1;b=c+1;
 end
 endmodule
 
 module mod_always();
 reg [3:0]a1,b1,c1;
 always begin
 $monitor("Time=%d a1=%d b1=%d c1=%d",$time,a1,b1,c1);
 a1=0;#2
 b1=a1+1;
 c1=b1+1;a1=b1+c1;
 #3c1=a1+1;b1=c1+1;
 end
endmodule
