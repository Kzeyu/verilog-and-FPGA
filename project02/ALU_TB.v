`timescale 1ns/1ps
module ALU_TB;
//define signal
reg  [3:0] a;
reg  [3:0] b;
reg  [2:0] sel;
wire [7:0] out;
 integer i;	//it's used in for-cycle
 //instance
ALU u (a,b,sel,out);
//initialise monitor to print information
initial begin
	$monitor("time=%0t a=%0d b=%0d sel=%0d out=%0d",$time, a, b, sel, out);
 end
//stimulus
 initial begin
        $display("start test the ALU");
	//initialise a and b
        a = 4'd9;//9-1001 
	b = 4'd5;//5-0101
	//update sel
        for (i = 0; i < 8; i = i + 1) begin//sel is 0->7
            sel = i[2:0];
	    #10;//monitor only print at the end of a time step,so we should delay
        end
	//finish simulation
	#10 $finish;
end
 endmodule
