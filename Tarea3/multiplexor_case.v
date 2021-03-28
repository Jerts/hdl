module multiplexor_case (
    input [1:0]sel,
    input a,b,c,d,
    output reg salida
);
    reg [1:0]sel_aux;
    reg A,B,C,D;
    reg sal_aux;

    always @(*) begin
        sel_aux=~sel;
        {A,B,C,D}={~a,~b,~c,~d};

        case (sel_aux)
            2'b00 : sal_aux = A;
            2'b01 : sal_aux = B;
            2'b10 : sal_aux = C; 
            2'b11 : sal_aux = D;
            default: sal_aux = A;
        endcase

        salida=~sal_aux;
    end
endmodule