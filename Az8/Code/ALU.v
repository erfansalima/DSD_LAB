`include "macros.v"

module ALU (
    input `complex a,
    input `complex b,
    input [1:0] op,
    output `complex res
);
    wire `complex addsub_res, mul_res;
    
    AddSub addsub(a, b, op[0], addsub_res);
    Multiply multiply(a, b, mul_res);

    assign res = (op[1] ? mul_res : addsub_res);
    
endmodule