library verilog;
use verilog.vl_types.all;
entity Mod_Nocturno_vlg_check_tst is
    port(
        Sem1            : in     vl_logic_vector(2 downto 0);
        Sem2            : in     vl_logic;
        Sem3            : in     vl_logic_vector(2 downto 0);
        Sem4            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Mod_Nocturno_vlg_check_tst;
