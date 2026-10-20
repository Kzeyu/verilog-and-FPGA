module wave_begin(output reg out);

	initial begin
		out = 1'b0;
		#10 out = 1'b1;
		#10 out = 1'b0;
		#20 out = 1'b1;
		#10 out = 1'b0;

		#10 out = 1'b1;
		#10 out = 1'b0;
		#10 out = 1'b1;
		#10
		$finish;
	end

endmodule
