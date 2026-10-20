module clk(output reg clk_10);

	initial fork
		clk_10=0;
			forever #5 clk_10 = ~clk_10;
		#90
		$finish;
	join
endmodule
