LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY lab11task2 IS
PORT( A: in std_logic_vector(0 to 1);
	D,C: in std_logic;
	Q: out std_logic);
END lab11task2;
ARCHITECTURE behav OF lab11task2 IS
	SIGNAL Qt:std_logic_vector(0 to 3):="0000";
BEGIN
PROCESS(A,C,D)
	BEGIN
		if(A="00") then
					Q<=Qt(3);
				elsif(A="01") then
					Q<=Qt(2); 
				elsif(A="10") then
					Q<=Qt(1); 
				elsif(A="11") then
					Q<=Qt(0);
				end if;

		IF (C'event and C='1') THEN
				if(A = "00") then
					Qt(3)<=D;
				elsif(A="01") then
					Qt(2)<=D; 
				elsif(A="10") then
					Qt(1)<=D; 
				elsif(A="11") then
					Qt(0)<=D;
				end if;
		END IF;
END PROCESS;
END behav;
