`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mod_alpha_beta();
integer alpha, beta; 
initial begin 
alpha = 4; beta = 3;  
beta <= beta + alpha;  
alpha <= alpha + beta; 
alpha= alpha- 2; end
initial begin
#20$display ("Alpha=%0d Beta=%0d", alpha, beta);  
end
endmodule
