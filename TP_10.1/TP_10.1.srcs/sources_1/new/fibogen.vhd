----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2018 10:12:11
-- Design Name: 
-- Module Name: fibogen - Behavioral
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
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fibogen is
    Port ( clk : in STD_LOGIC;
           init : in STD_LOGIC;
           fiboout : out STD_LOGIC_VECTOR (31 downto 0));
           
    attribute clock_signal : string;
    attribute clock_signal of clk : signal is "yes";
end fibogen;

architecture Behavioral of fibogen is

signal fib1 : std_logic_vector(31 downto 0) := x"00000001";
signal fib2 : std_logic_vector(31 downto 0) := x"00000002";

begin

process (clk, init) 
begin
	if (clk'event and clk='1') then
	   if (init = '1') then
           fib1 <=  x"00000001";
           fib2 <=  x"00000002";
	   else
           fib2 <= fib2 + fib1;
           fib1 <= fib2;
       end if;
	end if;
	   
end process;
        fiboout <= fib2;

end Behavioral;
