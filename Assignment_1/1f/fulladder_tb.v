module fulladder_tb;

reg ta,tb,tca;
wire tsum, carry;

fulladder fa(ta,tb,tca,tsum,carry);

initial 
begin
 tca=0;ta=0;tb=0;
 #10 tca=1;ta=0;tb=0;
 #10 tca=0;ta=0;tb=1;
 #10 tca=1;ta=0;tb=1;
 #10 tca=0;ta=1;tb=0;
 #10 tca=1;ta=1;tb=0;
 #10 tca=0;ta=1;tb=1;
 #10 tca=1;ta=1;tb=1;

end



initial
begin
    $monitor($time,"  a=%b,b=%b, ca=%b,sum=%b,carry=%b",ta,tb,tca,tsum,carry);
    $dumpfile("fulladder.vcd");
    $dumpvars;
    #80 $finish;

end
endmodule