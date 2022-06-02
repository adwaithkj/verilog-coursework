module rca (output co, output [BITS-1:0] sum, input [BITS-1:0] a0,a1,input ci);

parameter BITS=8;
wire [BITS:0] carry;
assign carry[0]=ci;


genvar i;
generate for (i=0 ; i<BITS; i=i+1) begin: rca_loop

    wire w1,w2,w3;
    xor x1( w1,a0[i],a1[i]);
    xor x2( sum[i], w1,carry[i]);
    and a1( w2,a0[i],a1[i]);
    and a2( w3,w1,carry[i]);
    or o1( carry[i+1],w2,w3);
end

endgenerate// end of the generate block

assign co=carry[BITS];

endmodule