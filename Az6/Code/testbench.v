module testbench;

reg signed [7:0] temperature;
reg clk = 0;
reg reset = 0;
wire [3:0] crs;
wire heater;
wire cooler;

Incubator incubator(temperature, clk, reset, heater, cooler, crs);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testbench);
    temperature = 8'd20;
    #20 reset = 1;
    #20 temperature = 8'd40;
    #20 temperature = 8'd20;
    #20 temperature = 8'd10;
    #20 reset = 0;
    #20 reset = 1;
    #20 temperature = 8'd40;
    #20 temperature = 8'd45;
    #20 temperature = 8'd50;
    #40 temperature = 8'd20;
    #100 $stop;
end

always
  #10 clk = ~clk;

endmodule