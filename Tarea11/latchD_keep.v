module latchD_keep (
    input D,CLK,
    output Q
);
    wire R,S,Ri,Si,Qa,Qb/*synthesis keep*/;
    
    assign S=D;
    assign R=~D;
    assign Ri =R & CLK;
    assign Si =S & CLK;
    assign Qa = ~(Ri | Qb);
    assign Qb = ~(Si | Qa);
    assign Q = Qa;
endmodule