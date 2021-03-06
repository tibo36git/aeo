----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2018 18:23:57
-- Design Name: 
-- Module Name: and4 - Behavioral
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

entity and4 is
    Port ( a1 : in  STD_LOGIC_VECTOR (3 downto 0);
           b2 : in  STD_LOGIC_VECTOR (3 downto 0);
           sand : out  STD_LOGIC_VECTOR (3 downto 0));
end and4;

architecture Behavioral of and4 is

begin

	sand <= a1 and b2;


end Behavioral;

