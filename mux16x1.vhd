------------------------------------------------
-- Design: mux16x1 de 16 bits
-- Entity: mux16x1
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux16x1 IS
       PORT (
              i_SEL : IN std_logic_Vector(3 DOWNTO 0); -- selector       
              i_S0 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S1 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S2 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S3 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S4 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S5 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S6 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S7 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S8 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S9 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S10 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S11 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S12 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S13 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              i_S14 : IN std_logic_vector(15 DOWNTO 0); -- data input 		 
              i_S15 : IN std_logic_vector(15 DOWNTO 0); -- data input 
              o_Q : OUT std_logic_vector(15 DOWNTO 0) -- data output
       );
END mux16x1;
ARCHITECTURE arch_1 OF mux16x1 IS
BEGIN

       o_Q <= i_S0 WHEN (i_SEL = "0000") ELSE
              i_S1 WHEN (i_SEL = "0001") ELSE
              i_S2 WHEN (i_SEL = "0010") ELSE
              i_S3 WHEN (i_SEL = "0011") ELSE
              i_S4 WHEN (i_SEL = "0100") ELSE
              i_S5 WHEN (i_SEL = "0101") ELSE
              i_S6 WHEN (i_SEL = "0110") ELSE
              i_S7 WHEN (i_SEL = "0111") ELSE
              i_S8 WHEN (i_SEL = "1000") ELSE
              i_S9 WHEN (i_SEL = "1001") ELSE
              i_S10 WHEN (i_SEL = "1010") ELSE
              i_S11 WHEN (i_SEL = "1011") ELSE
              i_S12 WHEN (i_SEL = "1100") ELSE
              i_S13 WHEN (i_SEL = "1101") ELSE
              i_S14 WHEN (i_SEL = "1110") ELSE
              i_S15; -- 1111
END arch_1;