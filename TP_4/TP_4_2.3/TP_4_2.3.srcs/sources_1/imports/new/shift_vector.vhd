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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_vector is
    Port ( clk_div : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : inout STD_LOGIC_VECTOR (15 downto 0));
end shift_vector;

architecture Behavioral of shift_vector is

begin

process (clk_div) 
variable temp : std_logic_vector(15 downto 0) := "1000000000000000";
variable droite_gauche : std_logic := '0';
variable position : integer := 15;
begin
	if (clk_div'event and clk_div='1') then
	
--	   Gestion des switchs
	   if (sw(position) = '1') then
	       droite_gauche := not droite_gauche;
	   end if;
	   
--	   Gestion bords de table
	   if (led(0) = '1') then
            temp := temp(14 downto 0)&temp(15);
            position := position + 1;
            droite_gauche := not droite_gauche;
       elsif (led(15) = '1') then
            temp := temp(0)&temp(15 downto 1);
            position := position - 1;
            droite_gauche := not droite_gauche;
       end if;
       
--       Gestion sens chenillard
	   if (droite_gauche = '0') then
	       temp := temp(0)&temp(15 downto 1);
	       position := position - 1;
	   elsif (droite_gauche = '1') then
	       temp := temp(14 downto 0)&temp(15);
	       position := position + 1;
	   end if;
	end if;
	led <= temp;
end process;


end Behavioral;
