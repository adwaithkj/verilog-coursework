module updowncounter(clk,rst,s,count);

input clk,rst,s;// s =0 for count down and vice versa

output reg [3:0] count;

initial count=4'b0000;


always @(posedge (clk) or posedge(rst))
begin
if (rst==1'b1)
    count<=0;
else
    if (s==1)
    count<=count+1;
    else
    count<=count-1;

end


endmodule