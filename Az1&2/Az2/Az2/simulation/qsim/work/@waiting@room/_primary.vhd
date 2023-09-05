library verilog;
use verilog.vl_types.all;
entity WaitingRoom is
    port(
        close           : out    vl_logic;
        Q               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        \IN\            : in     vl_logic;
        \open\          : out    vl_logic;
        T               : in     vl_logic;
        Ent             : in     vl_logic;
        \OUT\           : in     vl_logic
    );
end WaitingRoom;
