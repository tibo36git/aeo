----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2018 10:19:52
-- Design Name: 
-- Module Name: enable190 - Behavioral
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

entity enable190 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           E190 : out STD_LOGIC;
           clk190 : out STD_LOGIC);
end enable190;

architecture Behavioral of enable190 is

signal clkin: std_logic :='0';

begin
    --clock divider
    process(clk,reset)
    variable q: std_logic_vector(23 downto 0):= X"000000";
    begin   
        if reset ='1' then
            q := X"000000";
            clkin <= '0';
        elsif clk'event and clk = '1' then
            q := q+1;
            if Q(18)='1' and clkin='0' then 
		E190 <= '1' ;
	    else 
	        E190 <= '0';
	    end if;
        end if;
        clkin<= Q(18);
    end process;
    clk190 <= clkin;
    
end Behavioral;
