module pipeline_TB;

reg rstN = 0, clk = 1;
Pipeline pipeline(clk, rstN);

always #5 clk = ~clk;
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, pipeline_TB);
    $readmemb("data/instruction_memory.txt", pipeline.inst.mem, 0, 31);
    $readmemb("data/initial_memory.txt", pipeline.mem.mem, 0, 31);
    
    #20 rstN = 1;
    wait(pipeline.inst.pc == 18);
    $writememb("data/final_memory.txt", pipeline.mem.mem);
    $finish();
end

endmodule
