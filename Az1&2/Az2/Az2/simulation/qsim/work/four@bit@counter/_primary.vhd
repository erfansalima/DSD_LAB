library verilog;
use verilog.vl_types.all;
entity fourBitCounter is
    port(
        Q               : out    vl_logic_vector(3 downto 0);
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        up_down         : in     vl_logic
    );
end fourBitCounter;
