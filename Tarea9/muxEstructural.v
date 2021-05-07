module mux (
    input a,b,sel,
    output salida
);
    assign salida = (sel==0) ? a : b;
endmodule

module muxEstructural (
    input a1,b1,sel1,
    output salida1
);
    mux u0(a1,b1,sel1,salida1);
    
endmodule