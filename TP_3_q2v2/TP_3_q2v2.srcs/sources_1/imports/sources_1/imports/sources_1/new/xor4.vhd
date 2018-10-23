----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2018 18:26:14
-- Design Name: 
-- Module Name: xor4 - Behavioral
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

entity xor4 is
    Port ( a3 : in  STD_LOGIC_VECTOR (3 downto 0);
           b3 : in  STD_LOGIC_VECTOR (3 downto 0);
           sxor : out  STD_LOGIC_VECTOR (3 downto 0));
end xor4;

architecture Behavioral of xor4 is

begin

	sxor <= a3 xor b3;


end Behavioral;

