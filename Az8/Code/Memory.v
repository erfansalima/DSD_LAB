`include "macros.v"

module Memory (
    input [`A_LEN-1:0] addr1,
    input [`A_LEN-1:0] addr2,
    input `complex write,
    input [`A_LEN-1:0] addr3,
    output `complex read1,
    output `complex read2
);
    reg `complex mem [`MEM_LEN-1:0];

    assign read1 = mem[addr1];
    assign read2 = mem[addr2];
    always @(*) mem[addr3] <= write;
endmodule