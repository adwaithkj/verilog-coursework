module bitreverse(in,out);

    parameter MAXBITS=32;

    input [MAXBITS-1:0] in;
    output reg [MAXBITS-1:0] out;

    
    reg a[MAXBITS-1:0];

    always @(in)
    begin
        rev(in,out);
    end
    
    task rev(input [MAXBITS:0] in,output [MAXBITS:0] out);
        
        integer i;
        for (i=0; i<MAXBITS; i=i+1)
            begin
                out[i]=in[MAXBITS-1-i];
            end
    
    endtask

endmodule