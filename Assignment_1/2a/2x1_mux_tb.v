`timescale  1ns/10ps

module mux_tb;

reg s0,a,b;
wire out;

mux2x1 DUT(s0,a,b,out);

initial
begin
       


   #10 s0=0;a=0;b=0; 
   #10 s0=0;a=0;b=1; 
   #10 s0=0;a=1;b=0; 
   #10 s0=0;a=1;b=1; 
   #10 s0=1;a=0;b=0; 
   #10 s0=1;a=0;b=1; 
   #10 s0=1;a=1;b=0; 
   #10 s0=1;a=1;b=1; 

end

initial begin
   	$monitor("%g s0=%b a=%b b=%b, out=%b ",$time,s0,a,b,out);

      $dumpfile("q_2a.vcd");
      $dumpvars;
end
endmodule