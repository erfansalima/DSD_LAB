library verilog;
use verilog.vl_types.all;
entity Az1_vlg_sample_tst is
    port(
        D0              : in     vl_logic_vector(3 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Az1_vlg_sample_tst;
