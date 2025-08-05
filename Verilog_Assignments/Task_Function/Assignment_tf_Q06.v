`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////// 
//////////////////////////////////////////////////////////////////////////////////
module arithmetic_oprn(
output reg [5:0] s,d,p,q,
input [2:0] a,b
    );
    
 //addition
task sum(input [2:0]a,input [2:0]b,output [5:0]s);
begin
s=a+b; 
end
endtask
//subtraction
task sub(input [2:0]a,input [2:0]b,output [5:0]d);
begin
d=a-b; 
end
endtask

//Multiplication
task mul(input [2:0]a,input [2:0]b,output [5:0]p);
begin
p=a*b; 
end
endtask

//Division
task div(input [2:0]a,input [2:0]b,output [5:0]q);
begin
if(a>=b && b!=0)
  q=a/b;
else if(b>a && a!=0)
  q=b/a;
else
 q=5'bx; 
end
endtask

always@(*) begin
sum(a,b,s);
$display("Sum of %d and %d is %d",a,b,s);

sub(a,b,d);
$display("Difference of %d and %d is %d",a,b,d);

mul(a,b,p);
$display("Multiplication of %d and %d is %d",a,b,p);

div(a,b,q);
if(a>b)
$display(" %d / %d is %d",a,b,q);
else
$display(" %d / %d is %d",b,a,q);

end
endmodule
