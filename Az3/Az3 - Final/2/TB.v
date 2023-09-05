module TB;
    reg a, b, clk = 1, reset;
    wire G, E, L;

    comparator cmp(a, b, clk, reset, G, E, L);

    always #2 clk = ~clk;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        reset = 1; a = 0; b = 0;
        #4 reset = 0; a = 0; b = 0;
        #4 a = 1; b = 1;
        #4 a = 0; b = 1;
        #4 a = 1; b = 0;
        #4 a = 1; b = 1;
        #4 reset = 1;
        #4 reset = 0; a = 0; b = 0;
        #4 a = 1; b = 1;
        #4 a = 1; b = 0;
        #4 a = 0; b = 1;
        #4 a = 0; b = 0;
        #4 $finish();
    end
endmodule