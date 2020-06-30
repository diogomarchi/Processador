------------------------------------------------
-- Design: register_file
-- Entity: register_file
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY register_file IS
  GENERIC (
    D_Width : INTEGER := 16; -- data width
    A_Width : INTEGER := 4); -- address width
  PORT (
    i_CLK : IN std_logic;
    i_CLR_N : IN std_logic;
    i_RF_W_wr : IN std_logic; -- enable W write
    i_RF_RP_rd : IN std_logic; -- enable RP read
    i_RF_RQ_rd : IN std_logic; -- enable RQ read
    i_RF_W_addr : IN std_logic_Vector(3 DOWNTO 0); -- W write address
    i_RF_RP_addr : IN std_logic_Vector(3 DOWNTO 0); -- RP read address   
    i_RF_RQ_addr : IN std_logic_Vector(3 DOWNTO 0); -- RP read address
    i_W_DATA : IN std_logic_Vector(15 DOWNTO 0); -- W input data
    o_RP_DATA : OUT std_logic_Vector(15 DOWNTO 0); -- RP output data
    o_RQ_DATA : OUT std_logic_Vector(15 DOWNTO 0) -- RQ output data
  );
END register_file;
ARCHITECTURE arch1 OF register_file IS

  TYPE reg_file_type IS ARRAY (0 TO 2 ** A_Width - 1) OF std_logic_vector(D_Width - 1 DOWNTO 0);
  SIGNAL reg_file : reg_file_type := (OTHERS => (OTHERS => '0'));

BEGIN

  PROCESS (i_CLK, i_CLR_n)
  BEGIN
    IF (i_CLR_n = '0') THEN
      reg_file <= (OTHERS => (OTHERS => '0'));
    ELSIF (rising_edge(i_CLK)) THEN
      IF (i_RF_W_wr = '1') THEN
        reg_file(to_integer(unsigned(i_RF_W_addr))) <= i_W_DATA;
      END IF;

    END IF;
  END PROCESS;

  o_RP_DATA <= reg_file(to_integer(unsigned(i_RF_RP_addr))) WHEN(i_RF_RP_rd = '1') ELSE
    "ZZZZZZZZZZZZZZZZ";
  o_RQ_DATA <= reg_file(to_integer(unsigned(i_RF_RQ_addr))) WHEN(i_RF_RQ_rd = '1') ELSE
    "ZZZZZZZZZZZZZZZZ";

END arch1;