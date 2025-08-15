`timescale 1ns/1ps
module tb_alu;
reg [15:0] X, Y;
wire [15:0] Z;
wire S, ZR, CY, P, V;

ALU DUT(X, Y, Z, CY, S, ZR, P, V);
initial
begin
$dumpfile("alu.vcd");
$monitor($time, "X = %h, Y = %h, Z = %h, S = %b, CY = %b, ZR = %b, P = %b, V = %b", X, Y, Z, S, CY, ZR, P, V);

#5 X = 16'h8fff; Y = 16'h8000;
#5 X = 16'hfffe; Y = 16'h8002;
#5 X = 16'hAAAA; Y = 16'h5555;
#5 $finish;
end 
endmodule