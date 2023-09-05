library verilog;
use verilog.vl_types.all;
entity Incubator is
    port(
        temperature     : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        heater          : out    vl_logic;
        cooler          : out    vl_logic;
        crs             : out    vl_logic_vector(3 downto 0)
    );
end Incubator;
