library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Semaforo_Int is
port (dia   : in  STD_LOGIC;
		amb1  : in  STD_LOGIC;
		amb2  : in  STD_LOGIC;
		clk   : in  STD_LOGIC;
		pea1  : in std_LOGIC;
		pea2  : in std_LOGIC;
		noche : in std_LOGIC;
		Sem1  : out STD_LOGIC_VECTOR (2 downto 0);
		Sem2  : out STD_LOGIC;
		Sem3  : out STD_LOGIC_VECTOR (2 downto 0);
		Sem4  : out STD_LOGIC;
		Dis_1 : out std_LOGIC_VECTOR(6 downto 0);
		Dis_2 : out std_LOGIC_VECTOR(6 downto 0)
);

end Semaforo_Int;

architecture qsem of Semaforo_Int is

component normal 
port ( dia   : in  STD_LOGIC;
		 clk   : in  STD_LOGIC;
       Sem1  : out STD_LOGIC_VECTOR (2 downto 0);
		 Sem2  : out STD_LOGIC;
		 Sem3  : out STD_LOGIC_VECTOR (2 downto 0);
       Sem4  : out STD_LOGIC;
		 Dis_1 : out std_LOGIC_VECTOR(6 downto 0);
		 Dis_2 : out std_LOGIC_VECTOR(6 downto 0)
		 );

end component;

component Mod_Nocturno 
port ( noche : in  STD_LOGIC;
		 clk : in STD_LOGIC;
       Sem1 : out STD_LOGIC_VECTOR (2 downto 0);
		 Sem2 : out STD_LOGIC;
		 Sem3 : out STD_LOGIC_VECTOR (2 downto 0);
       Sem4 : out STD_LOGIC);

end component;

component urg
port (dia   : in  STD_LOGIC;
		amb1  : in  STD_LOGIC;
		amb2  : in  STD_LOGIC;
		clk   : in  STD_LOGIC;
		Sem1  : out STD_LOGIC_VECTOR (2 downto 0);
		Sem2  : out STD_LOGIC;
		Sem3  : out STD_LOGIC_VECTOR (2 downto 0);
		Sem4  : out STD_LOGIC;
		Dis_1 : out std_LOGIC_VECTOR(6 downto 0);
		Dis_2 : out std_LOGIC_VECTOR(6 downto 0)
);

end component;

component priori
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

end component;
end qsem;