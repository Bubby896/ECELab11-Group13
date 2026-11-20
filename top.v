module top(

input btnU, btnC,
output [6:0]led
);

ripple_counter ripCount(

 .clk(btnC),
 .reset(btnU),
 .Q(led[2:0])
 
);

modulo_counter modCount(

 .clk(btnC),
 .reset(btnU),
 .state(led[5:3]),
 .counter(led[6])
);

endmodule
