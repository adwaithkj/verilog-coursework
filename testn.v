module testn;

wire [3:0] a;
wire [3:0] b;

a=4'b1z0z; 
b=4'b1z0z;

wire [3:0] o1,02;
assign o1=(a==b) ?1:0;
assign o2=(a===b) ?1:0;

$display(" o1 is %b o2 is %b",o1,o2)

endmodule