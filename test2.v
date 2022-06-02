module test2;

reg [2:0] a;
reg [2:0] b;
reg [2:0] c;
reg [2:0] d;

initial begin
    a=3'b110;
    b=3'b11z;
    c=(a==b);
    $display(" The value of a==b is %b",c);
end

endmodule