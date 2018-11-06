----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 20:26:50
-- Design Name: 
-- Module Name: clk_div - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.alfile:///home/tibo36/Vivado/Vivado/2018.2/bin/unwrapped/lnx64.o/vivadol;

entity clk_div is
    Port ( clk : in STD_LOGIC;
           clk_4Hz : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

signal clk_4Hz_i : std_logic := '0';

begin

process (clk)
variable counter : unsigned(23 downto 0) := (others => '0');
  begin  
    if rising_edge(clk) then                            -- rising clock edge
      if counter = X"BEBC20" then                            -- 12 500 000 in hex
        clk_4Hz_i <= not clk_4Hz_i;
		counter := (others => '0');
      else
        counter := counter + "1";
      end if;
    end if;
    clk_4Hz <= clk_4Hz_i;
end process;


end Behavioral;
