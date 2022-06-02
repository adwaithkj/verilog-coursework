`timescale 1ps/1ps

module testbench;
reg clk, in, rstn;
wire out;
reg tb_in;
integer loop=1;

fsm DUT(clk,rstn,in,out);


initial 
begin
    rstn=0;
    clk=0;

    #100 rstn=1;
end

always
begin
#25  clk<=~clk;
end



initial begin
    in<=1;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=1;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=0;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=1;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=0;
#50 in<=1;
#50 in<=1;
#50 in<=0;
#50 in<=0;
#50 $finish;
    
end




initial begin
    $dumpfile("3.vcd");
    $dumpvars;
    $monitor("%g in=%b out=%b rstn=%b",$time,in,out,rstn);
end

endmodule