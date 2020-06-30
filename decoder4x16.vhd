------------------------------------------------
-- Design: decoder 4x16 bits
-- Entity: decoder4x16
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder4x16 IS
  PORT (
    i_SEL : IN std_logic_Vector(3 DOWNTO 0); -- selector
    i_ENA : IN std_logic; -- data input
    o_S0 : OUT std_logic; -- data output
    o_S1 : OUT std_logic; -- data output
    o_S2 : OUT std_logic; -- data output
    o_S3 : OUT std_logic; -- data output
    o_S4 : OUT std_logic; -- data output
    o_S5 : OUT std_logic; -- data output
    o_S6 : OUT std_logic; -- data output
    o_S7 : OUT std_logic; -- data output
    o_S8 : OUT std_logic; -- data output
    o_S9 : OUT std_logic; -- data output
    o_S10 : OUT std_logic; -- data output
    o_S11 : OUT std_logic; -- data output
    o_S12 : OUT std_logic; -- data output
    o_S13 : OUT std_logic; -- data output
    o_S14 : OUT std_logic; -- data output		 
    o_S15 : OUT std_logic -- data output
  );
END decoder4x16;
ARCHITECTURE rtl OF decoder4x16 IS
BEGIN

  o_S0 <= '1' WHEN (i_SEL = "0000" AND i_ENA = '1') ELSE
    '0';
  o_S1 <= '1' WHEN (i_SEL = "0001" AND i_ENA = '1') ELSE
    '0';
  o_S2 <= '1' WHEN (i_SEL = "0010" AND i_ENA = '1') ELSE
    '0';
  o_S3 <= '1' WHEN (i_SEL = "0011" AND i_ENA = '1') ELSE
    '0';
  o_S4 <= '1' WHEN (i_SEL = "0100" AND i_ENA = '1') ELSE
    '0';
  o_S5 <= '1' WHEN (i_SEL = "0101" AND i_ENA = '1') ELSE
    '0';
  o_S6 <= '1' WHEN (i_SEL = "0110" AND i_ENA = '1') ELSE
    '0';
  o_S7 <= '1' WHEN (i_SEL = "0111" AND i_ENA = '1') ELSE
    '0';
  o_S8 <= '1' WHEN (i_SEL = "1000" AND i_ENA = '1') ELSE
    '0';
  o_S9 <= '1' WHEN (i_SEL = "1001" AND i_ENA = '1') ELSE
    '0';
  o_S10 <= '1' WHEN (i_SEL = "1010" AND i_ENA = '1') ELSE
    '0';
  o_S11 <= '1' WHEN (i_SEL = "1011" AND i_ENA = '1') ELSE
    '0';
  o_S12 <= '1' WHEN (i_SEL = "1100" AND i_ENA = '1') ELSE
    '0';
  o_S13 <= '1' WHEN (i_SEL = "1101" AND i_ENA = '1') ELSE
    '0';
  o_S14 <= '1' WHEN (i_SEL = "1110" AND i_ENA = '1') ELSE
    '0';
  o_S15 <= '1' WHEN (i_SEL = "1111" AND i_ENA = '1') ELSE
    '0';

END rtl;