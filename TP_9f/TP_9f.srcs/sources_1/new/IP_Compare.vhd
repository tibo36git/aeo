----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 15:23:37
-- Design Name: 
-- Module Name: IP_Compare - Behavioral
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
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP_Compare is

GENERIC (Mycode : std_logic_vector(10 downto 0) := "0000111100");
   Port ( 
         Tin : in  STD_LOGIC_VECTOR (31 downto 0);
         IPcode : in  STD_LOGIC_VECTOR (10 downto 0);
         Tout : out  STD_LOGIC_VECTOR (31 downto 0));
end IP_Compare;

architecture Behavioral of IP_Compare is

begin

Tout <= x"FFFFFFFF" when IPcode(10 downto 0) = Mycode and Tin <= x"00FFE001"
    else x"00000000" when IPcode(10 downto 0) = Mycode and Tin > x"00FFE001" 
    else (others =>'Z');


end Behavioral;
