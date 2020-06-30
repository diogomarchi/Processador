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

ENTITY program_counter IS
  PORT (
    i_PC_CLR : IN std_logic; -- clear/reset
    i_CLK : IN std_logic; -- clock
    i_PC_INC : IN std_logic; -- enable 
    i_PC_LD : IN std_logic; -- input load program counter
    i_ADDITION : IN std_logic_vector(15 DOWNTO 0);--input addition instruction		 
    o_PC : OUT std_logic_vector(15 DOWNTO 0) -- data output
  );
END program_counter;
ARCHITECTURE rtl OF program_counter IS

  SIGNAL w_COUNTER : std_logic_vector(15 DOWNTO 0);

BEGIN

  PROCESS (i_PC_CLR, i_CLK)
  BEGIN
    IF (i_PC_CLR = '1') THEN
      w_COUNTER <= "0000000000000000";
    ELSIF (rising_edge(i_CLK)) THEN
      IF (i_PC_LD = '1') THEN
        w_COUNTER <= i_ADDITION;
      ELSIF (i_PC_INC = '1') THEN
        w_COUNTER <= w_COUNTER + "1";
      END IF;
    END IF;
  END PROCESS;

  o_PC <= w_COUNTER;

END rtl;