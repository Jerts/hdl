module contador_4bits (
    input clk, count, enable,
    output [3:0] salida
);

    wire [2:0]entradasFF;
    
    assign entradasFF[0] = count & salida[0];
    assign entradasFF[1] = entradasFF[0] & salida[1];
    assign entradasFF[2] = entradasFF[1] & salida[2];

    FFT_enable u1 (
        .d(count),
        .enable(enable),
        .clk(clk),
        .salida(salida[0])
    );

    FFT_enable u2 (
        .d(entradasFF[0]),
        .enable(enable),
        .clk(clk),
        .salida(salida[1])
    );

    FFT_enable u3 (
        .d(entradasFF[1]),
        .enable(enable),
        .clk(clk),
        .salida(salida[2])
    );

    FFT_enable u4 (
        .d(entradasFF[2]),
        .enable(enable),
        .clk(clk),
        .salida(salida[3])
    );


endmodule