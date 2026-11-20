module ripple_counter(

input t, reset,
input clk,
output [2:0] Q
);

tff tff0(

 .t(1'b1),
 .reset(reset),
 .clk(clk),
 .Q(Q[0]),
 .notQ()
 );
 
tff tff1(

 .t(1'b1),
 .reset(reset),
 .clk(Q[0]),
 .Q(Q[1]),
 .notQ()
);

tff tff2(

 .t(1'b1),
 .reset(reset),
 .clk(Q[1]),
 .Q(Q[2]),
 .notQ()
);

endmodule
