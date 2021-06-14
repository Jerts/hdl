module FFT_enable (
    input d,enable,clk,
    output reg salida = 1'b0
);
    always @(posedge clk) begin
        
        if (!enable) begin
            if (d) begin
                salida <= ~salida;    
            end
            else begin
                salida<=salida;
            end
        end
        
    end
endmodule