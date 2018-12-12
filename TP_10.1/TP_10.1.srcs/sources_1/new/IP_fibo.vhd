----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2018 08:41:18
-- Design Name: 
-- Module Name: IP_fibo - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP_fibo is
generic ( mycode : STD_LOGIC_VECTOR (10 downto 0):= "10000000011");
   port ( 
   clk : in  STD_LOGIC;
   reset : in  STD_LOGIC:='0';
   Tin : in  STD_LOGIC_VECTOR (31 downto 0);
   Tout : out  STD_LOGIC_VECTOR (31 downto 0);
   Ipcode : in  STD_LOGIC_VECTOR (10 downto 0); 
   IPdone : out STD_LOGIC);
end IP_fibo;

architecture fibo of IP_fibo is

type state_type is (IDLE, NEXTFIBO);
signal state, next_state : state_type;
signal done : std_logic;
signal compteur : std_logic_vector (7 downto 0);
signal compteur_i : std_logic_vector (7 downto 0);
signal init : std_logic;
signal fibobus : STD_LOGIC_VECTOR (31 downto 0);

component fibogen is
     Port ( clk : in STD_LOGIC;
          init : in STD_LOGIC;
          fiboout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

begin

Inst_fibogen: fibogen PORT MAP( clk => clk, init => init, fiboout => fibobus);

   SYNC_PROC: process (clk)
   begin
      if (rising_edge(clk)) then
         if (reset = '1') then
            compteur <= (others => '0');
            state <= IDLE;
         else
            compteur <= compteur_i;
            state <= next_state;
         end if;
      end if;
   end process;

   NEXT_STATE_DECODE: process (state, Ipcode, compteur)
   begin
      done <= '0';
      next_state <= state;
      case (state) is
         when IDLE =>
            if Ipcode = mycode then
               next_state <= NEXTFIBO;
            end if;
         when NEXTFIBO =>
            if compteur = 2 then
               next_state <= IDLE;
               done <= '1';
            end if;
         end case;
   end process;
   
   OUTPUT_DECODE: process (state, compteur, Tin)
      begin
      case (state) is
           when IDLE =>
               init <= '1';
               compteur_i <= Tin(7 downto 0);
           when others => 
               init <= '0';
               compteur_i <= compteur - "0000001";
           end case;
      end process;
   
   Tout <= fibobus when done = '1' else (others => 'Z');
   IPdone <= done;

end fibo;
