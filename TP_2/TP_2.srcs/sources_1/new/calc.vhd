----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2018 11:28:32 AM
-- Design Name: 
-- Module Name: calc - Behavioral
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

entity calc is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end calc;

architecture Behavioral of calc is

signal s : std_logic_vector (3 downto 0);

component add4
    port ( a, b : in  STD_LOGIC_VECTOR (3 downto 0);
            sum: out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component x7seg
    port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           seg: out  STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

inst_add4 : add4 port map (a => sw (3 downto 0), b => sw (15 downto 12), sum (3 downto 0) => s);        
inst_x7seg : x7seg port map (sw => s, seg => seg);

an <= "0000";

end Behavioral;
