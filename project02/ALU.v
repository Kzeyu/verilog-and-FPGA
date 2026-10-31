module ALU(a,b,sel,out);
input [3:0] a,b;
input [2:0] sel;
output reg [7:0] out;
	always @(a,b,sel)begin
		case(sel)
			3'b000 : out = a + b;
			3'b001 : out = a - b;
			3'b010 : out = a * b;
			3'b011 : out = a % b; //mod(a,b)

			3'b100 : out = a>b?a:b;//max(a,b)
			3'b101 : out = a<b?a:b;//min(a,b)
			3'b110 : out = a<<5;
			3'b111 : out = a>>4;
		endcase
	end
endmodule