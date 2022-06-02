module q2x1_MUX(input s0,a,b, output out);
wire w1,w2,inv_s0;
not a1(inv_s0,s0);
and a2(w1,inv_s0,a);
and a3(w2,s0,b);
or a4(out,w1,w2);
endmodule



module mux4x1(input s0,s1,a,b,c,d, output out);

wire w1,w2;
q2x1_MUX m21_1(s0,a,b,w1);
q2x1_MUX m21_2(s0,c,d,w2);
q2x1_MUX m21_3(s1,w1,w2,out);


endmodule
