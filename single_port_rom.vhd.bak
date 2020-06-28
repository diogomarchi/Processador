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
  -- endereços que receberão valores iniciais
  constant ADDR1 : integer := 0;  
  constant ADDR2 : integer := 1;
  constant ADDR3 : integer := 2;
  constant ADDR4 : integer := 3;
  constant ADDR5 : integer := 4;
  constant ADDR6 : integer := 5;
  constant ADDR7 : integer := 6;
  
  constant VAL1 : std_logic_vector := "0000000000000000";
  constant VAL2 : std_logic_vector := "0000000100000001";
  constant VAL3 : std_logic_vector := "0010001000000001";
  constant VAL4 : std_logic_vector := "0001001000001001";
  constant VAL5 : std_logic_vector := "0011000100001001";--rf[1]=9
  constant VAL6 : std_logic_vector := "0100010001000001";--rf[4]=(4 - 1)
  constant VAL7 : std_logic_vector := "0101000100001001";--salta

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
			    tmp(addr_pos) := VAL1;
           when  ADDR2 => 
			    tmp(addr_pos) := VAL2;
           when  ADDR3 => 
			    tmp(addr_pos) := VAL3;
           when  ADDR4 => 
			    tmp(addr_pos) := VAL4;
           when  ADDR5 => 
			    tmp(addr_pos) := VAL5;
           when  ADDR6 => 
			    tmp(addr_pos) := VAL6;
           when  ADDR7 => 
			    tmp(addr_pos) := VAL7;				 
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
