----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2018 08:41:05
-- Design Name: 
-- Module Name: par4 - Behavioral
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

entity par4 is
    Port ( a5 : in STD_LOGIC_VECTOR (7 downto 0);
           b5 : in STD_LOGIC_VECTOR (7 downto 0);
           spar : out STD_LOGIC);
end par4;

architecture Behavioral of par4 is

signal switches : std_logic_vector (15 downto 0);

begin

switches <= b5&a5;

process(switches)
variable x : std_logic;

    begin
    x:= '0';
            for i in 0 to 15 loop
                        x := x xor switches(i);
            end loop;
            spar <= x;
    
end process;

end Behavioral;
