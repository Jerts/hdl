module latchD_beh (
    input clk,d,
    output reg Q
);
    always @(*) begin
        if (clk) begin
            Q<=d;
        end
    end
endmodule