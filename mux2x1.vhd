------------------------------------------------
-- Design: mux2x1 16bits
-- Entity: mux2x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity mux3x1 is
port ( i_SEL0 : in  std_logic;  -- selector
       i_SEL1 : in  std_logic;  -- selector
       i_A   : in  std_logic_Vector(15 downto 0);  -- data input
       i_B   : in  std_logic_Vector(15 downto 0);  -- data input
		 i_C   : in  std_logic_Vector(15 downto 0);  -- data input
       o_Q   : out  std_logic_Vector(7 downto 0));  -- data output
end mux3x1;


architecture arch_1 of mux3x1 is
begin

  o_Q <= i_A when (i_SEL0 = '1' and i_SEL1 = '0') else
         i_B when (i_SEL0 = '0' and i_SEL1 = '0') else i_C;
  
end arch_1;