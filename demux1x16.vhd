------------------------------------------------
-- Design: demux1x16
-- Entity: demux1x16
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity demux1x16 is
port ( i_SEL : in  std_logic_Vector(3 downto 0);  -- selector
       i_A   : in  std_logic;  -- data input
       o_S0  : out  std_logic;  -- data output
		 o_S1  : out  std_logic;  -- data output
		 o_S2  : out  std_logic;  -- data output
		 o_S3  : out  std_logic;  -- data output
		 o_S4  : out  std_logic;  -- data output
		 o_S5  : out  std_logic;  -- data output
		 o_S6  : out  std_logic;  -- data output
		 o_S7  : out  std_logic;  -- data output
		 o_S8  : out  std_logic;  -- data output
		 o_S9  : out  std_logic;  -- data output
		 o_S10  : out  std_logic;  -- data output
		 o_S11  : out  std_logic;  -- data output
		 o_S12  : out  std_logic;  -- data output
		 o_S13  : out  std_logic;  -- data output
		 o_S14  : out  std_logic;  -- data output		 
		 o_S15  : out  std_logic   -- data output
       ); 
end demux1x16;


architecture arch_1 of demux1x16 is
begin
  
  o_S0 <= i_A when (i_SEL = "0000") else '0';
  o_S1 <= i_A when (i_SEL = "0001") else '0';
  o_S2 <= i_A when (i_SEL = "0010") else '0';
  o_S3 <= i_A when (i_SEL = "0011") else '0';
  o_S4 <= i_A when (i_SEL = "0100") else '0';
  o_S5 <= i_A when (i_SEL = "0101") else '0';
  o_S6 <= i_A when (i_SEL = "0110") else '0';
  o_S7 <= i_A when (i_SEL = "0111") else '0';
  o_S8 <= i_A when (i_SEL = "1000") else '0';
  o_S9 <= i_A when (i_SEL = "1001") else '0';
  o_S10 <= i_A when (i_SEL = "1010") else '0';
  o_S11 <= i_A when (i_SEL = "1011") else '0';
  o_S12 <= i_A when (i_SEL = "1100") else '0';
  o_S13 <= i_A when (i_SEL = "1101") else '0';
  o_S14 <= i_A when (i_SEL = "1110") else '0';
  o_S15 <= i_A when (i_SEL = "1111") else '0';  
	 
  
end arch_1;