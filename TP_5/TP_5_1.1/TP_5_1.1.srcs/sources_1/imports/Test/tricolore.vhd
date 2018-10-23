-- Created by fizzim.pl version 5.20 on 2018:10:05 at 09:36:37 (www.fizzim.com)

library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity fsm is
port (
  led : out STD_LOGIC_VECTOR(7 downto 0);
  clk : in STD_LOGIC;
  resetN : in STD_LOGIC
);
end fsm;

architecture fizzim of fsm is

-- state bits
subtype state_type is STD_LOGIC_VECTOR(8 downto 0);

constant RougeVert: state_type:="010000001"; -- extra=0 led[7:0]=10000001 
constant OrangeRouge: state_type:="000000000"; -- extra=0 led[7:0]=00000000 
constant RougeOrange: state_type:="010000010"; -- extra=0 led[7:0]=10000010 
constant VertRouge: state_type:="100000000"; -- extra=1 led[7:0]=00000000 

signal state,nextstate: state_type :=RougeVert;
signal led_internal: STD_LOGIC_VECTOR(7 downto 0);

-- comb always block
begin
  COMB: process(state) begin
    -- Warning I2: Neither implied_loopback nor default_state_is_x attribute is set on state machine - defaulting to implied_loopback to avoid latches being inferred 
    nextstate <= state; -- default to hold value because implied_loopback is set
    case state is
      when RougeVert   =>
        nextstate <= RougeOrange;

      when OrangeRouge =>
        nextstate <= VertRouge;

      when RougeOrange =>
        nextstate <= OrangeRouge;

      when VertRouge   =>
        nextstate <= RougeVert;

      when others =>

    end case;
  end process;

  -- Assign reg'd outputs to state bits
  led_internal(7 downto 0) <= state(7 downto 0);

  -- Port renames for vhdl
  led(7 downto 0) <= led_internal(7 downto 0);

  -- sequential always block
  FF: process(clk,resetN,nextstate) begin
    if (rising_edge(clk)) then
      if (resetN='1') then
        state <= RougeVert;
      else
        state <= nextstate;
      end if;
    end if;
  end process;
end fizzim;
