module mux_half_adder(m,a,b,c,d,s0,s1);
//define port,default to wire
input m,a,b,c,d;
output s0,s1;
wire w1,w2;
//logic expression
assign w1= (m&a) | (~m&c);
assign w2= (m&b) | (~m&d);
assign s0 = w1 ^ w2;
assign s1 = w1 & w2;

endmodule