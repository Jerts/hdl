module asignacion2 (
    input clock, strobe, xflag, mask,
    output reg right, select, stop
);
    
    always @(posedge clock) begin
        right = right | strobe;
        select = right | xflag;
        stop <= select ^ mask;
    end
endmodule