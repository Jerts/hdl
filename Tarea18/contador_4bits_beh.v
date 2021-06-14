module contador_4bits_beh (
    input clk, enable,
    output reg [3:0] salida = 4'b0000
);
    always @(posedge clk) begin
        if(!enable)begin
            salida<=salida+1'b1;
        end
    end
endmodule