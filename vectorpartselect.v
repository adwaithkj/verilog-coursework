// module vectorpartselect;

// reg [3:0] a;


// initial begin
//     reg [3:0] a=4'b1110;
//     a=2b'00;
// end

// initial begin
//     $monitor("a=%b ",a);
// end


// endmodule

module vectorpartselect;

reg [3:0] a;
reg b,c;


initial begin
    a=4'b1110;
     $display("a=%b ",a);
    a[3:2]=2'b10;
end

initial begin
    $monitor("a=%b ",a);
end


endmodule