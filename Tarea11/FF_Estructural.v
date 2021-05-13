module FF_Estructural (
    input D,CLK,
    output Q
);
    wire Qm,Qs/*synthesis keep*/;

    latchD_keep u1 (
        .D(D),
        .CLK(~CLK),
        .Q(Qm)
    );

    latchD_keep u2 (
        .D(Qm),
        .CLK(CLK),
        .Q(Qs)
    );

    assign Q=Qs;
endmodule