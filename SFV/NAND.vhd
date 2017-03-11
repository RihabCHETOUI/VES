library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nandGate is
    Port ( A4 : in  STD_LOGIC;      -- NOR gate input 1
           B4 : in  STD_LOGIC;      -- NOR gate input 2
           Y4 : out  STD_LOGIC);    -- NOR gate output
end nandGate;

architecture Behavioral of nandGate is
begin

Y4 <= A4 nand B4;     -- 2 input NOR gate
end Behavioral;
