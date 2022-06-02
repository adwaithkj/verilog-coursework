`timescale 1ns/1ps
module dff_testbench;

reg d,clk,rst;
wire out;

dff DUT(d,clk,rst,out);

initial begin
d<=0;
clk<=0;
rst<=0;
#200 $finish;

end

always #10 clk<=~clk;
always #100 rst<=~rst;


always begin
#20 d<=0;
#20 d<=1;


end

initial begin
    $dumpfile("dff.vcd");
    $dumpvars;
    $monitor("%g clk= %b  d=%b  rst = %b out=%b",$time,clk,d,rst,out);
end

endmodule