module 4x1mux(i0,i1,i2,i3,s0,s1,out)
input i0,i1,i2,i3,s0,s1;
output out;
reg out;

always@(s0,s1,i0,i1,i2,i3);
    begin
        case ({s1,s0})

            2'd0:out=i0;
            2'd1:out=i1;
            2'd2:out=i2;
            2'd3:out=i3;
            default:$display("not a valid control signal");
        endcase
    end

endmodule