module testbench;

wire co;
wire [15:0] sum;
reg [15:0] a0,a1;
reg ci;

defparam DUT.BITS=16;

rca DUT(co, sum, a0, a1,ci);


initial
begin
    ci=0;
    a0=16'b0;
    a1=16'b0;

end

always #1000 a0[15]=~a0[15];
always #1000 a0[14]=~a0[14];
always #1000 a0[13]=~a0[13];
always #1000 a0[12]=~a0[12];
always #1000 a0[11]=~a0[11];
always #1000 a0[10]=~a0[10];
always #1000 a0[9]=~a0[9];
always #1000 a0[8]=~a0[8];
always #1000 a0[7]=~a0[7];
always #500 a0[6]=~a0[6];
always #250 a0[5]=~a0[5];
always #125 a0[4]=~a0[4];
always #62.5 a0[3]=~a0[3];
always #31.25 a0[2]=~a0[2];
always #15.625 a0[1]=~a0[1];
always #7.8125 a0[0]=~a0[0];

always #1000 a1[15]=~a1[15];
always #1000 a1[14]=~a1[14];
always #1000 a1[13]=~a1[13];
always #1000 a1[12]=~a1[12];
always #1000 a1[11]=~a1[11];
always #1000 a1[10]=~a1[10];
always #1000 a1[9]=~a1[9];
always #1000 a1[8]=~a1[8];
always #1000 a1[7]=~a1[7];
always #500 a1[6]=~a1[6];
always #250 a1[5]=~a1[5];
always #125 a1[4]=~a1[4];
always #62.5 a1[3]=~a1[3];
always #31.25 a1[2]=~a1[2];
always #15.625 a1[1]=~a1[1];
always #7.8125 a1[0]=~a1[0];

initial #4000 $finish;

initial begin
    $dumpfile("4.vcd");
    $dumpvars;
    $monitor("%g sum=%b co=%b a0=%8b a1=%8b",$time,sum,co,a0,a1);
end


endmodule