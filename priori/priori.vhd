library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity priori is
port ( dia   : in  STD_LOGIC;
		 pea1  : in  STD_LOGIC;
       pea2  : in  STD_LOGIC;
		 clk   : in  STD_LOGIC;
       Sem1  : out STD_LOGIC_VECTOR (2 downto 0);
		 Sem2  : out STD_LOGIC;
		 Sem3  : out STD_LOGIC_VECTOR (2 downto 0);
       Sem4  : out STD_LOGIC;
		 Dis_1 : out std_LOGIC_VECTOR(6 downto 0);
		 Dis_2 : out std_LOGIC_VECTOR(6 downto 0)
);

end priori;

architecture qpriori of priori is
 
component divi50
PORT (clk : IN STD_LOGIC;
       out2 : BUFFER STD_LOGIC);
end component;

component contador45
port (Clk:in std_logic;
		Up: in std_logic;
		Q: out std_logic_vector(7 downto 0));
end component;

component De_Bi
port ( BI : in  STD_LOGIC_VECTOR (7 downto 0);
       DE : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component BCD
port ( HEXA : in  STD_LOGIC_VECTOR (3 downto 0);
       LED : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component contador10 
port (Clk:in std_logic;
		Up: in std_logic;
		Q: out std_logic_vector(7 downto 0));
end component;
signal M   : STD_LOGIC_VECTOR(7 downto 0);
signal M0  : std_LOGIC;
signal M1  : std_lOGIC_VECTOR(7 downto 0);
signal M2  : std_lOGIC_VECTOR(7 downto 0);
signal M3  : std_lOGIC_VECTOR(7 downto 0);
signal M4  : std_lOGIC_VECTOR(7 downto 0);
signal BI  : std_LOGIC_VECTOR(7 downto 0);
signal DE  : std_LOGIC_VECTOR(7 downto 0);
signal Uni : std_LOGIC_VECTOR(3 downto 0):=DE(3 downto 0);
signal Dec : std_LOGIC_VECTOR(3 downto 0):=DE (7 downto 4);
signal sDis_1 : std_LOGIC_VECTOR(6 downto 0);
signal sDis_2 : std_LOGIC_VECTOR(6 downto 0);

begin

L0 : divi50 port map (clk,M0);
L1 : contador45 port map (M0,dia,M1);
L2 : De_Bi port map(M,DE);
L3 : BCD port map(Uni,Dis_1);
L4 : BCD port map(Dec,Dis_2);
L5 : contador10 port map (M0,pea1,M3);
L6 : contador10 port map (M0,pea2,M4);

process (M1,M3,M4) begin
if(pea1='1')then
		M<=M3;
	if (M3<="00001010") then
		Sem1<="000";
		Sem2<='0';
		Sem3<="000";
		Sem4<='1';
end if;

elsif (pea2='1') then
		M<=M4;
	
	if (M4<="00001010") then
		Sem1<="000";
		Sem2<='1';
		Sem3<="000";
		Sem4<='0';

end if;
else
		M<=M2;
		 if (M1<="10011011") then
	Sem1<="001";
	Sem2<='1';
	Sem3<="100";
	Sem4<='1';
 end if;
	if(M1<="1101110") then
		Sem1<="010";
		Sem2<='0';
		Sem3<="000";
		Sem4<='0';
	end if;	
		if(M1<="1101001") then
			Sem1<="100";
			Sem2<='0';
			Sem3<="000";
			Sem4<='0';
		end if;
			if(M1<="01010101") then
				Sem1<="000";
				Sem2<='0';
				Sem3<="000";
				Sem4<='0';
			end if;
				if(M1<="01000110") then
					Sem1<="000";
					Sem2<='0';
					Sem3<="001";
					Sem4<='0';
				end if;
					if(M1<="00101000") then
						Sem1<="000";
						Sem2<='0';
						Sem3<="010";
						Sem4<='0';
					end if;
						if(M1<="00100011") then
							Sem1<="000";
							Sem2<='0';
							Sem3<="100";
							Sem4<='0';
						end if;
							if(M1<="00001111") then
								Sem1<="000";
								Sem2<='0';
								Sem3<="000";
								Sem4<='0';
							end if;

if (M1 <= "01010101") then
    M2 <= M1 - 70;    
elsif (M1 = "01000110") then
    sDis_1 <= "1111111";
    sDis_2 <= "1111111";
end if;



if (M1<="00001111") then
	M2<=M1;
if (M1="00000000") then
	sDis_1<="1111111";
	sDis_2<="1111111";
end if; 
end if;
end if;
end process;

end qpriori;