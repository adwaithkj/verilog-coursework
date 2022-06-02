`timescale 1ps/1ps

module testbench;
reg clk,lr,rst,in,enable;
wire [7:0] out;

shiftreg DUT(clk,lr,rst,in,enable, out);


initial begin
    clk=1'b0;
    rst=1'b0;
    in=1'b0;
    enable=1'b0;
    lr=1'b0;

    #10 rst =1'b1;
    #10 enable =1'b1;
    #400 $finish;
end

always #5 clk=~clk;
always #100 in=~in;
always #200 lr=~lr;



initial begin
    $dumpfile("4c.vcd");
    $dumpvars;
    $monitor("%g clk=%b rst=%2b lr=%b, input=%b, enable = %b ,regvalue=%8b",$time,clk, rst,lr,in,enable, out);
end

endmodule