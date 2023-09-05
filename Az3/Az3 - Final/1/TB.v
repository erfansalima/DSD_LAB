module TB;
    reg [3:0] a, b;
    wire G, E, L;

    comparator cmp(a, b, G, E, L);

    integer i, j;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        a = 0; b = 0;
        for(i = 0; i < 16; i ++) begin
            for(j = 0; j < 16; j ++) begin
                #2 a = i; b = j;
            end
        end
        #2 $finish();
    end
endmodule