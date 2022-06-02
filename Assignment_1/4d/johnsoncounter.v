module johnsoncounter( clk,rst,enable, out); 


input clk,rst,enable;
output reg [3:0] out;
integer i;

always@ (posedge clk or posedge rst)
begin
    if (rst==1'b0)
    out<=0;
    else
    begin
        if (enable)
        begin
            out[3]<=~out[0];
            for (i=0; i<3;i=i+1)
            begin
                out[i]<=out[i+1];
            end
        end

    end

end



endmodule
