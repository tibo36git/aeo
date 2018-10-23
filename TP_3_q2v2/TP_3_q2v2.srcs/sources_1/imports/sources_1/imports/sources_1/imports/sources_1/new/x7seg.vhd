----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2018 10:45:33 AM
-- Design Name: 
-- Module Name: x7seg - Behavioral
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

entity x7seg is
    Port ( sw : in STD_LOGIC_VECTOR (3 downto 0);
           code : in STD_LOGIC_VECTOR (1 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end x7seg;

architecture Behavioral of x7seg is

signal x1 : std_logic_vector (6 downto 0);
signal x2 : std_logic_vector (6 downto 0);
signal x3 : std_logic_vector (6 downto 0);
signal x4 : std_logic_vector (6 downto 0);

begin

       with code select
	       seg  <=  x1 when "00", --add,and,or,xor,
                    x2 when "01", --comp
                    x3 when "10", --parity
                    x4 when "11", --rien
                    x1 when others;


	   with sw select
	       x1 <= "1000000" when "0000",
				 "1111001" when "0001",
				 "0100100" when "0010",
				 "0110000" when "0011",
				 "0011001" when "0100",
				 "0010010" when "0101",
				 "0000010" when "0110",
				 "1111000" when "0111",
				 "0000000" when "1000",
				 "0010000" when "1001",
				 "0001000" when "1010",
				 "0000011" when "1011",
				 "1000110" when "1100",
				 "0100001" when "1101",
				 "0000110" when "1110",
				 "0001110" when others;
				
	   with sw select
	       x2 <= "0001110" when "0000", --False comp
			     "0001111" when others; -- True comp
		
	   with sw select
	       x3 <= "0001100" when "0000", -- Parity
			     "1001111" when others; -- Imparity
			
	   x4 <= "0000000";

end Behavioral;
