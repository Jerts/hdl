module encoder (
    input [3:0]a,
    output reg [1:0]salida 
);
    reg [3:0]A;
    reg [1:0]salida_aux ;

    always @(*) begin
        //Inversion de entradas
        A=~a;

        //Logica
        case (A)
            4'b0001 : salida_aux = 2'b00;
            4'b0010 : salida_aux = 2'b01;
            4'b0100 : salida_aux = 2'b10;
            4'b1000 : salida_aux = 2'b11;
            default: salida_aux =  2'b00;
        endcase
        
        //Salidas
        salida=~salida_aux;
    end
endmodule