module FFT (
    input clk, t, reset,
    output reg q
);
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            q<=1'b0;
        end
        else begin
            if (t) begin
                q<=~q;
            end
            else begin
                q<=q;
            end
        end
    end
endmodule