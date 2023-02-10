LIBRARY ieee; 

USE ieee.std_logic_1164.all; 
ENTITY punkt5_11 IS 
PORT 
(
X0,X1,X2,X3,X4,X5,X6,X7: IN std_logic;
D: IN std_logic;
Odd, Even: INOUT std_logic
);
END punkt5_11; 
architecture behav of punkt5_11 is 
begin
Odd<= (((X0 xor X1) xor (X2 xor X3)) xor ((X4 xor X5) xor (X6 xor X7))) xor D;
Even<= not Odd;
end behav;

