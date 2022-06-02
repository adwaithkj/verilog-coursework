`timescale  1ns/10ps

module testbench;

reg clk,rst,t;

t_flipflop DUT(clk,rst,t,q);


initial begin
    
    clk=1'b0;    
    rst=1'b0;        
    t=1'b0;        
    
    #160 $finish;
end

always #10 clk= ~clk;
always #20   t= ~t;
always #40 rst=~rst;

initial begin
   	$monitor("%g Output=%b clk=%b y=%b rst=%b t=%b ",$time,q,clk,rst,t);

    $dumpfile("q_4a.vcd");
    $dumpvars;
end
endmodule