------------------------------------------------
-- Design: data_memo
-- Entity: data_memo
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY instruction_memory IS
  GENERIC (
    D_Width : INTEGER := 16; -- data width
    A_Width : INTEGER := 16); -- address width
  PORT (
    i_IR_RD : IN std_logic; -- enable read         		 
    i_IR_ADDR : IN std_logic_Vector(A_Width - 1 DOWNTO 0); -- address
    o_R_DATA : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output

END ENTITY instruction_memory;

ARCHITECTURE rtl OF instruction_memory IS
  COMPONENT single_port_rom IS
    GENERIC (
      D_Width : INTEGER := 16; -- data width
      A_Width : INTEGER := 16); -- address width

    PORT (
      addr : IN std_logic_vector(15 DOWNTO 0);
      q : OUT std_logic_vector(15 DOWNTO 0));
  END COMPONENT single_port_rom;

  SIGNAL w_O_ROM : std_logic_vector(15 DOWNTO 0);

BEGIN
  u_single_port_rom : single_port_rom PORT MAP(
    addr => i_IR_ADDR,
    q => w_O_ROM);

  o_R_DATA <= w_O_ROM WHEN (i_IR_RD = '1') ELSE
    "0000000000000000";

END rtl;