module reg_solution (
    input reset,w,clk,
    output reg s
);
    reg [3:0] stack; 
    always @(posedge clk,posedge reset) begin
        if (reset) begin
            stack<=4'bxxxx;
        end
        else begin
            case (w)
                1'b0 : begin
                    stack <= {stack[2:0],1'b0};
                end
                1'b1 : begin
                    stack <= {stack[2:0],1'b1};
                end 
                default: stack <= 4'b0;
            endcase        
            
        end
        
    end
    always @(stack) begin
        if ( stack==4'b0000 || stack==4'b1111 ) begin
            s = 1'b1;
        end
        else
            s = 1'b0;
    end
endmodule