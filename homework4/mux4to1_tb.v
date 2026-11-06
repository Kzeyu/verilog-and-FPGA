`timescale 10ns/1ns
module mux4to1_tb;
//define signal
reg d0,d1,d2,d3;
reg [1:0] sel;
wire out_func,out_task;
reg [4:0] i;
reg [2:0]  j;
//instance dut
mux4to1 u(d0,d1,d2,d3,sel,out_func,out_task);
//wire stimulu
initial begin
	for(i=0;i<16;i=i+1)begin
		{d3,d2,d1,d0}=i;
		for(j=0;j<4;j=j+1)begin
			#1 sel=j;
			$display("t=%0t | d3=%0b | d2=%0b | d1=%0b | d0=%0b sel=%02b | out_func=%0b | out_task=%0b",$time,d3,d2,d1,d0,sel,out_func,out_task);
			end
	end
	#2 $finish;
end
endmodule
