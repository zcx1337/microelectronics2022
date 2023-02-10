library IEEE;
use IEEE.std_logic_1164.ALL;

entity coderor is
port
(
	x1 : in std_logic;
	x2 : in std_logic;
	y : out std_logic
);
end coderor;

architecture behave of coderor is
begin
	y <= x1 or x2;
end;

