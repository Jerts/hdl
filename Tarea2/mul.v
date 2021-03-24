module mul (
    input [1:0]a,
    input [1:0]b,
    output reg [2:0]mult
);
    reg [1:0]A;
    reg [1:0]B;
    reg [2:0]mult_aux ;

    always @(*) begin
        //Inversion de entradas
        A=~a;
        B=~b;

        //Logica
        mult_aux=A*B;

        //Salidas
        mult=~mult_aux;
    end
endmodule