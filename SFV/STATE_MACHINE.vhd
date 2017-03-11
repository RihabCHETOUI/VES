Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity stateMachine is
    
 Port ( CLK  : in  STD_LOGIC;
          RESET : in  STD_LOGIC;  
           ST   : out  STD_LOGIC_VECTOR (9 downto 0));    

end stateMachine;

architecture arch of stateMachine is

type STATE is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9,S10 );
signal Current_State, Next_State: STATE;

begin 

  P_state:process(CLK)
  begin
         if (CLK='1' and CLK'EVENT) then
              if (RESET='1') then 
                       Current_State<=S0;
              else 
                       Current_State<=Next_State;
              end if; 
         end if;
  end process P_STATE;

  P_FSM:process(Current_State) 
  begin           
    case Current_State is
when S0 => 
                     ST <= "1111111111";
                     Next_State <=S1;


when S1 => 
                     ST <= "0111111111";
                     Next_State <=S2;
when S2 => 
                     ST <= "1011111111";
                     Next_State <=S3;
when S3 => 
                     ST <= "1101111111";
                     Next_State <=S4;
when S4 => 
                     ST <= "1110111111";
                     Next_State <=S5;
when S5 => 
                     ST <= "1111011111";
                     Next_State <=S6;
when S6 => 
                     ST <= "1111101111";
                     Next_State <=S7;
when S7 => 
                     ST <= "1111110111";
                     Next_State <=S8;
when S8 => 
                     ST <= "1111111011";
                     Next_State <=S9;
when S9 => 
                     ST <= "1111111101";
                     Next_State <=S10;
when S10 => 
                     ST <= "1111111110";
                     Next_State <=S0;

end case;
end process P_FSM;
end arch;