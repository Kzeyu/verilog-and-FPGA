module wave_fork(output reg out);

	initial fork
		out = 1'b0;
		#10 out = 1'b1;
		#20 out = 1'b0;
		#40 out = 1'b1;
		#50 out = 1'b0;
		#60 out = 1'b1;
		#70 out = 1'b0;
		#80 out = 1'b1;
		#90
		$finish;
	join

endmodule
