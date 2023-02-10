library ieee;
library IEEE;

use ieee.std_logic_1164.ALL;

entity coder2_2 is
port
(
	x : in std_logic_vector(15 downto 0);
	enable : in std_logic;
	y : out std_logic_vector(3 downto 0)  
);
end coder2_2;

architecture behav of coder2_2 is

component coder1_2
port
(
	r : in std_logic_vector(7 downto 0);
	en: in std_logic;
    e0: out std_logic;
	a : out std_logic_vector(2 downto 0);
	g : out std_logic
);
end component;

component coderor
port
(
	x1 : in std_logic;
	x2 : in std_logic;
	y : out std_logic
);
end component;

component codernot
port
(
	x : in std_logic;
	y : out std_logic
);
end component;

signal z :  std_logic_vector(2 downto 0);
signal q :  std_logic_vector(2 downto 0);
signal w :  std_logic;
signal zero :  std_logic;
signal zero1 :  std_logic;
signal zero2 :  std_logic;

begin	
coderfirst: coder1_2
		port map (x(15 downto 8), enable, w, z(2 downto 0), zero1);	
codersecond: coder1_2
		port map (x(7 downto 0), w, zero, q(2 downto 0), zero2);
or1: coderor
		port map (z(0), q(0), y(0));
or2: coderor
		port map (z(1), q(1), y(1));
or3: coderor
		port map (z(2), q(2), y(2));
not1: codernot
   		port map (w, y(3));
end behav;

