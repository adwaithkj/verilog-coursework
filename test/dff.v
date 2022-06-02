module dff(input d,clk,rst, output reg out);

always @(posedge clk or rst)
begin
    if (rst==0)
        out<=0;
    else
        if (d==1)
            out<=1;
        else
            out<=0;
end 

endmodule