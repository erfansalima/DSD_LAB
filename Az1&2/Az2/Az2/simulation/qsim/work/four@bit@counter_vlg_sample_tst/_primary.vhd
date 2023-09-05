library verilog;
use verilog.vl_types.all;
entity fourBitCounter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        enable          : in     vl_logic;
        up_down         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fourBitCounter_vlg_sample_tst;
