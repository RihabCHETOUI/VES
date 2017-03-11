library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andGate is
    Port ( A2 : in  STD_LOGIC;      -- NOR gate input 1
           B2 : in  STD_LOGIC;      -- NOR gate input 2
           Y2 : out  STD_LOGIC);    -- NOR gate output
end andGate;

architecture Behavioral of andGate is
begin

Y2 <= A2 and B2;     -- 2 input NOR gate
end Behavioral;
