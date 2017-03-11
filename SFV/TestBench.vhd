library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity bench is
end bench;

architecture A of bench is 
component norGate
port( 
           A1 : in  STD_LOGIC;      
           B1 : in  STD_LOGIC;      
           Y1 : out  STD_LOGIC);  
end component;

component notGate 
    Port ( A3 : in  STD_LOGIC;      
           
           Y3 : out  STD_LOGIC);    
end component;

component andGate is
    Port ( A2 : in  STD_LOGIC;      
           B2 : in  STD_LOGIC;      
           Y2 : out  STD_LOGIC);
end component;

component nandGate 
    Port ( A4 : in  STD_LOGIC;      
           B4 : in  STD_LOGIC;      
           Y4 : out  STD_LOGIC);
end component;
component mux is
    Port ( SEL : in  STD_LOGIC;
           IN1  : in  STD_LOGIC;
           IN2   : in  STD_LOGIC;
           outM   : out STD_LOGIC);
end component;

component stateMachine is
    
 Port ( CLK  : in  STD_LOGIC;
          RESET : in  STD_LOGIC;  
           ST   : out  STD_LOGIC_VECTOR (9 downto 0));
end component;

component stateMachineCompute is
    
 Port ( cmp_CLK  : in  STD_LOGIC;
          cmp_RESET : in  STD_LOGIC;  
           cmp_ST   : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
-----------------------------SIGNALS------------------------------------
signal  invOut, norOut1, norOut2,nandOut,S  : std_logic;
signal  CS  : std_logic_vector (9 downto 0):="1111111111";
signal  F : std_logic_vector (9 downto 0):="0000000000";
signal  X : std_logic_VECTOR (3 downto 0);
signal  O1, O2, O3, O4, O5, O6, O7, O8, O9, O10 : std_logic;
signal  sigR : std_logic;
signal  sigSTcmp  : std_logic_vector ( 3 downto 0);
signal  sigST  : std_logic_vector ( 9 downto 0);
signal   sigCLK    : std_logic := '0';
signal   sigCLKVec : std_logic := '0';
-----------------------------INCTIATIONS------------------------------------
begin
InsX3Bis: mux     port map (CS(8),F(8),X(2),O8);
Ins3:     notGate port map (O8,invOut);

InsX1:  mux     port map (CS(1),F(1),X(0),O1);
Ins7:   mux     port map (CS(2),F(2),invOut,O2);
Ins2:   norGate port map (O1,O2,norOut1);
Ins8:  mux     port map (CS(3),F(3),norOut1,O3);

InsX3: mux     port map (CS(7),F(7),X(2),O7);
InsX4: mux     port map (CS(9),F(9),X(3),O9);
Ins5: nandGate port map (O7,O9,nandOut);
Ins11: mux     port map (CS(6),F(6),nandOut,O6);
InsX2: mux     port map (CS(5),F(5),X(1),O5);
Ins4: norGate port map (O5,O6,norOut2);

Ins9:  mux     port map (CS(4),F(4),norOut2,O4);

Ins1: andGate port map (O3,O4,S);

Ins15: mux     port map (CS(0),F(0),S,O10);
Ins16: stateMachine            port map (sigCLK,sigR,sigST);
Ins17: stateMachineCompute     port map (sigCLKVec, sigR,sigSTcmp);
-----------------------------SIGNAL------------------------------------
sigCLKVec<= not (sigCLKVec) after 110 ns;
sigCLK<= not (sigCLK) after 10 ns;
sigR<='0';--'1' after 1850 ns;
X<= sigSTcmp;
CS<= sigST;

F<=  not (F) after 10 ns;

end;