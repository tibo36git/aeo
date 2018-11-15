----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2018 08:51:52
-- Design Name: 
-- Module Name: Triplebit - Behavioral
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

entity Tripletbit is
 Port (    clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Input01 : in STD_LOGIC;
           Enable : in STD_LOGIC;
           NBtriplet : out STD_LOGIC_VECTOR (15 downto 0));
end Tripletbit;

architecture Behavioral of Triplebit is

begin


end Behavioral;
