`timescale 10ns/1ns //time unit and time precision
module adder_gate_test;
reg a,b,ci;
wire s,co;
adder_gate u1(a,b,ci,s,co);
initial begin
a=0;b=0;ci=0; //original state
#10 ci=0;a=0;b=0;
#10 ci=0;a=0;b=1;
#10 ci=0;a=1;b=0;
#10 ci=0;a=1;b=1;

#10 ci=1;a=0;b=0;
#10 ci=1;a=0;b=1;
#10 ci=1;a=1;b=0;
#10 ci=1;a=1;b=1;
#10 $stop;//stop stimulate
end
endmodule
