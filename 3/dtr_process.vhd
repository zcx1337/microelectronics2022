LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY dtr1 IS
PORT
(
	d : IN std_logic;
	l : IN std_logic;
	q : INOUT std_logic;
	qb : INOUT std_logic
);
END dtr1;
ARCHITECTURE behav OF dtr1 IS
	SIGNAL qs: std_logic;
BEGIN
	PROCESS (d, l)
	BEGIN
		IF l='1' THEN
			qs<=d;
		END IF;
	END PROCESS;
	q<=qs;
	qb<= NOT qs;
END behav;
