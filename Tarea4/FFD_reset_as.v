module FFD_reset_as (
    input d, reset, clk,
    output reg q
);
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            q<=1'b0;
        end
        else begin
            q<=d;
        end
    end
endmodule