LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY punkt4 IS
PORT (
	x: in std_logic_vector(1 to 0);
	y: in std_logic_vector(1 to 0);
	xmy0, xly0, xey0 : in std_logic;
	xmy, xly, xey : out std_logic
);
end punkt4;
Architecture behave of punkt4 is
begin
	Process(x,y,xmy0,xey0,xly0)
	begin
			if(x>y) then
				xly<='0';
				xey<='0';
				xmy<='1';
			elsif(x<y) then
				xly<='1';
				xey<='0';
				xmy<='0';			
			else
				xmy<=xmy0;
				xly<=xly0;
				xey<=xey0;
			end if;
	end process;
end behave;

