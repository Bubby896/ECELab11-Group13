module tff(
    input t,
    input clk,
    input reset,
    output Q,
    output notQ
    
);

    wire d_in;
    assign d_in = t ^ Q;

    dff dff_inst(
        .d(d_in),
        .reset(reset),
        .clk(clk),
        .Q(Q),
        .notQ(notQ)
    );
             
  

endmodule
