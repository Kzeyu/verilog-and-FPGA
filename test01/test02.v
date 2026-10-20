module test02(input A,input B,input C,output F);
//logic expression:F=A'B'+AB'C'=B'(A'+AC')=B'(A'+C')
//use assign statement to write combinational logic
assign F=~B&(~A | ~C);


//also we can use always @(*) to write it
//use case statement to copy truth table directly.
//hahaha,i'm a gift.
/*
always @(*) begin
	case({A,B,C})
	3'b000:F=1'b1;
	3'b001:F=1'b1;
	3'b010:F=1'b0
	3'b011:F=1'b0;
	3'b100:F=1'b1;
	3'b101:F=1'b0;
	3'b110:F=1'b0;
	3'b111:F=1'b0;
	endcase
end
*/
//as we all known,begin end is order.
endmodule
