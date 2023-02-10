LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY notand IS
PORT
(
	a : IN std_logic;
	b : IN std_logic;
	c : OUT std_logic
);
END notand;
ARCHITECTURE behavior OF notand IS
BEGIN
	c <= NOT ( a AND b );
END behavior;
