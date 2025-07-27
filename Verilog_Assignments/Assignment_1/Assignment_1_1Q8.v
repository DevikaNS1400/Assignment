`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module realtime_sim();
 realtime current_time;
 initial begin
 current_time=$realtime;
 $display("Current time=%f",current_time);#10.71;
 
 current_time=$realtime;
 $display("Current time=%f",current_time);#20.211;
 
 current_time=$realtime;
 $display("Current time=%f",current_time);#10;
 $finish;
 end
endmodule
