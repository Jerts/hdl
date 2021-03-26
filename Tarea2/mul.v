module mul (
    input [7:0]a,
    input [7:0]b,
    output reg [7:0]mult
);
    reg [7:0]A;
    reg [7:0]B;
    reg [7:0]mult_aux ;

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