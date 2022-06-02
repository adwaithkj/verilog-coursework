module bitreverse(in,out);

    parameter MAXBITS=32;

    input [MAXBITS-1:0] in;
    output reg [MAXBITS-1:0] out;

    
    reg a[MAXBITS-1:0];

    integer i=0;

    always @(in)
    begin




    for (i=0; i<MAXBITS; i=i+1)
        begin
            out[i]=in[MAXBITS-1-i];
        end

    
    end

endmodule