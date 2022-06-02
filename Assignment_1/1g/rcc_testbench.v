module rca_testbench();

reg [3:0] A;
reg [3:0] B;
reg cin;

wire [3:0] sum;
wire cout;



RCA dut(A,B,cin,sum, cout);

initial begin

A= 4'b1000;
B=4'b0101;
cin=1'b0;
end



initial
begin
    $monitor($time,"  A=%4b, B=%4b, cin=%b,sum=%4b, cout=%b",A,B,cin,sum,cout);
    $dumpfile("rca.vcd");
    $dumpvars;
    #80 $finish; 

end



endmodule