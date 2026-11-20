module dff(
    input d,
    input reset,
    input clk,
    output reg Q,
    output notQ
    
    
);

    assign notQ = ~Q;

    always @(posedge clk, posedge reset) begin
            if (reset) 
            
            Q <= 1'b0;
            else 
            Q <= d;
             
        
    end


endmodule
