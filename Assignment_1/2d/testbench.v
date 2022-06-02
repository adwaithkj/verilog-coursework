`timescale  1ns/10ps

module testbench;

reg [3:0] a;
wire [1:0] out;

encoder4x2 DUT(a,out);

initial
begin
       
 a=4'b0001;
#10  a=4'b0010;
#10  a=4'b0100;
#10  a=4'b1000;
end

initial begin
   	$monitor("%g a=%4b out=%2b",$time,a,out);

      $dumpfile("q_2d.vcd");
      $dumpvars;
end
endmodule