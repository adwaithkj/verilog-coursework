module q2x1_MUX(input s0,a,b, output out);
wire w1,w2,inv_s0;
not a1(inv_s0,s0);
and a2(w1,inv_s0,a);
and a3(w2,s0,b);
or a4(out,w1,w2);
endmodule



