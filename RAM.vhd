------------------------------------------------
-- Design: RAM
-- Entity: RAM
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;
use ieee.STD_LOGIC_UNSIGNED.all;


entity RAM is 
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 8); -- address width
  
  port ( i_CLK   : in std_logic;       
       i_CLR_n   : in std_logic;   
       i_WE  : in  std_logic;  -- enable       
		 i_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
		 i_DATA : in  std_logic_Vector(D_Width-1 downto 0); -- data input
       o_DATA : out  std_logic_Vector(D_Width-1 downto 0)); -- data output

end entity RAM;



architecture RAM_Arch of RAM is
  type ram_type is array (0 to 2**A_Width-1) of std_logic_vector(D_Width-1 downto 0);
    
  impure function read_file (txt_file : in string) return ram_type is 
    file ram_file : text open read_mode is txt_file;
	 variable txt_line : line;
	 variable txt_bit  : bit_vector(D_Width-1 downto 0);
	 variable txt_ram  : ram_type;	 
  begin 
    for i in ram_type'range loop
	   readline(ram_file, txt_line);
		read(txt_line, txt_bit);
		txt_ram(i) := to_stdlogicvector(txt_bit);	 
	 end loop; return txt_ram;  
  end function;
  
  signal ram : ram_type := read_file("initial_ram.txt");
   

begin

  p_RAM : process (i_CLK)
  begin
  
    if(rising_edge(i_CLK)) then 
	   if(i_WE = '1') then -- write enable
		  ram(to_integer(unsigned(i_ADDR))) <= i_DATA;
		end if;		  
	 end if;
  end process p_RAM;
  
  o_DATA <= ram(to_integer(unsigned(i_ADDR)));

end RAM_Arch;


