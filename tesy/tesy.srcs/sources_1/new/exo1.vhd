----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2018 18:17:00
-- Design Name: 
-- Module Name: exo1 - Behavioral
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

entity exo1 is
 Port (    a : in STD_LOGIC_VECTOR (15 downto 0);
           b : in STD_LOGIC_VECTOR (15 downto 0);
           c : in STD_LOGIC_VECTOR (15 downto 0);
           d : in STD_LOGIC_VECTOR (15 downto 0);
           sel : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (15 downto 0));
end exo1;

architecture Behavioral of exo1 is
begin

process(a,b,c,d,sel)
variable x : std_logic_vector (15 downto 0);
variable y : std_logic_vector (15 downto 0);
begin
    if (sel = '1') then
        x:=a;
        y:=b;
    else 
        x:=c;
        y:=d;
    end if;
    case sel is
         when '1' => sum <= x+y;
         when others => sum <= x+y xor a;
    end case;
end process;

end Behavioral;
