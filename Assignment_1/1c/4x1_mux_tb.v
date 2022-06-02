`timescale  1ns/10ps

module mux_tb;

reg s0,s1,a,b,c,d;
wire out;

mux_4x1 DUT(s0,s1,a,b,c,d,out);


initial begin
    s0=1'b0;    
    s1=1'b0;    
    a=1'b0;    
    b=1'b0;        
    c=1'b0;    
    d=1'b0;    
    #500 $finish;
end

always #400 s0= ~s0;
always #200 s1= ~s1;
always #100 a= ~a;
always #50   b= ~b;
always #25 c= ~c;
always #12.5 d= ~d;

initial begin
   	$monitor("%g Output=%b s0=%b s1=%b a=%b b=%b c=%b d=%b",$time,out,s0,s1,a,b,c,d);

    $dumpfile("q_2a.vcd");
    $dumpvars;
end
endmodule