library IEEE;
use IEEE.std_logic_1164.ALL;

entity coder15-4 is
              port (  ei  :  in std_logic;
                  e0  :  out std_logic;
                r  :  in std_logic_vector(7 downto 0);
                a  :  out std_logic_vector(2 downto 0) 
 );
end coder15-4;

architecture behav of coder15-4 is
begin
      process (r, ei)
	begin
		if (ei='0') then a <= "000";
		else
		e0 <= not(r(0) or r(1) or r(2) or r(3) or r(4) or r(5) or r(6) or r(7)) and ei;
			case r is
				when "00000001" => a <="000";
				when "00000010" => a <="001";
				when "00000100" => a <="010";
				when "00001000" => a <="011";
				when "00010000" => a <="100";
				when "00100000" => a <="101";
				when "01000000" => a <="110";
				when "10000000" => a <="111";
				when others => a <="000";
			end case;
		end if;
	end process;
end behav;

