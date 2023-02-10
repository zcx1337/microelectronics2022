library IEEE;
use IEEE.std_logic_1164.ALL;

entity or8 is
	port (
		x : in std_logic_vector(7 downto 0);
		y : inout std_logic
		);
end or8;

architecture behave of or8 is
begin
	process (x)
		begin
			y <= (x(0) or x(1) or x(2) or x(3) or x(4) or x(5) or x(6) or x(7));
		end process;
end;
