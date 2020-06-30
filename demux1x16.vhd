------------------------------------------------
-- Design: demux1x16
-- Entity: demux1x16
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY demux1x16 IS
  PORT (
    i_SEL : IN std_logic_Vector(3 DOWNTO 0); -- selector
    i_A : IN std_logic; -- data input
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
END demux1x16;
ARCHITECTURE arch_1 OF demux1x16 IS
BEGIN

  o_S0 <= i_A WHEN (i_SEL = "0000") ELSE
    '0';
  o_S1 <= i_A WHEN (i_SEL = "0001") ELSE
    '0';
  o_S2 <= i_A WHEN (i_SEL = "0010") ELSE
    '0';
  o_S3 <= i_A WHEN (i_SEL = "0011") ELSE
    '0';
  o_S4 <= i_A WHEN (i_SEL = "0100") ELSE
    '0';
  o_S5 <= i_A WHEN (i_SEL = "0101") ELSE
    '0';
  o_S6 <= i_A WHEN (i_SEL = "0110") ELSE
    '0';
  o_S7 <= i_A WHEN (i_SEL = "0111") ELSE
    '0';
  o_S8 <= i_A WHEN (i_SEL = "1000") ELSE
    '0';
  o_S9 <= i_A WHEN (i_SEL = "1001") ELSE
    '0';
  o_S10 <= i_A WHEN (i_SEL = "1010") ELSE
    '0';
  o_S11 <= i_A WHEN (i_SEL = "1011") ELSE
    '0';
  o_S12 <= i_A WHEN (i_SEL = "1100") ELSE
    '0';
  o_S13 <= i_A WHEN (i_SEL = "1101") ELSE
    '0';
  o_S14 <= i_A WHEN (i_SEL = "1110") ELSE
    '0';
  o_S15 <= i_A WHEN (i_SEL = "1111") ELSE
    '0';
END arch_1;