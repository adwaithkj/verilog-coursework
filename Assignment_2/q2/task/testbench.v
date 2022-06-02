`timescale 1ps/1ps

module testbench;
reg [7:0]in;
wire [7:0] out;
defparam DUT.MAXBITS=8;
bitreverse DUT(in,out);


initial begin
    in=4'b0100_1110;
#50 in=4'b0101_1010;
    #100 $finish;
end




initial begin
    $dumpfile("2.vcd");
    $dumpvars;
    $monitor("%g in=%32b out=%32b",$time,in,out);
end

endmodule