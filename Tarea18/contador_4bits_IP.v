module contador_4bits_IP (
    input clk, enable,
    output [3:0] salida
);
    LPM_contador u1 (
        .clock (clk),
        .cnt_en (enable),
        .q (salida)
    );
endmodule