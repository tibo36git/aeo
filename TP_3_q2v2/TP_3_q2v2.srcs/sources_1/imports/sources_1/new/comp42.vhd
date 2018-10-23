----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2018 11:34:12
-- Design Name: 
-- Module Name: comp42 - Behavioral
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

entity comp42 is
    Port ( ac : in STD_LOGIC_VECTOR (7 downto 0);
           bc : in STD_LOGIC_VECTOR (7 downto 0);
           scomp : out STD_LOGIC_VECTOR (3 downto 0));
end comp42;

architecture Behavioral of comp42 is

begin

process(ac,bc)
    begin
    if (ac = bc) then
        scomp <= "0001";
    else scomp <= "0000";
    end if;
end process;

end Behavioral;
