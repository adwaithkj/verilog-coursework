
module halfadder ( a,b , sum,ca);
input a,b;
output sum, ca;
    assign sum=a^b;
    assign ca=a&b;
endmodule


module fulladder(input a,b,ca,output sum,carry );

wire w1, w2,w3;
halfadder h1(a,b,w1,w2);
halfadder h2(w1,ca,sum,w3);

assign carry= w3^w2;

endmodule