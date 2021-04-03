module contador_res_as (
    input res,clk,
    output [7:0]salida = 8'b0
);

    reg [26:0]contador_aux = 27'b0;
    reg flag1s;
    reg rest_aux;
    reg [7:0]salida_aux= 8'b0;

    always @(posedge clk, posedge res) begin
        if (res) begin
            contador_aux<=27'b0;
        end
        else if(contador_aux==50000000) begin
            contador_aux<=27'b0;
            flag1s<=1'b1;
        end
        else begin
            contador_aux<=contador_aux+1'b1;
            flag1s<=1'b0; 
        end
		  
    end

    always @(posedge flag1s, posedge res) begin
        if (res) begin
            salida_aux<=8'b0;
        end
        else begin
            salida_aux<=salida_aux+1'b1;
        end
        
    end
    assign salida=~salida_aux;
endmodule