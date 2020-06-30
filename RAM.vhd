------------------------------------------------
-- Design: RAM
-- Entity: RAM
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM IS
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

END ENTITY RAM;

ARCHITECTURE RAM_Arch OF RAM IS
  -- endereços que receberão valores 
  CONSTANT ADDR1 : INTEGER := 0;
  CONSTANT ADDR2 : INTEGER := 12;

  CONSTANT VAL1 : std_logic_vector := "0000000000000001";
  CONSTANT VAL2 : std_logic_vector := "0000000000001010";

  TYPE ram_type IS ARRAY (0 TO 2 ** A_Width - 1) OF std_logic_vector(D_Width - 1 DOWNTO 0);
  -- essa função gera um arquivo .mif de inicialização da rom
  FUNCTION init_ram
    RETURN ram_type IS
    VARIABLE tmp : ram_type := (OTHERS => (OTHERS => '0'));
  BEGIN
    FOR addr_pos IN 0 TO 2 ** A_Width - 1 LOOP
      CASE (addr_pos) IS
        WHEN ADDR1 =>
          tmp(addr_pos) := VAL1;
        WHEN ADDR2 =>
          tmp(addr_pos) := VAL2;
        WHEN OTHERS =>
          tmp(addr_pos) := "0000000000000000";
      END CASE;
    END LOOP;
    RETURN tmp;
  END init_ram;

  SIGNAL ram : ram_type := init_ram;

BEGIN

  p_RAM : PROCESS (i_CLK)
  BEGIN

    IF (rising_edge(i_CLK)) THEN
      IF (i_WE = '1') THEN -- write enable
        ram(to_integer(unsigned(i_ADDR))) <= i_DATA;
      END IF;
    END IF;
  END PROCESS p_RAM;

  o_DATA <= ram(to_integer(unsigned(i_ADDR)));

END RAM_Arch;