module functionVerilog (
    input [3:0]a, b, c, d, e, f, 
    output [3:0] sal1,sal2,sal3
);
    
    function suma;
        input [3:0] op1, op2;
        begin
            suma = op1 + op2;    
        end
    endfunction

    assign sal1 = suma(a,b);
    assign sal2 = suma(c,d);
    assign sal3 = suma(e,f);

endmodule