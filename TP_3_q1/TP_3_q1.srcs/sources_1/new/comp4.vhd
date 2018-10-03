----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2018 08:30:58
-- Design Name: 
-- Module Name: comp4 - Behavioral
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

entity comp4 is
    Port ( a4 : in STD_LOGIC_VECTOR (3 downto 0);
           b4 : in STD_LOGIC_VECTOR (3 downto 0);
           scomp : out STD_LOGIC_VECTOR (3 downto 0));
end comp4;

architecture Behavioral of comp4 is

begin

scomp <= "0001" when (a4="0000" and b4="0000") else
         "0001" when (a4="0001" and b4="0001") else
		 "0001" when (a4="0010" and b4="0010") else
		 "0001" when (a4="0100" and b4="0100") else
		 "0001" when (a4="1000" and b4="1000") else
		 "0001" when (a4="0011" and b4="0011") else
		 "0001" when (a4="0110" and b4="0110") else
		 "0001" when (a4="1100" and b4="1100") else
		 "0001" when (a4="0111" and b4="0111") else
		 "0001" when (a4="1110" and b4="1110") else
		 "0001" when (a4="1111" and b4="1111") else
		 "0001" when (a4="0101" and b4="0101") else
		 "0001" when (a4="1010" and b4="1010") else
	   	 "0000";

end Behavioral;
