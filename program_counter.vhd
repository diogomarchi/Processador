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

entity reg_PC is
port ( i_PC_CLR : in  std_logic;  -- clear/reset
       i_CLK    : in  std_logic;  -- clock
       i_PC_INC : in  std_logic;  -- enable    
       o_PC     : out std_logic_vector(15 downto 0)); -- data output
end reg_PC;


architecture rtl of reg_PC is

signal w_COUNTER:std_logic_vector(15 downto 0);

begin

  process(i_PC_CLR,i_CLK) 
  begin
    if (i_PC_CLR = '1') then
      w_COUNTER <= "0000000000000000";		
	 elsif (rising_edge(i_CLK)) then
      if (i_PC_INC = '1') then
		  w_COUNTER <= w_COUNTER + "1";        
      end if;
    end if;
  end process;
  
  o_PC <= w_COUNTER;
  
end rtl;
