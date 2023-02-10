library IEEE;
use IEEE.std_logic_1164.all;
entity punkt3 is
port ( r, a0, a1, a2 : in std_logic;
 q0, q1,q2,q3,q4,q5,q6,q7 : out std_logic);
end punkt3;
architecture behav of punkt3 is
begin
	process (a0,a1,a2,r)
	begin
			q0<='0';
			q1<='0';
			q2<='0';
			q3<='0';
			q4<='0';
			q5<='0';
			q6<='0';
			q7<='0';
		if r='1' then
			if(a2='1') then
				if(a1='1') then
					if(a0='1') then
						q7<='1';
					else
						q6<='1';
					end if;
				else
					if(a0='1') then
						q5<='1';
					else
						q4<='1';
					end if;
				end if;
			else
				if(a1='1') then
					if(a0='1') then
						q3<='1';
					else
						q2<='1';
					end if;
				else
					if(a0='1') then
						q1<='1';
					else
						q0<='1';
					end if;
				end if;
			end if;
		end if;
	end process;
end behav;
