Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity stateMachineCompute is
    
 Port ( cmp_CLK  : in  STD_LOGIC;
          cmp_RESET : in  STD_LOGIC;  
           cmp_ST   : out  STD_LOGIC_VECTOR (3 downto 0));    

end stateMachineCompute;

architecture arch of stateMachineCompute is

type STATE is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);
signal Current_State, Next_State: STATE;

begin 

  P_state:process(cmp_CLK )
  begin
         if (cmp_CLK ='0' and cmp_CLK 'EVENT) then
              if ( cmp_RESET='1') then 
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
                    cmp_ST <= "0000";
                     Next_State <=S1;
when S1 => 
                     cmp_ST <= "0001";
                     Next_State <=S2;
when S2 => 
                     cmp_ST <= "0010";
                     Next_State <=S3;
when S3 => 
                     cmp_ST <= "0011";
                     Next_State <=S4;
when S4 => 
                     cmp_ST <= "0100";
                     Next_State <=S5;
when S5 => 
                     cmp_ST <= "0101";
                     Next_State <=S6;
when S6 => 
                     cmp_ST <= "0110";
                     Next_State <=S7;
when S7 => 
                     cmp_ST <= "0111";
                     Next_State <=S8;
when S8 => 
                     cmp_ST <= "1000";
                     Next_State <=S9;
when S9 => 
                     cmp_ST <= "1001";
                     Next_State <=S10;
when S10 => 
                     cmp_ST <= "1010";
                     Next_State <=S11;
when S11 => 
                     cmp_ST <= "1011";
                     Next_State <=S12;
when S12 => 
                     cmp_ST <= "1100";
                     Next_State <=S13;
when S13 => 
                     cmp_ST <= "1101";
                     Next_State <=S14;
when S14 => 
                     cmp_ST <= "1110";
                     Next_State <=S15;

when S15 => 
                     cmp_ST <= "1111";
                     Next_State <=S0;

end case;
end process P_FSM;
end arch;
