library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notGate is
    Port ( A3 : in  STD_LOGIC;      -- NOR gate input 1
           
           Y3 : out  STD_LOGIC);    -- NOR gate output
end notGate;

architecture Behavioral of notGate is
begin

Y3 <= not A3 ;     -- 2 input NOR gate
end Behavioral;
