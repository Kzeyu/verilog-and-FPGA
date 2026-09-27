module mux_pdff(a,b,sel,clk,nset,q);
input a,b,sel,clk,nset;
output reg q;
wire d;
//logic expression
assign d = (sel & a) | (~sel & b);

always @(posedge clk or negedge nset) begin
	if (!nset)
		q=1'b1;
	else
		q=d;
end
endmodule
