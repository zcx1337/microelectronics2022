LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY punkt4_dc64 IS
PORT( r,i0,i1,i2,i3,i4,i5:in std_logic;
	o0,o1,o2,o3,o4,o5,o6,o7,
o8,o9,o10,o11,o12,o13,o14,o15,
o16,o17,o18,o19,o20,o21,o22,o23,
o24,o25,o26,o27,o28,o29,o30,o31,
o32,o33,o34,o35,o36,o37,o38,o39,
o40,o41,o42,o43,o44,o45,o46,o47,
o48,o49,o50,o51,o52,o53,o54,o55,
o56,o57,o58,o59,o60,o61,o62,o63:out std_logic);
END punkt4_dc64;

ARCHITECTURE behav OF punkt4_dc64 IS
signal t1,t2,t3,t4,t5,t6,t7,t8 : std_logic;
	COMPONENT punkt3
		PORT( r,a0,a1,a2 : in std_logic;
			q0,q1,q2,q3,q4,q5,q6,q7 : out std_logic);
	END COMPONENT;
BEGIN
u0: punkt3
 PORT MAP ( r, i3, i4, i5, t1, t2, t3, t4, t5, t6, t7, t8);
u1: punkt3
 PORT MAP ( t1, i0, i1, i2, o0, o1, o2, o3, o4, o5, o6, o7);
u2: punkt3
 PORT MAP ( t2, i0, i1, i2, o8, o9, o10, o11, o12, o13, o14, o15);
u3: punkt3
 PORT MAP ( t3, i0, i1, i2, o16, o17, o18, o19, o20, o21, o22, o23);
u4: punkt3
 PORT MAP ( t4, i0, i1, i2, o24, o25, o26, o27, o28, o29, o30, o31);
u5: punkt3
 PORT MAP ( t5, i0, i1, i2, o32, o33, o34, o35, o36, o37, o38, o39);
u6: punkt3
 PORT MAP ( t6, i0, i1, i2, o40, o41, o42, o43, o44, o45, o46, o47);
u7: punkt3
 PORT MAP ( t7, i0, i1, i2, o48, o49, o50, o51, o52, o53, o54, o55);
u8: punkt3
 PORT MAP ( t8, i0, i1, i2, o56, o57, o58, o59, o60, o61, o62, o63);

END behav;
CONFIGURATION con OF punkt4_dc64 IS
 	FOR behav
 		FOR u0,u1,u2,u3,u4,u5,u6,u7,u8: punkt3
 			USE ENTITY work.punkt3(behav); 
		END FOR; 
	END FOR;
END con;

