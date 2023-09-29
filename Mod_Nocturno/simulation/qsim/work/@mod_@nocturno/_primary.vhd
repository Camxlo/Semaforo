library verilog;
use verilog.vl_types.all;
entity Mod_Nocturno is
    port(
        noche           : in     vl_logic;
        clk             : in     vl_logic;
        Sem1            : out    vl_logic_vector(2 downto 0);
        Sem2            : out    vl_logic;
        Sem3            : out    vl_logic_vector(2 downto 0);
        Sem4            : out    vl_logic
    );
end Mod_Nocturno;
