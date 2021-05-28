module fsm_beh (
    input reset,w,clk,
    output reg s
);  
    parameter size = 9 ;
    parameter A = 9'b000000000 ;
    parameter B = 9'b000000011 ;
    parameter C = 9'b000000101 ;
    parameter D = 9'b000001001 ;
    parameter E = 9'b000010001 ;
    parameter F = 9'b000100001 ;
    parameter G = 9'b001000001 ;
    parameter H = 9'b010000001 ;
    parameter I = 9'b100000001 ;

    reg [size-1:0] estado_actual = 9'b000000000;
    reg [size-1:0] estado_siguiente = 9'b000000000;
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            estado_actual <= A;
        end
        else begin
            estado_actual <= estado_siguiente;
        end
    end
    
    always @(estado_actual,w) begin
        //estado_siguiente = A;
        case (estado_actual)
            A : begin
                if (w==1'b0) begin
                    estado_siguiente = B;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = F;   
                end    
            end
            B : begin
                if (w==1'b0) begin
                    estado_siguiente = C;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = F;   
                end    
            end
            C : begin
                if (w==1'b0) begin
                    estado_siguiente = D;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = F;   
                end    
            end
            D : begin
                if (w==1'b0) begin
                    estado_siguiente = E;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = F;   
                end    
            end
            E : begin
                if (w==1'b0) begin
                    estado_siguiente = E;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = F;   
                end    
            end
            F : begin
                if (w==1'b0) begin
                    estado_siguiente = B;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = G;   
                end    
            end
            G : begin
                if (w==1'b0) begin
                    estado_siguiente = B;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = H;   
                end    
            end
            H : begin
                if (w==1'b0) begin
                    estado_siguiente = B;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = I;   
                end    
            end
            I : begin
                if (w==1'b0) begin
                    estado_siguiente = B;
                end 
                else if (w==1'b1) begin
                    estado_siguiente = I;   
                end    
            end
            default: estado_actual = A;
        endcase
    end


    always @(estado_actual) begin
        case (estado_actual)
            E : s = 1'b1;
            I : s = 1'b1; 
            default: s = 1'b0;
        endcase
    end
endmodule