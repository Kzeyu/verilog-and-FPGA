`timescale 1ns/1ps
module shifter_tb;
//proclaim signal
reg [31:0] addr;
wire [31:0] addr_l,addr_r;
//instance dut
shifter u (addr,addr_l,addr_r);
//start a monitor
initial begin
	$monitor("t=%0t addr=%-032b addr_left=%-032b addr_right=%-032b",$time,addr,addr_l,addr_r);
end
//stimuli
initial begin
    	addr = 32'h0000_0001;   // lsb =1
    	#10;
   	 addr = 32'h8000_0000;   // msb =1 
    	#10;
  	 addr = 32'hFFFF_FFFF;   // all ones
    	#10;
    	addr = 32'h0000_0000;   //all zeros
    	#10;
    	addr = 32'h1234_5678;   //common data 1
    	#10;
    	addr = 32'hDEAD_BEEF;   //common data 2
	#10;
	$finish;
end
endmodule



