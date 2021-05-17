module adderFF (
    input ci,clk,
    input signed [7:0] a,b,
    output reg co,ov,
    output reg signed [7:0] s
);
    reg signed [7:0] A,B,S;
    reg CI,CO,OV;

    always @(posedge clk ) begin
        A <= a;
        B <= b;
        CI <= ci;
        
        {CO,S} = A + B + CI;

        case ({CO,S[7]})
            2'b01: OV = 1'b1;
            2'b10: OV = 1'b1;
            default: OV = 1'b0;
        endcase

        co<=CO;
        ov<=OV;
        s<=S;

    end
    
endmodule