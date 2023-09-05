module TB;
    reg [3:0] A, B;
    reg rstn = 1, clk = 1;
    wire [7:0] res;
    wire finish;

    Multiply mul(A, B, rstn, clk, res, finish);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, TB);
        rstn = 0;
        A = 6; B = 7;
        #10
        rstn = 1;
        #50
        rstn = 0;
        A = 3; B = 3;
        #10
        rstn = 1;
        #50
        rstn = 0;
        A = 8; B = 5;
        #10
        rstn = 1;
        #50
        $finish();
    end

endmodule
