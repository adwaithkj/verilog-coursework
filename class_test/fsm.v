module fsm(input clk,start,reset,skip,rot,output reg [2:0] out);

parameter S0=2'b00,
          S1=2'b01,
          S2=2'b10,
          S3=2'b11;

reg cur_state,next_state;
reg flag;

//nextstate logic

initial begin
    cur_state=S0;
end

always @ (posedge start or posedge reset or posedge skip or posedge rot or posedge clk)
// always @ (posedge clk)
begin
    // if (reset==1 && flag==0)
    // begin
    //     next_state<=S0;
    //     flag=1;
    // end

    case(cur_state)
        S0: if (start==0)
                next_state<=S0;
            else 
                next_state<=S1;
        S1: next_state<=S2;
        S2: if (skip==1)
                next_state<=S0;
            else
                next_state<=S3;
        S3: if (rot==1)
                next_state<=S3;
            else
                next_state<=S0;
        
    endcase
end

//state register loading at each posedge clk;

always @ (posedge clk)
begin
    // if (cur_state==S1)
    // next_state<=S2;
    
    cur_state<=next_state;
end

always @ (cur_state)
begin
    case(cur_state)
        S0: out=3'b000;
        S1: out=3'b101;
        S2: out=3'b111;
        S3: out=3'b001;
    endcase
    
end


endmodule