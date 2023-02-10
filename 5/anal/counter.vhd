library IEEE;
use IEEE.std_logic_1164.all;
entity counter is
port
(
	c, r: in std_logic;
	q1, q2, q3, q4: inout std_logic
);
end counter;

architecture behav of counter is
begin
	process (c, r)
	begin
		if (r = '0') then
			q1 <= '0';
			q2 <= '0';
			q3 <= '0';
			q4 <= '0';
		elsif (c'event and c = '1') then
			q1 <= not q1;
			if (q1 = '1') then
				q2 <= not q2;
				if (q2 = '1') then
					q3 <= not q3;
					if (q3 = '1') then
						q4 <= not q4;
					end if;
				end if;
			end if;
		end if;
	end process;
end behav;
