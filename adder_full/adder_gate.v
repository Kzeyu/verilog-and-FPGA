module adder_gate(a,b,ci,s,co);
input a,b,ci;
output s,co;
//primitive
wire w1,w2,w3;
xor u1(w1,a,b);  //a^b
xor u2(s,w1,ci);//s=a^b^ci
and u3(w2,a,b);//a&b

and u4(w3,ci,w1);//ci&(a^b)
or u5(co,w2,w3);//co=a&b+ci&(a^b)


endmodule
