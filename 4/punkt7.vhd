LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity punkt7 is
port
(
    d, c, r: in std_logic;
    q1, q2: inout std_logic
);
end punkt7;

architecture behav of punkt7 is

SIGNAL q1a: std_logic;
SIGNAL q2a: std_logic;
begin
    process(r, d, c)
    begin
        if r='1' then
            if c='1' then
                q1a<=d;
                q2a<=q1;
            else 
                q1<=q1a;
                q2<=q2a;
            end if;
        else
            q1<='0';
            q1a<='0';
            q2<='0';
            q2a<='0';
        end if;
    end process;
end behav;
