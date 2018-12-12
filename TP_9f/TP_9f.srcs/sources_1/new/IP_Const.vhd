----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 18:23:19
-- Design Name: 
-- Module Name: IP_Const - Behavioral
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


entity IP_Const is
 GENERIC (Mycode : std_logic_vector(10 downto 0) := "00000100000");
  Port ( 
     IPcode : in  STD_LOGIC_VECTOR (10 downto 0);
     Tout : out  STD_LOGIC_VECTOR (31 downto 0);
     Nout : out  STD_LOGIC_VECTOR (31 downto 0));
end IP_Const;

architecture Behavioral of IP_Const is

begin
    Tout <= x"00010000" when IPcode(10 downto 0) = Mycode else (others =>'Z');
    Nout <= x"00000000" when IPcode(10 downto 0) = Mycode else (others =>'Z');
    
end Behavioral;
