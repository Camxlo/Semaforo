library verilog;
use verilog.vl_types.all;
entity Mod_Nocturno_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        noche           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Mod_Nocturno_vlg_sample_tst;
