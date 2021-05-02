module cicloForVerilog (
    input [7:0] datos_in1, datos_in2,
    input [1:0] dir,
    input wr,
    input clk,
    output reg[15:0] salida
);
    reg [7:0] vector1 [3:0]; 
    reg [7:0] vector2 [3:0];
    reg [7:0] auxiliar;
    integer i;
    always @(posedge clk) begin
        if(wr) begin
            vector1[dir] <= datos_in1;
            vector2[dir] <= datos_in2;
        end
    end

    always @(vector1,vector2) begin
        auxiliar = 8'h00;
        for (i = 0 ; i<=3 ; i= i+1 ) begin
            auxiliar = auxiliar + vector1[i] * vector2[i];
        end
        salida=auxiliar;
    end

endmodule