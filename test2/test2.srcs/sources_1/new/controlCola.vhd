----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2018 19:28:12
-- Design Name: 
-- Module Name: controlCola - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controlcola is
 Port (    piece20, piece50, piece100 : in STD_LOGIC;
           reset : in std_logic;
           clk : in STD_LOGIC;
           euro_in : out STD_LOGIC_VECTOR (15 downto 0);
           canette, retour_euro : out STD_LOGIC);
end controlcola;

architecture Behavioral of controlCola is

type state_type is (init, st20, st40, st50, st60, st80, can, ret);
signal state, next_state : state_type;
signal can_i : std_logic;  -- example output signal
signal ret_i : std_logic;
signal euroIn_i : STD_LOGIC_VECTOR (15 downto 0);

begin

 

--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= init;
            ret_i <= '0';
            can_i <= '0';
            euroIn_i <= x"0000";
         else
            state <= next_state;
            retour_euro <= ret_i;
            canette <= can_i;
            euro_in <= euroIn_i;
         end if;
      end if;
   end process;
   
    NEXT_STATE_DECODE: process (state, piece20, piece50, piece100)
     begin
        --declare default state for next_state to avoid latches
        next_state <= state;  --default is to stay in current state
        --insert statements to decode next_state
        --below is a simple example
        case (state) is
           when init =>
              if piece20 = '1' then
                next_state <= st20;
              else if piece50 = '1' then
                next_state <= st20;
              else if piece100 = '1' then
                next_state <= st20;
              end if;
           when st2_<name> =>
              if <input_2> = '1' then
                 next_state <= st3_<name>;
              end if;
           when st3_<name> =>
              next_state <= st1_<name>;
           when others =>
              next_state <= st1_<name>;
        end case;
     end process;

   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      --insert statements to decode internal output signals
      --below is simple example
      if state = st3_<name> then
         <output>_i <= '1';
      else
         <output>_i <= '0';
      end if;
   end process;

  


end Behavioral;
