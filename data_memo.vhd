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
ENTITY data_memo IS
  GENERIC (
    D_Width : INTEGER := 16; -- data width
    A_Width : INTEGER := 8); -- address width

  PORT (
    i_CLK : IN std_logic;
    i_CLR_n : IN std_logic;
    i_D_rd : IN std_logic; -- enable read      
    i_D_wr : IN std_logic; -- enable write      		 
    i_D_ADDR : IN std_logic_Vector(A_Width - 1 DOWNTO 0); -- address
    i_W_DATA : IN std_logic_Vector(D_Width - 1 DOWNTO 0); -- data input
    o_R_DATA : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output

END ENTITY data_memo;

ARCHITECTURE data_memo_Arch OF data_memo IS

  COMPONENT RAM IS
    GENERIC (
      D_Width : INTEGER := 16; -- data width
      A_Width : INTEGER := 8); -- address width

    PORT (
      i_CLK : IN std_logic;
      i_CLR_n : IN std_logic;
      i_WE : IN std_logic; -- enable       
      i_ADDR : IN std_logic_Vector(A_Width - 1 DOWNTO 0); -- address
      i_DATA : IN std_logic_Vector(D_Width - 1 DOWNTO 0); -- data input
      o_DATA : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output

  END COMPONENT;

  COMPONENT register_16bit IS
    PORT (
      i_CLK : IN std_logic;
      i_CLR_N : IN std_logic;
      i_ENA : IN std_logic; -- enable
      i_A : IN std_logic_Vector(D_Width - 1 DOWNTO 0); -- data input       
      o_Q : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output
  END COMPONENT;

  SIGNAL w_o_RAM : std_logic_Vector(D_Width - 1 DOWNTO 0);

BEGIN

  u_RAM : RAM PORT MAP(
    i_CLK => i_CLK,
    i_CLR_n => i_CLR_n,
    i_WE => i_D_wr, -- enable       
    i_ADDR => i_D_ADDR, -- address
    i_DATA => i_W_DATA, -- data input
    o_DATA => w_o_RAM); -- data output

  o_R_DATA <= w_o_RAM WHEN(i_D_rd = '1') ELSE
    "ZZZZZZZZZZZZZZZZ";
END data_memo_Arch;