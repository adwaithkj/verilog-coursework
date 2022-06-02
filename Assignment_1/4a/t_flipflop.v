module t_flipflop(input clk,rst,t,output q);

reg q;

always@(posedge clk or posedge rst) begin
    if (rst==1'b0)
    q<=0;
    else
        if (t==1'b1)
        q<=~q;
        else
        q<=q;

end
endmodule