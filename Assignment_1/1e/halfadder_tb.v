module halfadder_tb;

reg ta,tb;
wire tsum, tca;

halfadder ha(ta,tb,tsum,tca);

initial 
begin
 ta=0;tb=0;
#10 ta=0;tb=1;
#10 ta=1;tb=0;
#10 ta=1;tb=1;

end



initial
begin
    $monitor($time,"  a=%b,b=%b,sum=%b,ca=%b",ta,tb,tsum,tca);
    $dumpfile("halfadder.vcd");
    $dumpvars;
    #40 $finish;

end
endmodule