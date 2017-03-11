library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity norGate is
    Port ( A1 : in  STD_LOGIC;      -- NOR gate input 1
           B1 : in  STD_LOGIC;      -- NOR gate input 2
           Y1 : out  STD_LOGIC);    -- NOR gate output
end norGate;

architecture Behavioral of norGate is
begin

Y1 <= A1 nor B1;     -- 2 input NOR gate
end Behavioral;
