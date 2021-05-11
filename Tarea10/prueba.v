module prueba (
    input [3:0] a,b,c,d,
    input clk,
    output reg [7:0] salida
);
    reg [3:0] A,B,C,D;
    reg [7:0] mult1,mult2 ;
    reg [7:0] suma;

    always @(posedge clk) begin
        A<=a;
        B<=b;
        C<=c;
        D<=d;

        mult1=A*B;    
        mult2=C*D;

        suma=mult1+mult2;

        salida<=suma;
    end 
endmodule