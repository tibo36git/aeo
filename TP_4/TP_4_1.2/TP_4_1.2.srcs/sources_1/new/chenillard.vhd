----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 21:02:21
-- Design Name: 
-- Module Name: chenillard - Behavioral
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

entity chenillard is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end chenillard;

architecture Behavioral of chenillard is

signal clk_sig : std_logic;

component clk_div
   Port ( clk : in STD_LOGIC;
           clk_4Hz : out STD_LOGIC);
end component;

component shift_vector
   Port ( clk_div : in STD_LOGIC;
        led : out STD_LOGIC_VECTOR (15 downto 0));
end component;

begin

Inst_clk_div: clk_div PORT MAP( clk => clk, clk_4Hz => clk_sig);
Inst_shift_vector: shift_vector PORT MAP( clk_div => clk_sig, led => led);

end Behavioral;
