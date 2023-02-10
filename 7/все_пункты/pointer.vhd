library IEEE;
use IEEE.std_logic_1164.ALL;

entity pointer is
            port (  
				r : in std_logic_vector(7 downto 0);
				en: in std_logic;
                e0: out std_logic;
				f : out std_logic_vector(7 downto 0);
				a : inout std_logic_vector(2 downto 0);
				g : inout std_logic
				);
end pointer;

architecture behav of pointer is

component coder1 is
	port (  
			r : in std_logic_vector(7 downto 0);
			en: in std_logic;
            e0: out std_logic;
			a : out std_logic_vector(2 downto 0);
			g : out std_logic
		);
end component;

component deshifr is
	port ( 
			a : in std_logic_vector (2 downto 0);
			en : in std_logic;
            q : out std_logic_vector (7 downto 0)
		);
end component;
begin
   c: coder1
	port map(r, en, e0, a, g);
   d: deshifr
	port map(a, g, f);
end behav;

configuration con of pointer is
	for behav
		for c: coder1
		use entity work.coder1(behav);
		end for;

		for d: deshifr
		use entity work.deshifr(behav);
		end for;
	end for;
end con;



