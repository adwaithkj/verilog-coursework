module bitreverse(in,out);

    parameter MAXBITS=32;

    input [MAXBITS-1:0] in;
    output reg [MAXBITS-1:0] out;

    
    reg a[MAXBITS-1:0];

    always @(in)
    begin

        out=rev(in);
    


    end
    
    function [MAXBITS:0] rev(input [MAXBITS:0] in);
        
            integer i;
            for (i=0; i<MAXBITS; i=i+1)
                begin
                    rev[i]=in[MAXBITS-1-i];
                end
    
    endfunction

endmodule