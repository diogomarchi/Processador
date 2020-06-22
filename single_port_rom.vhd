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
		clk	: in std_logic;
		q		: out std_logic_vector(15 downto 0)
	);
	
end entity;

architecture rtl of single_port_rom is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(D_Width-1 downto 0);
	type memory_t is array (0 to 2**A_Width-1) of word_t;
------------------------------------------------------	
	
	impure function read_file (txt_file : in string) return memory_t is 
    file rom_file : text open read_mode is txt_file;
	 variable txt_line : line;
	 variable txt_bit  : bit_vector(D_Width-1 downto 0);
	 variable txt_rom  : memory_t;	 
  begin 
    for i in memory_t'range loop
	   readline(rom_file, txt_line);
		read(txt_line, txt_bit);
		txt_rom(i) := to_stdlogicvector(txt_bit);	 
	 end loop; return txt_rom;  
  end function;
  
  signal rom1 : memory_t := read_file("initial_rom.txt");
--------------------------------------------------	
		
	function init_rom
		return memory_t is
		variable tmp : memory_t := (others => (others => '0'));
		begin
			for addr_pos in memory_t'range loop
				-- Initialize each address with the address itself
				tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, D_Width));
			end loop;
		return tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom2 : memory_t := init_rom;


begin	
	p_ROM : process (clk)
	begin
		if(rising_edge(clk)) then
			q <= rom1(to_integer(unsigned(addr)));
		end if;
	end process p_ROM;
		
end rtl;
