`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_generate();
parameter n=4;
reg [7:0]reg_arr[n-1:0];
//wire [7:0]reg_arr[n-1:0];
genvar i;
generate
 for(i=0;i<n-1;i=i+1) begin
initial reg_arr[i]=8'hAA;
  end
  endgenerate
  integer j;  
  initial begin
  for (j = 0; j < n-1; j = j + 1)
  $display("reg_arr[%0d] = %h", j, reg_arr[j]);end
endmodule
