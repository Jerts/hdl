module FFD_beh (
    input clk,d,
    output reg Q
);
    always @(posedge clk) begin
            Q<=d;
    end
endmodule