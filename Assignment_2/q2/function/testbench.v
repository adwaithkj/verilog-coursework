`timescale 1ps/1ps

module testbench;
reg [31:0]in;
wire [31:0] out;
bitreverse DUT(in,out);


initial begin
    in=32'b0100_0010_0100_0000_0101_0001_1100_1111;
#50 in=32'b0101_0010_1100_0110_0100_0000_1101_0010;
    #100 $finish;
end




initial begin
    $dumpfile("2.vcd");
    $dumpvars;
    $monitor("%g in=%32b out=%32b",$time,in,out);
end

endmodule