module mior (
    input ac,bc,
    output sc
);

	assign sc = ac | bc;
    
endmodule

module forGenerateVerilog (
    input [7:0]a,b,
    output [7:0]s1
);
    genvar i;
    generate
        for (i=0 ;i<=7 ; i=i+1) begin : compuertas
            mior u0 (a[i],b[i],s1[i]);
        end
    endgenerate
	 
endmodule