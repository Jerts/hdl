module sum_cin (
    input a, input b, input ci,
    output reg suma
);  
	 reg suma_aux;
	 reg A;
	 reg B;
	 reg CI;
	 
    always @(*) begin
		//Invertir las entradas
		A = ~a;
		B = ~b;
		CI = ~ci;
			 
		//Lógica común
		suma_aux=A+B+CI;
			 
		//Invertir salidas
		suma=~suma_aux;
//suma = a + b + ci;
    end

endmodule