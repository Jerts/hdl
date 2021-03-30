module buffer_tri (
    input a,enable,
    output f
);

    wire Enable;

    assign Enable=~enable;

    assign f = (Enable == 1) ? a:1'bZ;

    
endmodule