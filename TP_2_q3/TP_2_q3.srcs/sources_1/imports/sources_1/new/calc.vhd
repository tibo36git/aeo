----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2018 11:28:32 AM
-- Design Name: 
-- Module Name: calc - Behavioral
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

entity calc is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           btnL : in  STD_LOGIC;
           btnR : in  STD_LOGIC;
           led : out STD_LOGIC_VECTOR (15 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end calc;

architecture Behavioral of calc is

signal w : std_logic_vector (4 downto 0);
signal x : std_logic_vector (3 downto 0);
signal y : std_logic_vector (3 downto 0);
signal z : std_logic_vector (3 downto 0);
signal s : std_logic_vector (3 downto 0);
signal btn : std_logic_vector (1 downto 0);


component add4
    port ( a, b : in  STD_LOGIC_VECTOR (3 downto 0);
            sum: out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component and4
port(
	a1 : IN std_logic_vector(3 downto 0);
	b2 : IN std_logic_vector(3 downto 0);          
	sand : OUT std_logic_vector(3 downto 0)
	);
end component;

component or4
port(
	a2 : IN std_logic_vector(3 downto 0);
	b2 : IN std_logic_vector(3 downto 0);          
	sor : OUT std_logic_vector(3 downto 0)
	);
end component;

component xor4
port(
	a3 : IN std_logic_vector(3 downto 0);
	b3 : IN std_logic_vector(3 downto 0);          
	sxor : OUT std_logic_vector(3 downto 0)
	);
end component;

component x7seg
    port ( sw : in  STD_LOGIC_VECTOR (3 downto 0);
           seg: out  STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

btn <= btnL & btnR;

with btn select
	s  <= w (3 downto 0) when "00",
	      x when "01",
		  y when "10",
		  z when "11";

inst_add4 : add4 port map (a => sw (3 downto 0), b => sw (15 downto 12), sum (4 downto 0) => w);        
Inst_and4: and4 port map(a1 => sw (3 downto 0), b2 => sw (15 downto 12), sand => x);
Inst_or4: or4 port map(a2 => sw (3 downto 0), b2 => sw (15 downto 12), sor => y);
Inst_xor4: xor4 port map(a3 => sw (3 downto 0), b3 => sw (15 downto 12), sxor => z);
inst_x7seg : x7seg port map (sw => s (3 downto 0), seg => seg);

led ( 4 downto 0) <= w;

an <= "1110";

end Behavioral;
