`timescale 10us/1us
module mux_half_adder_tb;
reg m,a,b,c,d;
wire s0,s1;
reg [5:0] i;

mux_half_adder dut (m,a,b,c,d,s0,s1);

initial begin
	m = 0; a = 0; b = 0; c = 0; d = 0;#10;
	for (i = 0; i < 32; i = i + 1) begin
            {m, a, b, c, d} = i[4:0];
            #10;
	end
	$display(" test over ");
	$finish;
end

endmodule