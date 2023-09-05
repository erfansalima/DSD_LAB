module testbench;
    parameter STACK_DEPTH = 8;
    parameter STACK_WIDTH = 4;
    reg Clk = 0, RstN = 0, Push = 0, Pop = 0;
    reg [STACK_WIDTH-1:0] Data_In;
    wire Full, Empty;
    wire [STACK_WIDTH-1:0] Data_Out;
    stack stackTest(Clk, RstN, Data_In, Push, Pop, Data_Out, Full, Empty);
    always #5 Clk = ~Clk;
    integer i;
    reg [STACK_WIDTH-1:0] temp = 8'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
        RstN = 0;
        #5 RstN = 1;
        $display("Full = %d, Empty = %d", Full, Empty);
        for(i = 0; i < STACK_DEPTH; i = i + 1) begin
            Data_In = temp; Push = 1;
            #10 temp = temp + 1;
            $display("Full = %d, Empty = %d", Full, Empty);
        end 
        Push =0; Pop = 1;
        #10 $display("Data_Out = %d",Data_Out);
        Push =0; Pop = 1;
        #10 $display("Data_Out = %d",Data_Out);
        Push =0; Pop = 1;
        #10 $display("Data_Out = %d",Data_Out);
        Push =0; Pop = 1;
        #10 $display("Data_Out = %d",Data_Out);

        Data_In = 11; Push = 1; Pop = 0;
        #10 
        Data_In = 12; Push = 1; Pop = 0;
        #10
        Push =0; Pop = 1;
        #10 $display("Data_Out = %d",Data_Out);
        $display("Full = %d, Empty = %d", Full, Empty);
        $finish;
    end
endmodule
