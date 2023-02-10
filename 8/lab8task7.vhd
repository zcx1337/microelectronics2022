LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY lab8task7 IS
PORT( X0,X1,E: IN std_logic;
	F: OUT std_logic_vector(0 to 3));
END lab8task7;
ARCHITECTURE behav OF lab8task7 IS
BEGIN
PROCESS(X0,X1,E)
	BEGIN
		if(E='0') then
			F<="0000";
		elsif(X0='1'and X1='1') then
			F<="1000";
		elsif(X0='1'and X1='0') then
			F<="0010";
		elsif(X0='0'and X1='1') then
			F<="0100";
		elsif(X0='0'and X1='0') then
			F<="0001";
		end if;
END PROCESS;
END behav;
