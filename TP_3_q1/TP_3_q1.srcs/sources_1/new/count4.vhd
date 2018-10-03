----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2018 09:05:35
-- Design Name: 
-- Module Name: count4 - Behavioral
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count4 is
    Port ( a6 : in STD_LOGIC_VECTOR (3 downto 0);
           b6 : in STD_LOGIC_VECTOR (3 downto 0);
           scount : out STD_LOGIC_VECTOR (3 downto 0));
end count4;

architecture Behavioral of count4 is

signal switches : std_logic_vector (7 downto 0);

begin

switches <= b6&a6;

process(switches)
variable x : STD_LOGIC_VECTOR (3 downto 0);
    begin
        x:= (others => '0');
            for i in 0 to 7 loop
                    x := x + ('0' & switches(i));
            end loop;
            scount <= x;
end process;


end Behavioral;
