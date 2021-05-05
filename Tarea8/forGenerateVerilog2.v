module mior1 (
    input ac,bc,
    output sc
);

	assign sc = ac | bc;
    
endmodule

module forGenerateVerilog2 (
    input [7:0]a,b,
    output [7:0]s1,s
);
    genvar i;
    generate
        for (i=0 ;i<=7 ; i=i+1) begin : compuertas
            mior1 u0 (a[i],b[i],s1[i]);
            if (i<4) begin
                assign s[i] = a[i] ^ b[i]; 
            end
            else if (i>3) begin
                assign s[i] = a[i] & b[i];
            end
        end
    endgenerate
	 
endmodule