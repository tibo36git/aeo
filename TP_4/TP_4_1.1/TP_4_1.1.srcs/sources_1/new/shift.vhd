----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2018 14:47:03
-- Design Name: 
-- Module Name: shift - Behavioral
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

entity shift is
    Port ( btn : in STD_LOGIC_VECTOR (4 downto 0);
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0));
end shift;

architecture Behavioral of shift is

signal a : std_logic ;
signal b : std_logic ;
signal c : std_logic ;
signal d : std_logic ;
signal e : std_logic ;
signal f : std_logic ;
signal g : std_logic ;
signal h : std_logic ;
signal i : std_logic ;
signal j : std_logic ;
signal k : std_logic ;
signal l : std_logic ;
signal m : std_logic ;
signal n : std_logic ;
signal o : std_logic ;
signal p : std_logic ;

component fpd
    GENERIC (init_value: STD_Logic  := '0');
    port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component;

begin

Inst_fpd1: fpd GENERIC MAP(init_value => '1') PORT MAP( d => p, q => a, clk => clk);
Inst_fpd2: fpd PORT MAP( d => a, q => b, clk => clk);
Inst_fpd3: fpd PORT MAP( d => b, q => c, clk => clk);
Inst_fpd4: fpd PORT MAP( d => c, q => d, clk => clk);
Inst_fpd5: fpd PORT MAP( d => d, q => e, clk => clk);
Inst_fpd6: fpd PORT MAP( d => e, q => f, clk => clk);
Inst_fpd7: fpd PORT MAP( d => f, q => g, clk => clk);
Inst_fpd8: fpd PORT MAP( d => g, q => h, clk => clk);
Inst_fpd9: fpd PORT MAP( d => h, q => i, clk => clk);
Inst_fpd10: fpd PORT MAP( d => i, q => j, clk => clk);
Inst_fpd11: fpd PORT MAP( d => j, q => k, clk => clk);
Inst_fpd12: fpd PORT MAP( d => k, q => l, clk => clk);
Inst_fpd13: fpd PORT MAP( d => l, q => m, clk => clk);
Inst_fpd14: fpd PORT MAP( d => m, q => n, clk => clk);
Inst_fpd15: fpd PORT MAP( d => n, q => o, clk => clk);
Inst_fpd16: fpd PORT MAP( d => o, q => p, clk => clk);

led<= p&o&n&m&l&k&j&i&h&g&f&e&d&c&b&a;

end Behavioral;
