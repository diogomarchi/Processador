------------------------------------------------
-- Design: rom
-- Entity: single_port_rom
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/22/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity single_port_rom is
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 16); -- address width
	port
	(
		addr	: in std_logic_vector(15 downto 0);		
		q		: out std_logic_vector(15 downto 0)
	);
	
end entity;

architecture rtl of single_port_rom is
  
    -- MOV RF[0] 	2			-- Salva 2 registrador 0
	 -- MOV RF[1] 	16			-- Salva 16 registrador 1
	 -- MDC RF[0] 	RF[1]		-- Inicia MDC entre os registradores 
	 -- ST  RF[0] 	D[5]		-- Salva o resultado na memoria 5
	 -- MOV RF[10]	1			-- carrega constante 1 no reg 10		--valor iteracao
	 -- MOV RF[11]	10			-- carrega constante 10 no reg 11   --valor limite
	 -- MOV RF[12]  0			-- carrega constante 0 no reg 12    --iterador
	 -- SUB RF[13]	RF[11] RF[12] -- RF[13]	= RF[11] - RF[12] 
	 -- JMPZ RF[13] 3			-- se resultado sub = 0 pula 3 instruct
	 -- ADD RF[12] RF[12] RF[10] -- iterador = iterador + 1 
	 -- MOV RF[7]	0			-- carrega constante 0 no reg 7    --para pular	 
	 -- JMPZ RF[7] -4			-- pula -4 instruct
	 -- MOV RF[12] D[10]		-- salva iterador na memoria 5
	 
  
  
  -- endereços que receberão valores iniciais
  constant ADDR1 : integer := 0;
  constant ADDR2 : integer := 1;
  constant ADDR3 : integer := 2;
  constant ADDR4 : integer := 3;
  constant ADDR5 : integer := 4;
  constant ADDR6 : integer := 5;
  constant ADDR7 : integer := 6;
  constant ADDR8 : integer := 7;
  constant ADDR9 : integer := 8;
  constant ADDR10 : integer := 9;
  constant ADDR11 : integer := 10;
  constant ADDR12 : integer := 11;
  constant ADDR13 : integer := 12;
  constant ADDR14 : integer := 13;

  constant INST1 : std_logic_vector := "0011000000001010"; -- MOV RF[0]     10            -- Salva 10 registrador 0
  constant INST2 : std_logic_vector := "0011000100010000"; -- MOV RF[1]     16            -- Salva 16 registrador 1
  constant INST3 : std_logic_vector := "0100001000000001"; -- SUB RF[2] RF[O] - RF[1]     --grava no registrador 2 o resultado da subtração
  constant INST4 : std_logic_vector := "0101001000000111"; -- JMPZ RF[2]                  -- pula ;
  constant INST5 : std_logic_vector := "0110001000000001"; --                             --verifica se rp é menor que rq
  constant INST6 : std_logic_vector := "0101001000000001";  -- JMPZ RF[2]                  -- pula 1 linha e faz rp - rq
  constant INST7 : std_logic_vector := "0100000100010000"; -- SUB RF[1] RF[1] - RF[0]     --grava no registrador 1 o resultado da subtração  
  constant INST8 : std_logic_vector := "0100000000000001"; -- SUB RF[0] RF[O] - RF[1]     --grava no registrador 0 o resultado da subtração
  constant INST9 : std_logic_vector := "0011011100000000";  -- MOV RF[7]    0            -- carrega constante 0 no reg 7    --para pular
  constant INST10 : std_logic_vector := "0101011111111001";  -- JMPZ RF[7]                  -- pula -7
  constant INST11 : std_logic_vector := "0001000000000101"; -- ST  RF[0]     D[5]          -- Salva o resultado na memoria 5
  constant INST12 : std_logic_vector := "0000010000000101"; -- load RF[4] = D[5]
  constant INST13 : std_logic_vector := "0010010101000000"; -- add RF[5] = RF[4] + RF[0]  
  constant INST14 : std_logic_vector := "0001010100000110"; -- ST  RF[5]     D[6]          -- Salva o resultado da soma na memoria 6
  
  -- Build a 2-D array type for the RoM
  subtype word_t is std_logic_vector(D_Width-1 downto 0);
  type memory_t is array (0 to 2**A_Width-1) of word_t;

  -- essa função gera um arquivo .mif de inicialização da rom
  function init_rom
    return memory_t is
     variable tmp : memory_t := (others => (others => '0'));
     begin
        for addr_pos in 0 to 2**A_Width-1 loop
         case (addr_pos) is
           when  ADDR1 => 
                tmp(addr_pos) := INST1;
           when  ADDR2 => 
                tmp(addr_pos) := INST2;
           when  ADDR3 => 
                tmp(addr_pos) := INST3;
           when  ADDR4 => 
                tmp(addr_pos) := INST4;
           when  ADDR5 => 
                tmp(addr_pos) := INST5;
           when  ADDR6 => 
                tmp(addr_pos) := INST6;
           when  ADDR7 => 
                tmp(addr_pos) := INST7;
           when  ADDR8 => 
                tmp(addr_pos) := INST8;
           when  ADDR9 => 
                tmp(addr_pos) := INST9;
           when  ADDR10 => 
                tmp(addr_pos) := INST10;
           when  ADDR11 => 
                tmp(addr_pos) := INST11;
           when  ADDR12 => 
                tmp(addr_pos) := INST12;
           when  ADDR13 => 
                tmp(addr_pos) := INST13;
           when  ADDR14 => 
                tmp(addr_pos) := INST14;					 
             when others =>
                tmp(addr_pos) := "1111111111111111"; 
            end case;
        end loop;
    return tmp;
  end init_rom;

  signal rom : memory_t := init_rom;
  
  
			
begin	
	
	q <= rom(to_integer(unsigned(addr)));	
		
end rtl;
