library verilog;
use verilog.vl_types.all;
entity WaitingRoom_vlg_check_tst is
    port(
        close           : in     vl_logic;
        \open\          : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end WaitingRoom_vlg_check_tst;
