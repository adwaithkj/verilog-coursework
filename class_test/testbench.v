`timescale 1ns/1ps

module testbench;

reg clk,start,reset,skip,rot;
wire [2:0] out;

fsm DUT(clk,start,reset,skip,rot, out);

initial clk=0;
always #5 clk<=~clk;

always begin
    #10 reset=1;
    #10 start=0;
    #10 start=1;
    #10 skip=1;
    #10 start=1;

    #10 skip=0;
    #10 rot=1;
    #10 rot=0;
end


initial begin
    $dumpfile("1.vcd");
    $dumpvars;
    #200 $finish;
end
endmodule