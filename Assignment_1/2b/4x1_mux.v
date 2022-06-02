module mux4x1(input s0,s1,a,b,c,d,output out);
assign out= s1? (s0?d:b): (s0?c:a);
endmodule