module mux2x1(input s0,a,b,output out);
assign out= s0? b:a;
endmodule