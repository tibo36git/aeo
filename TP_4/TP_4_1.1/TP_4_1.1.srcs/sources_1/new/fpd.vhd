----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 14:39:17
-- Design Name: 
-- Module Name: fpd - Behavioral
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

entity fpd is
GENERIC (init_value: STD_Logic  := '0');
    Port ( d : in  STD_LOGIC;
           q : out  STD_LOGIC:= init_value;
           clk : in  STD_LOGIC);
end fpd;


architecture Behavioral of fpd is

begin 

process (clk)
    begin
    if (clk'event and clk='1') then  -- rising_edge(clk)  fait "à peu prés" la même chose proposé ds la bilio IEEE
      q <= d;
    end if ;
end process ;

end Behavioral;
