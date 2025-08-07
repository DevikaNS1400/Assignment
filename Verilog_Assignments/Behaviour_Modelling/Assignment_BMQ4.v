`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module mod_bm();
reg [2:0]c = 3'b00x;
always@(*)
begin
casex( c )
3'b000:$display("st1=%b",c);
3'b100:$display("st1=%b",c);
3'b001:$display("st1=%b",c);
endcase
end

initial begin
c=3'b000;#10;
c=3'b001;#10;
c=3'b00x;#10;
c=3'b100;
$finish;
end

endmodule
