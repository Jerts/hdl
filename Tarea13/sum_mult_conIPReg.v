module sum_mult_conIPReg (
    input [3:0] a,b,c,d,
    input clk,
    output [7:0] salida
);
    sum_mult_IP_Reg u1(
        .dataa_0(a),
        .dataa_1(b),
        .datab_0(c),
        .datab_1(d),
        .clock0(clk),
        .result(salida)
    );
    
endmodule