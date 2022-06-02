module fsm( input clk,
            input rstn,
            input in,
            output reg out);

    parameter   IDLE    =0,
                S1      =1,
                S11     =2,
                S110    =3,
                S1100   =4;
    
    reg[2:0] cur_state, next_state;

    

    always@(cur_state)begin
        if (cur_state==S1100)
        out=1;
        else
        out=0;
    end
    
    always @(posedge clk) begin
        if (!rstn)
            cur_state=IDLE;
        else
            cur_state<=next_state;
    end

    always@ (cur_state or in ) begin
        case(cur_state)
                IDLE: begin
                    if (in) next_state=S1;
                    else next_state=IDLE;
                end
                S1: begin
                    if (in) next_state=S11;
                    else next_state=IDLE;
                end
                S11: begin
                    if (in) next_state=S11;
                    else next_state=S110;
                end
                S110: begin
                    if (in) next_state=S1;
                    else next_state=S1100;
                end
                S1100: begin
                    if (in) next_state=S1;
                    else next_state=IDLE;
                end

        endcase

    end

endmodule