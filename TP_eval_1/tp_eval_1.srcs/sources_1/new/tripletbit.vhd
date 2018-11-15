----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2018 08:53:48
-- Design Name: 
-- Module Name: tripletbit - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tripletbit is
 Port (    clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Input01 : in STD_LOGIC;
           Enable : in STD_LOGIC;
           NBtriplet : out STD_LOGIC_VECTOR (15 downto 0));
end Tripletbit;

architecture Behavioral of tripletbit is

type state_type is (init, st1, st2, st3);
signal state, next_state : state_type;
--Declare internal signals for all outputs of the state-machine
signal NBtriplet_i : STD_LOGIC_VECTOR (15 downto 0);  -- example output signal
--other outputs
signal cpt : STD_LOGIC_VECTOR (1 downto 0);

begin

   SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= init;
            NBtriplet_i <= x"0000";
         else
            state <= next_state;
            NBtriplet <= NBtriplet_i;
         end if;
      end if;
   end process;

   NEXT_STATE_DECODE: process (state, Enable, Input01)
   begin
      next_state <= state;  --default is to stay in current state
      
      case (state) is
         when init =>
            if ( Enable = '1') then
                if (Input01 = '1') then
                    cpt <= "01";
             
                end if;
                next_state <= st1;
            end if;
         when st1 =>
            if ( Enable = '1') then
                if Input01 = '1' then
                    cpt <= "10";
                    
                end if;
                next_state <= st2;    
            end if;
         when st2 =>
            if ( Enable = '1') then
                if Input01 = '1' then
                     cpt <= "11";
                    
                end if;
                next_state <= st3;
            end if;
         when others =>
                next_state <= init;
      end case;
   end process;
   
      --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      case state is  
           when init => NBtriplet_i <= NBtriplet_i;
           when st1 => NBtriplet_i <=  NBtriplet_i +1;
           when st2 => NBtriplet_i <=  NBtriplet_i +1;
           when st3 => NBtriplet_i <=  NBtriplet_i +1;
        
           when others => NBtriplet_i <= NBtriplet_i;
      end case;
   end process;


end Behavioral;
