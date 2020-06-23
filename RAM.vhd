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
  -- endereços que receberão valores 
  constant ADDR1 : integer := 0;  
  constant VAL1 : std_logic_vector := "1111000011110000";
  
  type ram_type is array (0 to 2**A_Width-1) of std_logic_vector(D_Width-1 downto 0);
      

  -- essa função gera um arquivo .mif de inicialização da rom
  function init_ram
    return ram_type is
    variable tmp : ram_type := (others => (others => '0'));
  begin
    for addr_pos in 0 to 2**A_Width-1 loop
      case (addr_pos) is
        when  ADDR1 => 
          tmp(addr_pos) := VAL1;
        when others =>
          tmp(addr_pos) := "0000000000000000"; 
      end case;
    end loop;
  return tmp;
  end init_ram;
		
  signal ram : ram_type := init_ram;
   
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


