`timescale  1ns/10ps

module testbench;

reg x,y,a,b;
wire out;

multifunctiongate DUT(x,y,a,b,out);


initial begin
    
    a=1'b0;    
    b=1'b0;        
    x=1'b0;    
    y=1'b0;    
    #200 $finish;
end

always #100 x= ~x;
always #50   y= ~y;
always #25 a= ~a;
always #12.5 b= ~b;

initial begin
   	$monitor("%g Output=%b x=%b y=%b a=%b b=%b ",$time,out,x,y,a,b);

    $dumpfile("q_3.vcd");
    $dumpvars;
end
endmodule