----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2018 19:07:33
-- Design Name: 
-- Module Name: fsm7seg - Behavioral
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

entity fsm7seg is
    Port ( clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end fsm7seg;

architecture Behavioral of fsm7seg is

COMPONENT enable190
	PORT( clk : IN std_logic;   
	      reset : in STD_LOGIC;       
		  E190 : OUT std_logic;
		  clk190 : OUT std_logic);
END COMPONENT;

COMPONENT x7seg
	PORT( sw : IN std_logic_vector(3 downto 0);          
		  seg : OUT std_logic_vector(6 downto 0));
END COMPONENT;

signal clk190out : std_logic;
signal sevensig1 : STD_LOGIC_VECTOR (6 downto 0);
signal sevensig2 : STD_LOGIC_VECTOR (6 downto 0);
signal sevensig3 : STD_LOGIC_VECTOR (6 downto 0);
signal sevensig4 : STD_LOGIC_VECTOR (6 downto 0);
type state_type is (st1_digit1, st2_digit2, st3_digit3, st4_digit4); 
signal state, next_state : state_type;

begin

Inst_enable190: enable190 PORT MAP( clk => clk, reset => '0' , E190 => open , clk190 => clk190out);
Inst_x7seg1: x7seg PORT MAP( sw => sw (3 downto 0), seg => sevensig1);
Inst_x7seg2: x7seg PORT MAP( sw => sw (7 downto 4), seg => sevensig2);
Inst_x7seg3: x7seg PORT MAP( sw => sw (11 downto 8), seg => sevensig3);
Inst_x7seg4: x7seg PORT MAP( sw => sw (15 downto 12), seg => sevensig4);

--Insert the following in the architecture after the begin keyword
   SYNC_PROC: process (clk190out)
   begin
      if (clk190out'event and clk190out = '1') then
            state <= next_state;
         -- assign other outputs to internal signals
      end if;
   end process;
 
   --MOORE State-Machine - Outputs based on state only
   OUTPUT_DECODE: process (state)
   begin
      --insert statements to decode internal output signals
      --below is simple example
      if state = st1_digit1 then
	       seg <= sevensig1;
           an <= "1110";
	  elsif state = st2_digit2 then
		   seg <= sevensig2;
           an <= "1101";
	  elsif state = st3_digit3 then
		   seg <= sevensig3;
           an <= "1011";
	  else
		   seg <= sevensig4;
           an <= "0111";
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state)
   begin
      --declare default state for next_state to avoid latches
      next_state <= state;  --default is to stay in current state
      --insert statements to decode next_state
      --below is a simple example
      case (state) is
         when st1_digit1 =>
              next_state <= st2_digit2;
         when st2_digit2 =>
              next_state <= st3_digit3;
		 when st3_digit3 =>
              next_state <= st4_digit4;
         when others =>
              next_state <= st1_digit1;
      end case;      
   end process;

end Behavioral;
