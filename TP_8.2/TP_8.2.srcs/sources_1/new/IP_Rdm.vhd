----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2018 10:21:13
-- Design Name: 
-- Module Name: IP_Rdm - Behavioral
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

entity IP_Rdm is
    GENERIC (Mycode : std_logic_vector(10 downto 0) := "00000010000");
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           IPcode : in STD_LOGIC_VECTOR (10 downto 0);
           Tout : out STD_LOGIC_VECTOR (31 downto 0));
end IP_Rdm;

architecture Behavioral of IP_Rdm is

signal qbus , busreg: std_logic_vector(31 downto 0) ;
signal s_enable : std_logic;

COMPONENT random
        generic ( width : integer := 32 );
		PORT( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               enable : in STD_LOGIC;
               random_num : out STD_LOGIC_VECTOR (width-1 downto 0)
		);
	END COMPONENT;

begin

Inst_rdm : random 
		generic map( width => 32 )
		PORT MAP(
		clk => clk,
		reset => reset,
		enable => s_enable,
		random_num => qbus
		);

s_enable <= '1' when IPcode(10 downto 0)= Mycode else ('0');
Tout <= qbus when IPcode(10 downto 0)= Mycode else (others =>'Z');

end Behavioral;
