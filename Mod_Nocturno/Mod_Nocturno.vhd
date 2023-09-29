library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity Mod_Nocturno is
port ( noche : in  STD_LOGIC;
		 clk : in STD_LOGIC;
       Sem1 : out STD_LOGIC_VECTOR (2 downto 0);
		 Sem2 : out STD_LOGIC;
		 Sem3 : out STD_LOGIC_VECTOR (2 downto 0);
       Sem4 : out STD_LOGIC);

end Mod_Nocturno;

architecture qnocturno of Mod_Nocturno is
 
component divi50
PORT (clk : IN STD_LOGIC;
       out2 : BUFFER STD_LOGIC);
END component;

component contador10 is
port (Clk:in std_logic;
		Up: in std_logic;
		Q: out std_logic_vector(7 downto 0));
end component;

signal M0 : std_LOGIC;
signal M1 : std_lOGIC_VECTOR(7 downto 0);

begin
L0 : divi50 port map (Clk,M0);
L1 : contador10 port map (M0,noche,M1);

Process (M1)
BEGIN
If (M1 = "00001010") THEN
Sem1<="100";
Sem2<='1';
Sem3<="100";
Sem4<='1';

elsif (M1<="00000101") then
Sem1<="000";
Sem2<='0';
Sem3<="000";
Sem4<='0';

end if;

end process;

end qnocturno;