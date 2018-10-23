----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 20:51:13
-- Design Name: 
-- Module Name: shift_vector - Behavioral
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

entity shift_vector is
    Port ( clk_div : in STD_LOGIC;
            onoff : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end shift_vector;

architecture Behavioral of shift_vector is

begin

process (clk_div, onoff) 
variable temp : std_logic_vector(15 downto 0) := "1000000000000000";
begin
if (onoff = '1') then
	if (clk_div'event and clk_div='1') then
	   temp := temp(0)&temp(15 downto 1);
	end if;
	led <= temp;
end if;
end process;


end Behavioral;
