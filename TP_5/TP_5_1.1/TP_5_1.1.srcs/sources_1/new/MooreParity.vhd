----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.10.2018 10:04:14
-- Design Name: 
-- Module Name: MooreParity - Behavioral
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

entity MooreParity is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           btnC : in STD_LOGIC;
           clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end MooreParity;

architecture Behavioral of MooreParity is

type state_type is (EVEN, ODD);
signal state, next_state : state_type;
signal sout_i : std_logic;
signal s : std_logic;
signal x : std_logic;

component x7seg
    port ( in7seg : in  STD_LOGIC;
           seg: out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component par4
    port ( a5 : in STD_LOGIC_VECTOR (7 downto 0);
           b5 : in STD_LOGIC_VECTOR (7 downto 0);
           spar : out STD_LOGIC);
end component;

begin

    SYNC_PROC : process (clk)
    begin
    if rising_edge(clk) then
        if (btnC = '1') then
            state <= EVEN;
            s <= '0';
        else
            state <= next_state;
            s <= sout_i;
        end if;
    end if;
    end process; 

    OUTPUT_DECODE : process (state)
    begin
    case (state) is
            when EVEN =>
                sout_i <= '0';
            when ODD =>
                sout_i <= '1';
            when others =>
                sout_i <= '0';
        end case;
    end process;

    NEXT_STATE_DECODE : process (state, sw)
    begin
        next_state <= EVEN;
        case (state) is
            when EVEN =>
                if (x = '1') then
                    next_state <= ODD;
                end if;
            when ODD =>
                if (x = '0') then
                    next_state <= EVEN;
            end if;
            when others =>
                next_state <= EVEN;
        end case;
    end process;
   
inst_x7seg : x7seg port map (in7seg => s, seg => seg);
Inst_par4: par4 port map(a5 => sw (7 downto 0), b5 => sw (15 downto 8), spar => x);
an <= "1110";

end Behavioral;
