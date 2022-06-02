module shiftreg(input clk,lr,rst,in,enable,output reg [7:0] out); //lr to define which direction it is shifting. Lr=0 for left shift

always@ (posedge clk or posedge rst)
begin
    if (rst==1'b0)
    out<=0;
    else
    begin
        if (enable)
        begin
            if (lr==1'b0)
            out<={out[6:0],in};
            else
            out<={in,out[7:1]};
        end
    end

end



endmodule
