module taskVerilog (
    input [3:0]a, b, c, d, e, f, 
    output reg [3:0] sal1,sal2,sal3
);
    task suma(input [3:0] opt1, opt2, output [3:0] res);
        begin
            res = opt1 + opt2;
        end
    endtask
	 
    always @(*) begin
        suma(a,b,sal1);
        suma(c,d,sal2); 
        suma(e,f,sal3);    
    end 

endmodule