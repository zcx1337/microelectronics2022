library IEEE;
use IEEE.std_logic_1164.ALL;

entity coder1_2 is
port
(  
	r : in std_logic_vector(7 downto 0);
	en: in std_logic;
      e0: out std_logic;
	a : out std_logic_vector(2 downto 0);
	g : inout std_logic
);
end coder1_2;

architecture behav of coder1_2 is
begin
    process (r, en)
	begin
		if (en='0') then a <= "000";
		else
			g <= r(0) or r(1) or r(2) or r(3) or r(4) or r(5) or r(6) or r(7);
			e0 <= not g;
			if r(7) = '1'    THEN a <= "111";
			elsif r(6) = '1' THEN a <= "110";
			elsif r(5) = '1' THEN a <= "101";
			elsif r(4) = '1' THEN a <= "100";
			elsif r(3) = '1' THEN a <= "011";
			elsif r(2) = '1' THEN a <= "010";
			elsif r(1) = '1' THEN a <= "001";
			elsif r(0) = '1' THEN a <= "000";
			else                  a <= "000";
			end if;
		end if;
	end process;
end behav;
