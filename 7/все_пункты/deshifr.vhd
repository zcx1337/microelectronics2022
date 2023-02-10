library IEEE;
use IEEE.std_logic_1164.ALL;

entity deshifr is
          port ( a : in std_logic_vector (2 downto 0);
				en : in std_logic;
                 q : out std_logic_vector (7 downto 0));
     end deshifr;

architecture behav of deshifr is

  begin
    process (a,en)
      begin
		if (en='1') then
         case a is
		when "000" => q <= "11111110";
		when "001" => q <= "11111101";
		when "010" => q <= "11111011";
		when "011" => q <= "11110111";
		when "100" => q <= "11101111";
		when "101" => q <= "11011111";
		when "110" => q <= "10111111";
		when "111" => q <= "01111111";
		when others => q<= "11111111";
		end case;
		else
			q <= "11111111";
		end if;
      end process;
end behav;

