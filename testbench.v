module tb_mux2x1_str;

reg sel;
reg a,b;
wire out;


mux_2x1 DUT(out,i0,i1,sel)

initial 
 begin
    a=0;b=0;sel-0;
    #10 a=0;b=0;sel-1;
    #10 a=0;b=1;sel-0;
    #10 a=0;b=1;sel-1;
    #10 a=1;b=0;sel-0;
    #10 a=1;b=0;sel-1;
    #10 a=1;b=1;sel-0;
    #10 a=1;b=1;sel-1;


end
endmodule