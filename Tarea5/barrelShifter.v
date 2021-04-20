module barrelShifter (
    input [3:0]datos,
    input [1:0]shift,
    input operation,
    output reg [3:0]salida
);
    always @(*) begin
       if (operation) begin
            case (shift)
                2'b00 : salida = datos;
                2'b01 : salida = {datos[2:0],datos[3]};
                2'b10 : salida = {datos[1:0],datos[3:2]};
                2'b11 : salida = {datos[0],datos[3:1]};
                default: salida = datos;
            endcase
       end
       else begin
           case (shift)
                2'b00 : salida = datos;
                2'b01 : salida = {datos[2:0],1'b0};
                2'b10 : salida = {datos[1:0],2'b0}; 
                2'b11 : salida = {datos[0],3'b0};
            default: salida = datos;
        endcase 
       end
    end
endmodule