module comparator (
    input [1:0]a,
    input [1:0]b,
    output reg comp 
);
    reg [1:0]A;
    reg [1:0]B;
    reg comp_aux ;

    always @(*) begin
        //Inversion de entradas
        A=~a;
        B=~b;

        //Logica
        if (A==B) begin
            comp_aux=1'b1;
        end
        else begin
            comp_aux=1'b0;
        end
        
        //Salidas
        comp=~comp_aux;
    end
endmodule