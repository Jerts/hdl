module desplazador (
    input [7:0]entrada,
    input [1:0]sel,
    output reg [7:0]salida
);
    reg [7:0]en_aux;
    reg [1:0]sel_aux;
    reg [7:0]sal_aux;

    always @(*) begin
        en_aux=~entrada;
        sel_aux=~sel;

        case (sel_aux)
            2'b00 : sal_aux = en_aux;
            2'b01 : sal_aux = {en_aux[6:0],1'b0};
            2'b10 : sal_aux = {en_aux[5:0],2'b0}; 
            2'b11 : sal_aux = {en_aux[4:0],3'b0};
            default: sal_aux = en_aux;
        endcase    

        salida=~sal_aux;
    end
endmodule