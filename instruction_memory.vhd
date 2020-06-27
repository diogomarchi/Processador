------------------------------------------------
-- Design: data_memo
-- Entity: data_memo
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;


entity instruction_memory is 
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 16); -- address width
  port(i_IR_RD   : in  std_logic;  -- enable read         		 
		 i_IR_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
       o_R_DATA  : out  std_logic_Vector(D_Width-1 downto 0)); -- data output

end entity instruction_memory;



architecture rtl of instruction_memory is
  
  component single_port_rom is
    generic (D_Width : integer := 16; -- data width
             A_Width : integer := 16); -- address width
			  
  port(addr	: in std_logic_vector(15 downto 0);		
		q		: out std_logic_vector(15 downto 0));	
  end component single_port_rom;
  
signal w_O_ROM: std_logic_vector(15 downto 0);
  
begin  
  	
  u_single_port_rom: single_port_rom port map(
      addr	=> i_IR_ADDR,	   
	   q		=> w_O_ROM);
		
  o_R_DATA <= w_O_ROM when (i_IR_RD = '1') else "ZZZZZZZZZZZZZZZZ";

end rtl;

