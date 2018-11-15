----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2018 12:51:11
-- Design Name: 
-- Module Name: eval1 - Behavioral
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

entity eval1 is
    Port ( clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end eval1;

architecture Behavioral of eval1 is

COMPONENT fsm7seg
    Port( clk : in STD_LOGIC;
          sw : in STD_LOGIC_VECTOR (15 downto 0);
          seg : out STD_LOGIC_VECTOR (6 downto 0);
          an : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

begin

Inst_fsm7seg: fsm7seg PORT MAP(clk => clk, sw => sw, seg => seg, an => an);


end Behavioral;
