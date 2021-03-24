module decoder (
    input [1:0]a,
    output reg [3:0]salida 
);
    reg [1:0]A;
    reg [3:0]salida_aux ;

    always @(*) begin
        //Inversion de entradas
        A=~a;

        //Logica
        case (A)
            2'b00 : salida_aux = 4'b0001;
            2'b01 : salida_aux = 4'b0010;
            2'b10 : salida_aux = 4'b0100;
            2'b11 : salida_aux = 4'b1000;
            default: salida_aux = 4'b0001;
        endcase
        
        //Salidas
        salida=~salida_aux;
    end
endmodule