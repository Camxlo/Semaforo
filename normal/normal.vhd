library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
entity normal is
port ( dia   : in  STD_LOGIC;
		 clk   : in  STD_LOGIC;
       Sem1  : out STD_LOGIC_VECTOR (2 downto 0);
		 Sem2  : out STD_LOGIC;
		 Sem3  : out STD_LOGIC_VECTOR (2 downto 0);
       Sem4  : out STD_LOGIC;
		 Dis_1 : out std_LOGIC_VECTOR(6 downto 0);
		 Dis_2 : out std_LOGIC_VECTOR(6 downto 0)
		 );

end normal;

architecture qnormal of normal is
 
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

signal M0  : std_LOGIC;
signal M1  : std_lOGIC_VECTOR(7 downto 0);
signal M2  : std_lOGIC_VECTOR(7 downto 0);
signal BI  : std_LOGIC_VECTOR(7 downto 0);
signal DE  : std_LOGIC_VECTOR(7 downto 0);
signal Uni : std_LOGIC_VECTOR(3 downto 0):=DE(3 downto 0);
signal Dec : std_LOGIC_VECTOR(3 downto 0):=DE(7 downto 4);
signal sDis_1 : std_LOGIC_VECTOR(6 downto 0);
signal sDis_2 : std_LOGIC_VECTOR(6 downto 0);

begin

L0 : divi50 port map (clk,M0);
L1 : contador45 port map (M0,dia,M1);
L2 : De_Bi port map(M2,DE);
L3 : BCD port map(Uni,Dis_1);
L4 : BCD port map(Dec,Dis_2);

process (M1) begin
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
end process;



	
end qnormal;