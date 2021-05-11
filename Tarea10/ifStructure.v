module ifStructure (
    input a,b,test,
    output reg ax,bx
);
    always @(*) begin
        if (test) begin
            ax = a & b;
        end
        else begin
            bx = a | b;
        end
    end
endmodule