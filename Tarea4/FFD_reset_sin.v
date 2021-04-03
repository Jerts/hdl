module FFD_reset_sin (
    input d, reset, clk,
    output reg q
);
    always @(posedge clk) begin
        if (reset) begin
            q<=1'b0;
        end
        else begin
            q<=d;
        end
    end
endmodule