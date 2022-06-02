`timescale 1ps/1ps

module testbench;
reg clk,rst,s;
wire [3:0] out;
updowncounter DUT(clk,rst,s,out);


initial begin
    clk=1'b0;
    rst=1'b0;
    s=1'b0;
    #1600 $finish;
end

always #5 clk=~clk;
always #400 rst=~rst;
always #800 s=~s;


initial begin
    $dumpfile("1.vcd");
    $dumpvars;
    $monitor("%g clk=%b rst=%2b s=%b, count=%4b",$time,clk, rst,s, out);
end

endmodule