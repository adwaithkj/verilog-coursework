

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


module RCA(a , b, cin ,s,c3);

input [3:0] a;
input [3:0] b;
input cin;

output [3:0] s;
output c3;

wire c0,c1,c2;

fulladder f0(cin,a[0],b[0],s[0],c0);
fulladder f1(c0,a[1],b[1],s[1],c1);
fulladder f2(c1,a[2],b[2],s[2],c2);
fulladder f3(c2,a[3],b[3],s[3],c3);

endmodule