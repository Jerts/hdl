module sum_cin_coutVerilog (
    input [1:0]a,
    input [1:0]b,
    input cin,
    output reg [1:0] suma,
    output reg cout
);
    //Señales para entradas invertidas
    reg [1:0] A;
    reg [1:0] B;
    reg CIN;
    reg [1:0] suma_aux;
    reg COUT;

    always @(*) begin
        //Entradas invertidas
        A=~a;
        B=~b;
        CIN=~cin;
        //Logica
        {COUT,suma_aux} = A + B + CIN ;

        //Salidas
        suma=~suma_aux;
        cout=~COUT;

    end
endmodule