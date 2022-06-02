`timescale 1ps/1ps

module testbench;
reg clk,lr,rst,in,enable;
wire [3:0] out;

johnsoncounter DUT(clk,rst,enable, out);


initial begin
    clk<=1'b0;
    rst<=1'b0;
    enable<=1'b0;
    #10 rst <=1'b1;
    #10 enable <=1'b1;
    #100 $finish;
end

always #5 clk=~clk;


initial begin
    $dumpfile("4d.vcd");
    $dumpvars;
    $monitor("%g clk=%b, rst=%2b , enable = %b ,counterval=%4b",$time,clk, rst,enable, out);
end

endmodule
