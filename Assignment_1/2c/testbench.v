`timescale  1ns/10ps

module testbench;

reg [1:0] a;
wire [3:0] out;

decoder2x4 DUT(a,out);

initial
begin
       
 a=2'b00;
#10  a=2'b01;
#10  a=2'b10;
#10  a=2'b11;
end

initial begin
   	$monitor("%g a=%2b out=%4b",$time,a,out);

      $dumpfile("q_2c.vcd");
      $dumpvars;
end
endmodule