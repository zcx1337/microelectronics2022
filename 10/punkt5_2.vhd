LIBRARY ieee; 
 
USE ieee.std_logic_1164.all; 
ENTITY punkt5_2 IS 
PORT 
(
x:in std_logic_vector(7 downto 0);
--x0,x1,x2,x3,x4,x5,x6,x7,d,dtm0,dtm1,dtm2,dtm3,dtm5,d: IN std_logic;
dtm: in std_logic_vector(8 downto 0);
xr: INOUT std_logic_vector(8 downto 0);
odd,even: inout std_logic
--res_odd,res_even:out std_logic;
);
END punkt5_2; 
architecture behav of punkt5_2 is
signal d,ev,od:std_logic;
Component punkt5_11
PORT 
(X0,X1,X2,X3,X4,X5,X6,X7,D: IN std_logic;
Even,Odd: INOUT std_logic);
END component; 
Component myxor
PORT
(x1,x2:in std_logic;
result:inout std_logic
);
END component;
begin
d<='0';
u1: punkt5_11
Port map(x(0),x(1),x(2),x(3),x(4),x(5),x(6),x(7),d,ev,od);
u2:punkt5_11
Port map(xr(0),xr(1),xr(2),xr(3),xr(4),xr(5),xr(6),xr(7),xr(8),even,odd);
c0:myxor
Port map(x(0),dtm(0),xr(0));
c1:myxor
Port map(x(1),dtm(1),xr(1));
c2:myxor
Port map(x(2),dtm(2),xr(2));
c3:myxor
Port map(x(3),dtm(3),xr(3));
c4:myxor
Port map(x(4),dtm(4),xr(4));
c5:myxor
Port map(x(5),dtm(5),xr(5));
c6:myxor
Port map(x(6),dtm(6),xr(6));
c7:myxor
Port map(x(7),dtm(7),xr(7));
c8:myxor
Port map(ev,dtm(8),xr(8));
end behav;
configuration con of punkt5_2 is
for behav 
for c0,c1,c2,c3,c4,c5,c6,c7,c8:myxor
use entity work.myxor(behav);
end for; 

for u1,u2: punkt5_11
use entity work.punkt5_11(behav);
end for;

end for;
end con;

