module contador_res_as (
    input res,clk,
    output reg [7:0]salida = 8'b0
);

    always @(posedge clk, posedge res) begin
        if (res) begin
            salida<=8'b0;
        end
        else begin
            salida<=salida+1'b1;
        end
        
    end
endmodule