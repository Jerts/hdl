module contador_res_as_ce (
    input res,clk,ce,dir,load,
	input [3:0]data,
    output reg [3:0]salida = 4'b0
);
    
    always @(posedge clk, posedge res) begin
        if (res) begin
            salida<=8'b0;
        end
        else if (ce) begin
            if (load) begin
                salida<=data;
            end
            else if(salida==7 && dir) begin
                salida <= 4'b0;
            end
            else if(salida==0 && !dir) begin
                salida <= 4'h7;
            end
            else begin
                if (dir) begin
                    salida<=salida+1'b1;
                end
                else begin
                    salida<=salida-1'b1;
                end
            end
        end
        else begin
            salida<=salida;
        end 

    end
endmodule