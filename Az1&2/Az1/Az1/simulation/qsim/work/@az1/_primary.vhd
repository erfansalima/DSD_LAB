library verilog;
use verilog.vl_types.all;
entity Az1 is
    port(
        R3              : out    vl_logic;
        D0              : in     vl_logic_vector(3 downto 0);
        D1              : in     vl_logic_vector(3 downto 0);
        D2              : in     vl_logic_vector(3 downto 0);
        D3              : in     vl_logic_vector(3 downto 0);
        R11             : out    vl_logic
    );
end Az1;
