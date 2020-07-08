------------------------------------------------
-- Design: ALU 16bits
-- Entity: ALU
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity ALU is
port ( 
       i_S0    : in  std_logic;  -- selector
		 i_S1    : in  std_logic;  -- selector		 
       i_A     : in  std_logic_Vector(15 downto 0);  -- data input
       i_B     : in  std_logic_Vector(15 downto 0);  -- data input
       o_Q     : out  std_logic_Vector(15 downto 0)); -- data output
end ALU;


architecture arch_1 of ALU is
  signal w_o_ADD, w_O_SUB_AB: std_logic_Vector(15 downto 0);

begin
   	      
  -- A + B
  w_o_ADD <= i_A + i_B;
  
  -- A - B
  w_O_SUB_AB <= i_A - i_B;
  
  -- SAIDA
  o_Q <= i_A        when (i_S0 = '0' and i_S1 = '0') else
         w_O_SUB_AB when (i_S0 = '0' and i_S1 = '1') else
			w_o_ADD    when (i_S0 = '1' and i_S1 = '0') else
  "0000000000000001"when ((i_S0 = '1' and i_S1 = '1') and (i_A < i_B)) else 
  "0000000000000000";			
  
end arch_1;