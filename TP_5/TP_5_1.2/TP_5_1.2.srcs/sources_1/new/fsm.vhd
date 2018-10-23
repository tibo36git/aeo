----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2018 08:38:25
-- Design Name: 
-- Module Name: fsm - Behavioral
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

entity fsm is
    Port ( btnL : in  STD_LOGIC;
           btnR : in  STD_LOGIC;
           btnU : in  STD_LOGIC;
           btnD : in  STD_LOGIC;
           btnC : in  STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end fsm;

architecture Behavioral of fsm is

component decodeBtn is
    Port ( btnL : in STD_LOGIC;
           btnR : in STD_LOGIC;
           btnU : in STD_LOGIC;
           btnD : in STD_LOGIC;
           btnC : in STD_LOGIC;
           clk : in STD_LOGIC;
           outdecode : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component chenillard is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0);
           onoff : in STD_LOGIC);
end component;

type state_type is (init, S1, S2, S3, S4);
signal state, next_state : state_type;
signal led_i : std_logic_vector (15 downto 0) := "0000000000000000";
signal Soutdecode : std_logic_vector (2 downto 0);
signal Son : STD_LOGIC := '1';
signal ledchen: std_logic_vector (15 downto 0);

begin

Inst_decode: decodeBtn PORT MAP( clk => clk, btnL => btnL, btnR => btnR, btnU => btnU, btnD => btnD, btnC => btnC, outdecode => Soutdecode);
Inst_chenillard: chenillard PORT MAP( clk => clk, led => ledchen, onoff => Son);

SYNC_PROC: process (clk)
begin
   if (clk'event and clk = '1') then
      if (btnC = '1') then
         state <= init;
         led <= "0000000000000000";
      else
         state <= next_state;
         led <= led_i;
      end if;
   end if;
end process;


NEXT_STATE_DECODE: process (state, Soutdecode)
begin

        next_state <= state; 
    if (Soutdecode(2) = '0') then    
     
   case (state) is
      when init =>
         if (Soutdecode(1 downto 0) = sw(1 downto 0)) then
            next_state <= S1;
         end if;
      when S1 =>
         if (Soutdecode(1 downto 0) = sw(3 downto 2)) then
            next_state <= S2;
         else			
            next_state <= init;
         end if;
      when S2 =>
         if (Soutdecode(1 downto 0) = sw(5 downto 4)) then
             next_state <= S3;
         else					
             next_state <= init;
         end if;
      when S3 =>
         if (Soutdecode(1 downto 0) = sw(7 downto 6)) then
             next_state <= S4;
         else					
             next_state <= init;
      end if;
      when others =>
         next_state <= init;
  end case;
  
end if;
end process;


OUTPUT_DECODE: process (state)
begin
    case state is  
		    when init => led_i <=  "0000000000000000" ;
		    when S1 => led_i <=  "0000000000000001" ;
		    when S2 => led_i <=  "0000000000000010" ;
		    when S3 => led_i <=  "0000000000000100" ;
		    when S4 => led_i <=  ledchen ;
		    when others => led_i <=  "1111111111111111" ;
    end case;
end process;

end Behavioral;
