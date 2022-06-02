module mux_4x1(input s0,s1,a,b,c,d,output out);

wire inv_s0,inv_s1,w1,w2,w3,w4;

not a1(inv_s0,s0);
not a2(inv_s1,s1);

and a3(w1,s0,s1,a);
and a4(w2,inv_s0,s1,b);
and a5(w3,s0,inv_s1,c);
and a6(w4,inv_s0,inv_s1,d);

or a7(out,w1,w2,w3,w4);

endmodule