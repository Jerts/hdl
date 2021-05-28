module fsm_oh (
    input reset,w,clk,
    output reg s
);
    reg A,B,C,D,E,F,G,H,I;

    always @(posedge clk,posedge reset) begin
        if (reset) begin
            A<= reset;    
        end
        else begin
            A<= reset;
            B<= (A & ~w) | (F & ~w) | (G & ~w) | (H & ~w) | (I & ~w);
            C<= B & ~w;
            D<= C & ~w;
            E<= (D & ~w) | (E & ~w) ;

            F<= (A & w) | (B & w) | (C & w) | (D & w) | (E & w);
            G<= F & w;
            H<= G & w;
            I<= (H & w) | (I & w) ;
        end
    end
    always @(A,B,C,D,E,F,G,H,I,reset) begin
        if (reset) begin
            s = 1'b0;
        end
        else begin
            case (1'b1)
                A : s = 1'b0;
                B : s = 1'b0;
                C : s = 1'b0;
                D : s = 1'b0;
                E : s = 1'b1;
                F : s = 1'b0;
                G : s = 1'b0;
                H : s = 1'b0;
                I : s = 1'b1; 
                default: s = 1'b0;
            endcase
        end        
    end
endmodule