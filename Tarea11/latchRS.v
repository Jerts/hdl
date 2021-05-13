module latchRS (
    input R,CLK,S,
    output Q
);
    wire Ri,Si,Qa,Qb;

    assign Ri =R & CLK;
    assign Si =S & CLK;
    assign Qa = ~(Ri | Qb);
    assign Qb = ~(Si | Qa);
    assign Q = Qa;
endmodule