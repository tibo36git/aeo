----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2018 18:25:11
-- Design Name: 
-- Module Name: or4 - Behavioral
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

entity or4 is
    Port ( a2 : in  STD_LOGIC_VECTOR (3 downto 0);
           b2 : in  STD_LOGIC_VECTOR (3 downto 0);
           sor : out  STD_LOGIC_VECTOR (3 downto 0));
end or4;

architecture Behavioral of or4 is

begin

	sor <= a2 or b2;

end Behavioral;

