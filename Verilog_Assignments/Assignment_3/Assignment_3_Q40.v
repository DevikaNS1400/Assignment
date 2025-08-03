`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
//////////////////////////////////////////////////////////////////////////////////
module mod_flag(
output reg [2:0]y,
input f1,f2,f3
    );
always@(*)begin
if(f3 && f2 && f1)
    y=3'b111;
    else if(f3&&f2&&!f1)
         y=3'b110;
       else if(f3&&!f2&&f1)
         y=3'b101;
           else if(f3&&!f2&&!f1)
             y=3'b100;
                else if(!f3&&f2&&f1)
                   y=3'b011; 
                   else if(!f3&&f2&&!f1)
                     y=3'b010;  
                      else if(!f3&&!f2&&f1)
                        y=3'b001;   
                         else if(!f3&&!f2&&!f1)
                           y=3'b000;  
                           else 
                              y=3'bxxx;
end
endmodule
