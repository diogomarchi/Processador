------------------------------------------------
-- Design: rom
-- Entity: single_port_rom
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/22/2020
------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE STD.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY single_port_rom IS
  GENERIC (
    D_Width : INTEGER := 16; -- data width
    A_Width : INTEGER := 16); -- address width
  PORT (
    addr : IN std_logic_vector(15 DOWNTO 0);
    q : OUT std_logic_vector(15 DOWNTO 0)
  );

END ENTITY;

ARCHITECTURE rtl OF single_port_rom IS

  -- endereços que receberão valores iniciais
  CONSTANT ADDR1 : INTEGER := 0;
  CONSTANT ADDR2 : INTEGER := 1;
  CONSTANT ADDR3 : INTEGER := 2;
  CONSTANT ADDR4 : INTEGER := 3;
  CONSTANT ADDR5 : INTEGER := 4;
  CONSTANT ADDR6 : INTEGER := 5;
  CONSTANT ADDR7 : INTEGER := 6;
  CONSTANT ADDR8 : INTEGER := 7;
  CONSTANT ADDR9 : INTEGER := 8;
  CONSTANT ADDR10 : INTEGER := 9;
  CONSTANT ADDR11 : INTEGER := 10;
  CONSTANT ADDR12 : INTEGER := 11;
  CONSTANT ADDR13 : INTEGER := 12;
  CONSTANT ADDR14 : INTEGER := 13;
  CONSTANT ADDR15 : INTEGER := 14;
  CONSTANT ADDR16 : INTEGER := 15;

  CONSTANT INST1 : std_logic_vector := "0011000000000110"; -- MOV 	RF[0]     6           -- Salva 10 registrador 0
  CONSTANT INST2 : std_logic_vector := "0011000100010010"; -- MOV 	RF[1]     18          -- Salva 16 registrador 1
  CONSTANT INST3 : std_logic_vector := "0100001000000001"; -- SUB 	RF[2] RF[O] RF[1]     -- grava no registrador 2 o resultado da subtração
  CONSTANT INST4 : std_logic_vector := "0101001000001001"; -- JMPZ  RF[2]     +9          -- pula se o resultado da subtracao anterior = 0
  CONSTANT INST5 : std_logic_vector := "0110001000000001"; -- LT    RF[2] RF[0] RF[1]     -- verifica se rp é menor que rq e salva resultado 
  CONSTANT INST6 : std_logic_vector := "0101001000000100"; -- JMPZ  RF[2]     +4          -- pula se o resultado da comparacao for 0
  CONSTANT INST7 : std_logic_vector := "0100000100010000"; -- SUB 	RF[1] RF[1] RF[0]     -- grava no registrador 1 o resultado da subtração  
  CONSTANT INST8 : std_logic_vector := "0111XXXX11111011"; -- JUMP           -5           -- volta para subtração inicial
  CONSTANT INST9 : std_logic_vector := "1111111111111111";
  CONSTANT INST10 : std_logic_vector := "0100000000000001"; -- SUB  RF[0] RF[O] RF[1]     -- grava no registrador 0 o resultado da subtração
  CONSTANT INST11 : std_logic_vector := "0111XXXX11111000"; -- JUMP          -8           -- volta para subtração inicial
  CONSTANT INST12 : std_logic_vector := "1111111111111111"; -- 
  CONSTANT INST13 : std_logic_vector := "0001000000000101"; -- ST   RF[0] D[5]           -- salva na memoria 5 o resultado do MDC
  CONSTANT INST14 : std_logic_vector := "0000010000001100"; -- LOAD RF[4] D[12]           -- carrega para o reg 4 o valor da memoria 12
  CONSTANT INST15 : std_logic_vector := "0010010101000000"; -- ADD  RF[5] RF[4] RF[0]    -- salva no reg 5 a soma do reg 4 + reg 0
  CONSTANT INST16 : std_logic_vector := "0001010100000110"; -- ST   RF[5] D[6]           -- Salva o resultado da soma na memoria 6

  -- Build a 2-D array type for the RoM
  SUBTYPE word_t IS std_logic_vector(D_Width - 1 DOWNTO 0);
  TYPE memory_t IS ARRAY (0 TO 2 ** A_Width - 1) OF word_t;

  -- essa função gera um arquivo .mif de inicialização da rom
  FUNCTION init_rom
    RETURN memory_t IS
    VARIABLE tmp : memory_t := (OTHERS => (OTHERS => '1'));
  BEGIN
    tmp(ADDR1) := INST1;
    tmp(ADDR2) := INST2;
    tmp(ADDR3) := INST3;
    tmp(ADDR4) := INST4;
    tmp(ADDR5) := INST5;
    tmp(ADDR6) := INST6;
    tmp(ADDR7) := INST7;
    tmp(ADDR8) := INST8;
    tmp(ADDR9) := INST9;
    tmp(ADDR10) := INST10;
    tmp(ADDR11) := INST11;
    tmp(ADDR12) := INST12;
    tmp(ADDR13) := INST13;
    tmp(ADDR14) := INST14;
    tmp(ADDR15) := INST15;
    tmp(ADDR16) := INST16;
    RETURN tmp;
  END init_rom;

  SIGNAL rom : memory_t := init_rom;

BEGIN

  q <= rom(to_integer(unsigned(addr)));

END rtl;