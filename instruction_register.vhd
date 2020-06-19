------------------------------------------------
-- Design: program counter register
-- Entity: reg_PC
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity reg_IR is
port ( i_CLR_N : in  std_logic;  -- clear/reset
       i_CLK    : in  std_logic;  -- clock
		 i_DATa   : in  std_logic_vector(15 downto 0);--enter data value
       i_LD     : in  std_logic;  -- enable load instruction register   
       o_IR     : out std_logic_vector(15 downto 0)); -- data output
end reg_IR;


architecture rtl of reg_IR is

begin

  process(i_CLR_N,i_CLK) 
  begin
    if (i_CLR_N = '0') then
		o_IR <= "0000000000000000";
	 elsif (rising_edge(i_CLK)) then
      if (i_LD = '1') then
        o_IR <= i_DATA;
      end if;
    end if;
  end process;
end rtl;
