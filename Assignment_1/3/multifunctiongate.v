module multifunctiongate( a,b,c,d , F);

input a,b,c,d;
output F;

wire inv_a,inv_c,inv_d;
wire w1,w2,w3,w4;

not n1(inv_a,a);
not n2(inv_d,d);
not n3(inv_c,c);

and a1(w1,inv_a,c,d);
and a2(w2,inv_c,b,d);
and a3(w3,b,c,inv_d);
and a4(w4,a,inv_c,inv_d);

or o1(F,w1,w2,w3,w4);


endmodule