LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY lab8task4pt1 IS
	PORT (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,
x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,
x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,
x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,
x55,x56,x57,x58,x59,x60,x61,x62,x63,
a0,a1,a2,a3,a4,a5,e : in std_logic;
q: out std_logic);
END lab8task4pt1;

ARCHITECTURE behave OF lab8task4pt1 IS
SIGNAL qt1,qt2,qt3,qt4,qt5,qt6,qt7,qt8,qt9,qt10,qt11,qt12,qt13,qt14,qt15,qt16, qt217,qt218,qt219,qt220 : std_logic;
COMPONENT lab8task2
	PORT(x0,x1,x2,x3,a0,a1,e: IN std_logic;
	q: OUT std_logic);
END COMPONENT;

BEGIN
	mux1: lab8task2
	 PORT MAP(x0,x1,x2,x3,a0,a1,e, qt1);
	mux2: lab8task2
	 PORT MAP(x4,x5,x6,x7,a0,a1,e, qt2);
	mux3: lab8task2
	 PORT MAP(x8,x9,x10,x11,a0,a1,e, qt3);
	mux4: lab8task2
	 PORT MAP(x12,x13,x14,x15,a0,a1,e, qt4);
	mux5: lab8task2
	 PORT MAP(x16,x17,x18,x19,a0,a1,e, qt5);
	mux6: lab8task2
	 PORT MAP(x20,x21,x22,x23,a0,a1,e, qt6);
	mux7: lab8task2
	 PORT MAP(x24,x25,x26,x27,a0,a1,e, qt7);
	mux8: lab8task2
	 PORT MAP(x28,x29,x30,x31,a0,a1,e, qt8);
	mux9: lab8task2
	 PORT MAP(x32,x33,x34,x35,a0,a1,e, qt9);
	mux10: lab8task2
	 PORT MAP(x36,x37,x38,x39,a0,a1,e, qt10);
	mux11: lab8task2
	 PORT MAP(x40,x41,x42,x43,a0,a1,e, qt11);
	mux12: lab8task2
	 PORT MAP(x44,x45,x46,x47,a0,a1,e, qt12);
	mux13: lab8task2
	 PORT MAP(x48,x49,x50,x51,a0,a1,e, qt13);
	mux14: lab8task2
	 PORT MAP(x52,x53,x54,x55,a0,a1,e, qt14);
	mux15: lab8task2
	 PORT MAP(x56,x57,x58,x59,a0,a1,e, qt15);
	mux16: lab8task2
	 PORT MAP(x60,x61,x62,x63,a0,a1,e, qt16);
	mux217: lab8task2
	 PORT MAP(qt1,qt2,qt3,qt4,a2,a3,e, qt217);
	mux218: lab8task2
	 PORT MAP(qt5,qt6,qt7,qt8,a2,a3,e, qt218);
	mux219: lab8task2
	 PORT MAP(qt9,qt10,qt11,qt12,a2,a3,e, qt219);
	mux220: lab8task2
	 PORT MAP(qt13,qt14,qt15,qt16,a2,a3,e, qt220);
	mux321: lab8task2
	 PORT MAP(qt217,qt218,qt219,qt220,a4,a5,e, q);


	
END behave;

CONFIGURATION cond OF lab8task4pt1 IS
	FOR behave
		FOR mux1,mux2,mux3,mux4,mux5,mux6,mux7,mux8,mux9,mux10,mux11,mux12,mux13,mux14,mux15,mux16,mux217,mux218,mux219,mux220,mux321: lab8task2 
			USE ENTITY work.lab8task2(behav);
		END FOR;
	END FOR;
END cond;

