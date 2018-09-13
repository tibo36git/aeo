----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2018 20:55:55
-- Design Name: 
-- Module Name: my_addv2 - Behavioral
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

entity my_addv2 is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           dp : out STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0));
end my_addv2;

architecture Behavioral of my_addv2 is

	signal a :  STD_LOGIC_VECTOR (3 downto 0);
    signal b :  STD_LOGIC_VECTOR (3 downto 0);
    signal c :  STD_LOGIC_VECTOR (4 downto 0);

begin

a <= sw (3 downto 0);
b <= sw (15 downto 12);

c <= ('0' & a) + ('0' & b);

led <= c (3 downto 0);
dp <= c (4);
an(0) <= '1';

end Behavioral;
