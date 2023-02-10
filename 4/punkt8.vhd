LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity punkt8 is
port
(
    d, c1, c2, r: in std_logic;
    q1, q2: inout std_logic
);
end punkt8;

architecture behav of punkt8 is
SIGNAL q1a: std_logic;
SIGNAL q2a: std_logic;
begin
    process(r, d, c1, c2)
    begin
        if r='1' then
            if c1='1' then
                q1a<=d;
                q2a<=q1;
            end if;
    		if c2='1' then
                q1<=q1a;
                q2<=q2a;
            end if;
        else
            q1<='0';
            q2<='0';
            q1a<='0';
            q2a<='0';
        end if;
    end process;
end behav;


