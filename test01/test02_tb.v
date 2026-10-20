`timescale 1ns/1ps //write a timescale,unit and precision
module test02_tb;
reg a,b,c;
wire f;
test02 t(a,b,c,f);
reg[3:0] i;//used to be for cycle
//write a test bench to test my duv that i have writtern
initial begin
	a=0;b=0;c=0;#10;
	for(i=0;i<8;i=i+1)begin
		{a,b,c}=i;
		#10;
	end
	#10;
$finish;
end

endmodule
