module FullAdder_tb;
reg X, Y, Cin;
wire S, Cout;

FullAdder FA(X, Y, Cin, S, Cout);
initial
begin
$dumpfile("FA.vcd");
$dumpvars(0, FullAdder_tb);
$monitor($time, "X = %b, Y = %b, Cin = %b, S = %b, Cout=%b", X, Y, Cin, S, Cout);

#5 X = 0; Y = 0; Cin = 0;
#5 X = 0; Y = 0; Cin = 1;
#5 X = 0; Y = 1; Cin = 0;
#5 X = 0; Y = 1; Cin = 1;
#5 X = 1; Y = 0; Cin = 0;
#5 X = 1; Y = 0; Cin = 1;
#5 X = 1; Y = 1; Cin = 0;
#5 X = 1; Y = 1; Cin = 1;
#5 $finish;

end 
endmodule