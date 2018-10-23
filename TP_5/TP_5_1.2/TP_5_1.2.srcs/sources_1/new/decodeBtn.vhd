----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2018 09:21:11
-- Design Name: 
-- Module Name: decodeBtn - Behavioral
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

entity decodeBtn is
    Port ( btnL : in STD_LOGIC;
           btnR : in STD_LOGIC;
           btnU : in STD_LOGIC;
           btnD : in STD_LOGIC;
           btnC : in STD_LOGIC;
           clk : in STD_LOGIC;
           outdecode : out STD_LOGIC_VECTOR (2 downto 0));
end decodeBtn;

architecture Behavioral of decodeBtn is

component enable190
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           E190 : out STD_LOGIC;
           clk190 : out STD_LOGIC);
end component;

component btn_pulse
    Port ( in_btn : in STD_LOGIC;
           E : in  STD_LOGIC;
           clk_btn : in STD_LOGIC;
           out_btn_pulse : out STD_LOGIC);
end component;

signal btn : std_logic_vector (3 downto 0);
signal EnableSignal : std_logic;
signal btnPulseC : std_logic;
signal btnPulseR : std_logic;
signal btnPulseD : std_logic;
signal btnPulseL : std_logic;
signal btnPulseU : std_logic;

begin

btnproc: process (clk)
begin
    if (clk'event and clk = '1') then
        btn <= btnPulseD & btnPulseU & btnPulseL & btnPulseR;
    end if;
end process;


with btn select
  outdecode <= "000" when "0001", --btnR
               "001" when "1000", --btnD
               "010" when "0010", --btnL
               "011" when "0100", --btnU
               "100" when others; --autres

Inst_clkdiv190: enable190 PORT MAP( clk => clk, reset => '0', E190 => EnableSignal, clk190 => open);
Inst_Q0: btn_pulse PORT MAP( clk_btn => clk, E => EnableSignal, in_btn => btnC, out_btn_pulse => btnPulseC);
Inst_Q1: btn_pulse PORT MAP( clk_btn => clk, E => EnableSignal, in_btn => btnR, out_btn_pulse => btnPulseR);
Inst_Q2: btn_pulse PORT MAP( clk_btn => clk, E => EnableSignal, in_btn => btnD, out_btn_pulse => btnPulseD);
Inst_Q3: btn_pulse PORT MAP( clk_btn => clk, E => EnableSignal, in_btn => btnL, out_btn_pulse => btnPulseL);
Inst_Q4: btn_pulse PORT MAP( clk_btn => clk, E => EnableSignal, in_btn => btnU, out_btn_pulse => btnPulseU);

end Behavioral;
