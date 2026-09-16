module adder_full(a,b,ci,s,co);
input a,b,ci;
output s,co;
assign s=a^b^ci;
assign co=(a&b) | (ci&(a^b));
endmodule