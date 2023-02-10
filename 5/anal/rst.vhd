library IEEE;
use IEEE.std_logic_1164.all;
entity rstvhd is
port
(
	t, r, s: in std_logic;
	q, qi: inout std_logic
);
end rstvhd;

architecture behav of rstvhd is
begin
	process (t, r, s)
	begin
		if (r = '0') then
			q <= '0';
			qi <= '1';
		elsif (s = '0') then
			q <= '1';
			qi <= '0';
		elsif (t'event and t = '1') then
			q <= not q;
			qi <= not qi;
		end if;
	end process;
end behav;
