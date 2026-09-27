`timescale 1ns/1ps
module mux_pdff_tb;

reg a,b,sel,clk,nset;
wire q;
reg [3:0] i;
mux_pdff u (.a(a),.b(b),.sel(sel),.clk(clk),.nset(nset),.q(q));

//T=10ns
initial begin
	clk=0;
	forever #5 clk=~clk;
end
//stimulate
initial begin
	sel=0;a=0;b=0;nset=0;#10;
	nset=1;#10;

	for(i=0;i<8;i=i+1)begin
		{sel,a,b}=i[2:0];
		#20;
	end
	
	nset=0;#10;
	nset=1;#10;

	$display("test over");
	$finish;
end
endmodule
