library IEEE;
use IEEE.std_logic_1164.ALL;

entity coder64_6 is
	port (
			r : in std_logic_vector (63 downto 0);
			en1: in std_logic;
			en2: in std_logic;
			a : inout std_logic_vector (5 downto 0);
			e0: inout std_logic;
			e00: inout std_logic;
			g : inout std_logic;
			ad: inout std_logic_vector (23 downto 0);
			gd: inout std_logic_vector (7 downto 0);
			ed: inout std_logic_vector (6 downto 0)
		);
end coder64_6;

architecture behave of coder64_6 is

component coder1_2 is
	port (
			r :  in std_logic_vector(7 downto 0);
			en:  in std_logic;
            e0:  inout std_logic;
			a :  inout std_logic_vector(2 downto 0);
			g : inout std_logic
		);
end component;

component or8 is
	port (
		x0 : in std_logic;
		x1 : in std_logic;
		x2 : in std_logic;
		x3 : in std_logic;
		x4 : in std_logic;
		x5 : in std_logic;
		x6 : in std_logic;
		x7 : in std_logic;
		y : inout std_logic
		);
end component;

begin
	c8 : coder1_2
	port map(gd, en2, e0, a(5 downto 3), g);
	c7 : coder1_2
	port map(r(63 downto 56), en1, ed(6), ad(23 downto 21), gd(7));
	c6 : coder1_2
	port map(r(55 downto 48), ed(6), ed(5), ad(20 downto 18), gd(6));
	c5 : coder1_2
	port map(r(47 downto 40), ed(5), ed(4), ad(17 downto 15), gd(5));
	c4 : coder1_2
	port map(r(39 downto 32), ed(4), ed(3), ad(14 downto 12), gd(4));
	c3 : coder1_2
	port map(r(31 downto 24), ed(3), ed(2), ad(11 downto 9), gd(3));
	c2 : coder1_2
	port map(r(23 downto 16), ed(2), ed(1), ad(8 downto 6), gd(2));
	c1 : coder1_2
	port map(r(15 downto 8), ed(1), ed(0), ad(5 downto 3), gd(1));
	c0 : coder1_2
	port map(r(7 downto 0), ed(0), e00, ad(2 downto 0), gd(0));

	o0 : or8
	port map(ad(21), ad(18), ad(15), ad(12), ad(9), ad(6), ad(3), ad(0), a(0));
	o1 : or8
	port map(ad(22), ad(19), ad(16), ad(13), ad(10), ad(7), ad(4), ad(1), a(1));
	o2 : or8
	port map(ad(23), ad(20), ad(17), ad(14), ad(11), ad(8), ad(5), ad(2), a(2));
end;

configuration con of coder64_6 is
FOR behav
		FOR c0,c1,c2,c3,c4,c5,c6,c7:coder1_2
			USE ENTITY work.coder1_2 (behav);
		END FOR;
		FOR o0,o1,o2:or8
			USE ENTITY work.or8 (behave);
		END FOR;

	END FOR;

end con;







