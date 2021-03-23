module sum_res (
    input [1:0]a,
    input [1:0]b,
    input cin,
    input c,
    output reg [1:0] suma,
    output reg cout
);
    //Señales para entradas invertidas
    reg [1:0] A;
    reg [1:0] B;
    reg CIN;
    reg C;
    reg [1:0] suma_aux;
    reg COUT;

    always @(*) begin
        //Entradas invertidas
        A=~a;
        B=~b;
        C=~c;
        CIN=~cin;
        //Logica
        case (C)
           1'b0 : {COUT,suma_aux} = A + B + CIN ;
           1'b1 : {COUT,suma_aux} = A - B - CIN ;
           default: {COUT,suma_aux} = A + B + CIN ;
        endcase
        
        //Salidas
        suma=~suma_aux;
        cout=~COUT;

    end
endmodule