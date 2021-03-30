module memoria (
    input [1:0]dir,
    output reg[7:0]salida
);
    reg [1:0]dir_aux ;
    reg [7:0]salida_aux ;

    always @(*) begin
        dir_aux=~dir;
        
        case (dir_aux)
            2'b00 : salida_aux = 8'b11001100 ;
            2'b01 : salida_aux = 8'b10101010 ;
            2'b10 : salida_aux = 8'b11110000 ;
            2'b11 : salida_aux = 8'b00001111 ;
            default : salida_aux = 8'b0 ;
        endcase

        salida=~salida_aux;
        
    end
endmodule