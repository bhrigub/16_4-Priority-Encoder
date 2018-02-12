library verilog;
use verilog.vl_types.all;
entity pe is
    port(
        op              : out    vl_logic_vector(3 downto 0);
        valid           : out    vl_logic;
        ip              : in     vl_logic_vector(15 downto 0)
    );
end pe;
