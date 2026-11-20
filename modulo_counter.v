
module modulo_counter(

input clk,
input reset,
output [2:0]state,
output counter

);

wire check;
wire carry1, carry2;
wire sum0, sum1, sum2;
wire w0, w1, w2;
wire Fred;

// counting logic
full_adder adder0(
.A(state[0]),
  .B(1'b1),
.C_in(1'b0),
.Y(sum0),
.C_out(carry1)
);

full_adder adder1(
.A(state[1]),
.B(1'b1),
.C_in(carry1),
.Y(sum1),
.C_out(carry2)
);

full_adder adder2(
.A(state[2]),
.B(1'b1),
.C_in(carry2),
.Y(sum2),
.C_out(1'b0)
);

// intermediate stage
// check count = 5
assign check = state[0] & ~state[1] & state[2];
// bitwise logic for reset
assign w0 = sum0 & ~check;
assign w1 = sum1 & ~check;
assign w2 = sum2 & ~check;


// end of intermediate stage

// state change
dff d0(
.Q(state[0]),
.d(w0),
.reset(reset),
.clk(clk),
.notQ()
);

dff d1(
.Q(state[1]),
.d(w1),
.reset(reset),
.clk(clk),
.notQ()
);

dff d2(
.Q(state[2]),
.d(w2),
.reset(reset),
.clk(clk),
.notQ()
);

assign Fred = check ^ counter;

dff d3(
.Q(counter),
.d(Fred),
.reset(reset),
.clk(clk),
.notQ()
);
endmodule
