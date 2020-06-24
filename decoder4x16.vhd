------------------------------------------------
-- Design: decoder 4x16 bits
-- Entity: decoder4x16
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity decoder4x16 is
port ( i_SEL : in  std_logic_Vector(3 downto 0);  -- selector
       i_ENA : in  std_logic;  -- data input
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
end decoder4x16;


architecture rtl of decoder4x16 is
begin
  
  o_S0 <= '1' when (i_SEL = "0000" and i_ENA = '1') else '0';
  o_S1 <= '1' when (i_SEL = "0001" and i_ENA = '1') else '0';
  o_S2 <= '1' when (i_SEL = "0010" and i_ENA = '1') else '0';
  o_S3 <= '1' when (i_SEL = "0011" and i_ENA = '1') else '0';
  o_S4 <= '1' when (i_SEL = "0100" and i_ENA = '1') else '0';
  o_S5 <= '1' when (i_SEL = "0101" and i_ENA = '1') else '0';
  o_S6 <= '1' when (i_SEL = "0110" and i_ENA = '1') else '0';
  o_S7 <= '1' when (i_SEL = "0111" and i_ENA = '1') else '0';
  o_S8 <= '1' when (i_SEL = "1000" and i_ENA = '1') else '0';
  o_S9 <= '1' when (i_SEL = "1001" and i_ENA = '1') else '0';
  o_S10 <= '1' when (i_SEL = "1010" and i_ENA = '1') else '0';
  o_S11 <= '1' when (i_SEL = "1011" and i_ENA = '1') else '0';
  o_S12 <= '1' when (i_SEL = "1100" and i_ENA = '1') else '0';
  o_S13 <= '1' when (i_SEL = "1101" and i_ENA = '1') else '0';
  o_S14 <= '1' when (i_SEL = "1110" and i_ENA = '1') else '0';
  o_S15 <= '1' when (i_SEL = "1111" and i_ENA = '1') else '0';  	 	
  
end rtl;