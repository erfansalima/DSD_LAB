`include "macros.v"

module Instruction (
    input clk,
    input rstN,
    output [1:0] op,
    output [4:0] addr1,    
    output [4:0] addr2,
    output [4:0] addr3
);

    reg [0:16] mem [`MEM_LEN-1:0];
    reg [`A_LEN:1] pc;

    assign op = mem[pc][0:1];
    assign addr3 = mem[pc][2:6]; // where to write
    assign addr1 = mem[pc][7:11];
    assign addr2 = mem[pc][12:16];

    always @(posedge clk or negedge rstN) begin
        if(~rstN) begin
            pc <= 0;
        end
        else begin
            pc <= pc + 1;
        end
    end

endmodule