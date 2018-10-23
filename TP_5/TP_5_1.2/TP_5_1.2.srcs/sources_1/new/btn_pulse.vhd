----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2018 10:04:32
-- Design Name: 
-- Module Name: btn_pulse - Behavioral
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

entity btn_pulse is
    Port ( in_btn : in STD_LOGIC;
           E : in  STD_LOGIC;
           clk_btn : in STD_LOGIC;
           out_btn_pulse : out STD_LOGIC);
end btn_pulse;

architecture Behavioral of btn_pulse is

signal q0, q1, q2, q3, q4, q5 : std_logic;
signal O1 : std_logic;

begin
	process (clk_btn, q0, O1, q1, q3, q2, q4, q5)
	begin
        if clk_btn'event and clk_btn = '1' then
            if (E = '1') then
     		     q0 <= in_btn;
			     q1 <= q0;
				 q2 <= q1;
			end if;
			
		    q3 <= O1;
			q4 <= q3;
			q5 <= q4;
		end if;
		 
	O1 <= q0 and q1 and q2;
	out_btn_pulse <= O1 and q3 and q4 and not q5;			
end process;


end Behavioral;
