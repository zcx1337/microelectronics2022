library IEEE;
use IEEE.std_logic_1164.ALL;

entity codernot is
port
(
	x : in std_logic;
	y : out std_logic
);
end codernot;

architecture behave of codernot is
begin
	y <= not x;
end;

