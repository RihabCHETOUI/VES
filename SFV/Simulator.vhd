library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simulator is
    Port ( X1 : in  STD_LOGIC;
           X2 : in  STD_LOGIC;
           X3 : in  STD_LOGIC;
           X4 : in  STD_LOGIC;      
           S : out  STD_LOGIC);    
end simulator;

architecture arch of simulator is

------------------------------- COMPONENTS---------------------------
component norGate
port( 
           A1 : in  STD_LOGIC;      
           B1 : in  STD_LOGIC;      
           Y1 : out  STD_LOGIC);  
end component;

component notGate 
    Port ( A3 : in  STD_LOGIC;      -- NOR gate input 1
           
           Y3 : out  STD_LOGIC);    -- NOR gate output
end component;

component andGate is
    Port ( A2 : in  STD_LOGIC;      -- NOR gate input 1
           B2 : in  STD_LOGIC;      -- NOR gate input 2
           Y2 : out  STD_LOGIC);
end component;

component nandGate 
    Port ( A4 : in  STD_LOGIC;      -- NOR gate input 1
           B4 : in  STD_LOGIC;      -- NOR gate input 2
           Y4 : out  STD_LOGIC);
end component;

-----------------------------SIGNALS------------------------------------
signal  invOut, norOut1, norOut2,nandOut  : std_logic;

-----------------------------INCTIATIONS------------------------------------
begin
Ins1: nandGate port map (X3,X4,nandOut);
Ins2: norGate port map (X2,nandOut,norOut2);
Ins3: notGate port map (X3,invOut);
Ins4: norGate port map (X1,invOut,norOut1);
Ins5: nandGate port map (norOut1,norOut2,S);

end arch;