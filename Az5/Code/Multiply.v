module Multiply (
    input wire[3:0] multiplier, multiplicand, 
    input rstn, clk,
    output [7:0]result,
    output finish
);

wire[2:0] shift, counter;

ControlUnit CU(counter, result, rstn, clk, shift, op, finish);
DataPath DP(multiplier, multiplicand, rstn, clk, shift, op, finish, result, counter);

endmodule