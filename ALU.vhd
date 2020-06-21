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
port ( i_CLK   : in std_logic;
       i_CLR_N : in std_logic;
       i_S0    : in  std_logic;  -- selector
       i_A     : in  std_logic_Vector(15 downto 0);  -- data input
       i_B     : in  std_logic_Vector(15 downto 0);  -- data input
       o_Q     : out  std_logic_Vector(15 downto 0)); -- data output
end ALU;


architecture arch_1 of ALU is
  signal w_o_ADD : std_logic_Vector(15 downto 0);

begin
  
  process(i_CLR_N,i_CLK) 
  begin
    if (i_CLR_N = '0') then
		w_o_ADD <= "0000000000000000";
	 
	 elsif (rising_edge(i_CLK)) then
	 
      if (i_S0 = '1') then -- sinal de soma habilitado
        w_o_ADD <= i_A + i_B;
      end if;
		
    end if;
  end process;
    
  o_Q <= w_o_ADD;
  
end arch_1;