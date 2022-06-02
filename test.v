module test;
real delta; // Define a real variable called delta

// X = 4'b1010, Y = 4'b1101, Z = 4'b10x1
reg x;
reg y;
reg z;
reg i; 
reg j;
initial
begin
x = 3'b10z;
y = 2;
i = x > y;
j = ~x;
end

initial
begin 
$monitor("x = %d y = %d i = %b j = %b",x,(y),i,j);
end

endmodule