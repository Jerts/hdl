module muxIP (
    input a1,b1,sel1,
    output salida1
);
    mimux u0(
        .data0(a1),
        .data1(b1),
        .sel(sel1),
        .result(salida1)
    );
    
endmodule