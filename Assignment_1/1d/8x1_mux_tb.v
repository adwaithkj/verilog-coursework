`timescale  1ns/10ps

module mux_tb;

reg s0,s1,s2,a,b,c,d,e,f,g,h;
wire out;

mux8x1 DUT(s0,s1,s2,a,b,c,d,e,f,g,h,out);


initial begin
    s0=1'b0;    
    s1=1'b0;    
    s2=1'b0;    
    a=1'b0;    
    b=1'b0;        
    c=1'b0;    
    d=1'b0;    
    e=1'b0;    
    f=1'b0;    
    g=1'b0;    
    h=1'b0;    
    #3200 $finish;
end

always #1600 s0= ~s0;
always #800 s1= ~s1;
always #400 s2= ~s2;
always #200 a= ~a;
always #100   b= ~b;
always #50 c= ~c;
always #25 d= ~d;
always #12.5 e= ~e;
always #6.25 f= ~f;
always #3.125 g= ~g;
always #1.5625 h= ~h;

initial begin
   	$monitor("%g Output=%b s0=%b s1=%b a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b",$time,out,s0,s1,a,b,c,d,e,f,g,h);

    $dumpfile("q_2a.vcd");
    $dumpvars;
end
endmodule