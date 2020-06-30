------------------------------------------------
-- Design: program counter register
-- Entity: reg_PC
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY instruction_register IS
  PORT (
    i_CLR_N : IN std_logic; -- clear/reset
    i_CLK : IN std_logic; -- clock
    i_DATa : IN std_logic_vector(15 DOWNTO 0);--enter data value
    i_LD : IN std_logic; -- enable load instruction register   
    o_IR : OUT std_logic_vector(15 DOWNTO 0)); -- data output
END instruction_register;
ARCHITECTURE rtl OF instruction_register IS

BEGIN

  PROCESS (i_CLR_N, i_CLK)
  BEGIN
    IF (i_CLR_N = '0') THEN
      o_IR <= "1111111111111111";
    ELSIF (rising_edge(i_CLK)) THEN
      IF (i_LD = '1') THEN
        o_IR <= i_DATA;
      END IF;
    END IF;
  END PROCESS;
END rtl;