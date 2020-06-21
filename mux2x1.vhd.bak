------------------------------------------------
-- Design: mux2x1 16bits
-- Entity: mux2x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
port ( i_SEL : in  std_logic;  -- selector
       i_A   : in  std_logic_Vector(15 downto 0);  -- data input
       i_B   : in  std_logic_Vector(15 downto 0);  -- data input
       o_Q   : in  std_logic_Vector(15 downto 0));  -- data input-- data output
end mux2x1;


architecture arch_1 of mux2x1 is
begin

  o_Q <= i_A when (i_SEL = '0') else i_B;
  
end arch_1;