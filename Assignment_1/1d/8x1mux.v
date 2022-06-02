module q2x1_MUX(input s0,a,b, output out);
wire w1,w2,inv_s0;
not a1(inv_s0,s0);
and a2(w1,inv_s0,a);
and a3(w2,s0,b);
or a4(out,w1,w2);
endmodule


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


module mux8x1(input s0,s1,s2,a,b,c,d,e,f,g,h, output out);
wire w1,w2;

// mux_4x1 m1(s0,s1,e,f,g,h,w1);
// mux_4x1 m2(s0,s1,a,b,c,d,w2);
mux_4x1 m1(s0,s1,g,c,e,a,w1);
mux_4x1 m2(s0,s1,h,d,f,b,w2);

q2x1_MUX m3(s2,w1,w2,out);

endmodule