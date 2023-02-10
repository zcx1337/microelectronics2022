LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity punkt9 is
port
(
	X1, X2, X3, X4, write, read, reset: in std_logic;
	Q1, Q2, Q3, Q4: out std_logic
);
end punkt9;

architecture behav of punkt9 is
SIGNAL Q1a: std_logic;
SIGNAL Q2a: std_logic;
SIGNAL Q3a: std_logic;
SIGNAL Q4a: std_logic;
begin
	process(read, write, reset)
	begin
		if reset = '1' then
			if write = '1' then
				Q1a<=X1;
				Q2a<=X2;
				Q3a<=X3;
				Q4a<=X4;
			end if;
		else
			Q1a<='0';
			Q2a<='0';
			Q3a<='0';
			Q4a<='0';
		end if;
		if read = '1' then
			Q1<=Q1a;
			Q2<=Q2a;
			Q3<=Q3a;
			Q4<=Q4a;
		else
			Q1<='0';
			Q2<='0';
			Q3<='0';
			Q4<='0';
		end if;
	end process;
end behav;

