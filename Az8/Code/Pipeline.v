`include "macros.v"

module Pipeline (
    input clk, rstN
);

wire [4:0] inst_addr1, inst_addr2, inst_addr3;
wire [1:0] inst_op;
wire `complex mem_read1, mem_read2, alu_res;

reg [4:0] buff_addr3, buff2_addr3, addr1, addr2, addr3;
reg [1:0] buff_op, op;
reg `complex read1, read2, write;

Memory mem(addr1, addr2, write, addr3, mem_read1, mem_read2);
ALU alu(read1, read2, op, alu_res);
Instruction inst(clk, rstN, inst_op, inst_addr1, inst_addr2, inst_addr3);

always @(posedge clk or negedge rstN) begin
    if (rstN) begin
        // inst
        addr1 <= inst_addr1;
        addr2 <= inst_addr2;
        buff_op <= inst_op;
        buff_addr3 <= inst_addr3;

        // mem
        read1 <= mem_read1;
        read2 <= mem_read2;
        op <= buff_op;
        buff2_addr3 <= buff_addr3;

        // ALU
        addr3 <= buff2_addr3;
        write <= alu_res;

        $display("%d buff_op=%b, buff_addr3=%d, addr1=%d, addr2=%d", $time, buff_op, buff_addr3, addr1, addr2);
        $display("%d op=%b, buff2_addr3=%d, read1=(%d, %d), read2=(%d, %d)", $time, op, buff2_addr3, `sRe(read1), `sIm(read1), `sRe(read2), `sIm(read2));
        $display("%d addr3=%d, write=(%d, %d)\n", $time, addr3, `sRe(write), `sIm(write));
    end
end
    
endmodule
