------------------------------------------------
-- Design: mux16x1 de 16 bits
-- Entity: mux16x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity mux16x1 is
port ( i_SEL : in  std_logic_Vector(3 downto 0);  -- selector       
       i_S0  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S1  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S2  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S3  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S4  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S5  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S6  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S7  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S8  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S9  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S10  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S11  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S12  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S13  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S14  : in  std_logic_vector(15 downto 0);  -- data input 		 
		 i_S15  : in  std_logic_vector(15 downto 0);  -- data input 
		 o_Q    : out std_logic_vector(15 downto 0)  -- data output
       ); 
end mux16x1;


architecture arch_1 of mux16x1 is
begin
  
  o_Q <= i_S0 when (i_SEL = "0000") else
         i_S1 when (i_SEL = "0001") else 
         i_S2 when (i_SEL = "0010") else
         i_S3 when (i_SEL = "0011") else 
         i_S4 when (i_SEL = "0100") else 
         i_S5 when (i_SEL = "0101") else 
         i_S6 when (i_SEL = "0110") else 
         i_S7 when (i_SEL = "0111") else 
         i_S8 when (i_SEL = "1000") else 
         i_S9 when (i_SEL = "10001") else 
         i_S10 when (i_SEL = "1010") else 
         i_S11 when (i_SEL = "1011") else 
         i_S12 when (i_SEL = "1100") else 
         i_S13 when (i_SEL = "1101") else 
         i_S14 when (i_SEL = "1110") else i_S15; -- 1111
	 
  
end arch_1;