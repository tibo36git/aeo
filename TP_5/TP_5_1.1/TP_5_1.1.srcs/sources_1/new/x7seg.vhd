----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.10.2018 10:04:14
-- Design Name: 
-- Module Name: x7seg - Behavioral
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

entity x7seg is
    Port ( in7seg : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end x7seg;

architecture Behavioral of x7seg is

begin

process (in7seg)
    begin
        if (in7seg = '0') then
            seg <= "0001100";
        else 
             seg <= "1111001";
        end if;
    end process;


end Behavioral;
