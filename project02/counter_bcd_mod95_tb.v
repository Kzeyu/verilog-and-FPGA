`timescale 1ns/1ps
module counter_bcd_mode95_tb;
//define signal
reg clk,arst;
wire [7:0] counter;
//instance dut
counter_bcd_mod95 u(clk,arst,counter);
//initialize monitor
initial begin
 	$monitor("time=%0t counter = %0h ",$time,counter);
end
//clock signal
initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;  
end
//finish simulation
initial begin
	arst=0;
	#1 arst = 1;
	#1 arst = 0;
    #200 $finish;
end
endmodule