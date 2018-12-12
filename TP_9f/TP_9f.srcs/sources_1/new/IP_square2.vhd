----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2018 13:02:52
-- Design Name: 
-- Module Name: IP_square2 - Behavioral
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

entity IP_square2 is
	GENERIC (Mycode : std_logic_vector(10 downto 0):="00000010100" );
    Port ( 
		   Tin : in  STD_LOGIC_VECTOR (31 downto 0);
           Nin : in  STD_LOGIC_VECTOR (31 downto 0);
           IPcode : in  STD_LOGIC_vector(10 downto 0) ;
           Tout : out  STD_LOGIC_VECTOR (31 downto 0));
end IP_square2;

architecture Behavioral of IP_square2 is
component multiply
	port (
	a: in std_logic_vector(15 downto 0);
	b: in std_logic_vector(15 downto 0);
	p: out std_logic_vector(31 downto 0));
end component;

signal mul1 : std_logic_vector (31 downto 0) ;
signal mul2 : std_logic_vector (31 downto 0) ;

-- Synplicity black box declaration
attribute syn_black_box : boolean;
attribute syn_black_box of multiply: component is true;
begin

mult1 : multiply
		port map (
			a => Nin(15 downto 0),
			b => Nin (15 downto 0),
			p => mul1);
			
mult2 : multiply
        port map (
            a => Tin(15 downto 0),
            b => Tin (15 downto 0),
            p => mul2);
                        
Tout <= mul1 + mul2 when Mycode = IPcode else (others =>'Z');


end Behavioral;
