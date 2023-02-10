library IEEE;
use IEEE.std_logic_1164.ALL;

entity coder64_6VHD is
	port (
	r:in std_logic_vector(63 downto 0);
    a:out std_logic_vector(5 downto 0);
    E1,E2:in std_logic;		
		);
end coder64_6VHD;

architecture behave of coder64_6VHD is

component coder64_6 is
	port (
			r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,
r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47,r48,r49,50,r51,r52,r53,r54,r55,r56,r57,r58,r59,r60,r61,r62,r63: in std_logic;
EN1,en2:in std_logic;
a0,a1,a2,a3,a4,a5:out std_logic;
		);
end component;



begin
u1:coder64_6
Port Map (r(0),r(1),r(2),r(3),r(4),r(5),r(6),r(7),r(8),r(9),r(10),r(11),r(12),r(13),r(14),r(15),r(16),r(17),r(18),r(19),r(20),r(21),r(22),r(23),r(24),
r(25),r(26),r(27),r(28),r(29),r(30),r(31),r(32),r(33),r(34),r(35),r(36),r(37),r(38),r(39),r(40),r(41),r(42),r(43),r(44),r(45),r(46),r(47),r(48)
,r(49),r(50),r(51),r(52),r(53),r(54),r(55),r(56),r(57),r(58),r(59),r(60),r(61),r(62),r(63),E1,E2,a(0),a(0),a(1),a(2),a(3),a(4),a(5));
	end;

configuration con of coder64_6 is
FOR behave
		FOR u1:coder64_6
			USE ENTITY work.coder64_6 (behave);
		END FOR;
		

	END FOR;

end con;

