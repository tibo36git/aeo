----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2018 08:30:39
-- Design Name: 
-- Module Name: exo1 - Behavioral
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

entity exo_1 is
 port(     CLK, CLR : in std_logic;
           Q : out std_logic_vector(3 downto 0));
end exo_1;

architecture archi of exo_1 is
signal tmp: std_logic_vector(3 downto 0);
begin
 process (CLK)
 begin
  if (CLK'event and CLK='1') then
   if (CLR='1') then
    tmp <= "0000";
   else
    tmp <= tmp + 1;
   end if; 
   
  end if;
  Q <= tmp;
 end process;
end archi;