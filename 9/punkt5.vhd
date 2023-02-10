LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY punkt5 IS
PORT (x0: in std_logic_vector(1 to 0);
	y0: in std_logic_vector(1 to 0);
	x1: in std_logic_vector(1 to 0);
	y1: in std_logic_vector(1 to 0);
	xmy0, xly0, xey0 : in std_logic;
	xmy, xly, xey : out std_logic
);
end punkt5;

architecture behave of punkt5 is
	signal tmpxmy0, tmpxly0, tmpxey0: std_logic;
	component punkt4
		port(x, y: in std_logic_vector(0 to 1);
			xmy0, xly0, xey0 : in std_logic;
			xmy, xly, xey : out std_logic
		);
	end component;


	begin
	cmp1: punkt4
		port map(x0, y0, xmy0, xly0, xey0, tmpxmy0, tmpxly0, tmpxey0);
	cmp2: punkt4
		port map(x1, y1, tmpxmy0, tmpxly0, tmpxey0, xmy, xly, xey);

end behave;

configuration con of punkt5 is
	for behave
		for cmp1, cmp2: punkt4
			use entity work.punkt4(behave);
		end for;
	end for;
end con;
