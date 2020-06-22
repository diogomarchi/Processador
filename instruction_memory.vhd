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
  port ( i_CLK   : in std_logic;       
       i_CLR_n   : in std_logic;   
       i_IR_RD   : in  std_logic;  -- enable read         		 
		 i_IR_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
       o_R_DATA  : out  std_logic_Vector(D_Width-1 downto 0)); -- data output

end entity instruction_memory;



architecture rtl of instruction_memory is
  
  component single_port_rom is
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 16); -- address width
	port
	(
		addr	: in std_logic_vector(15 downto 0);
		clk	: in std_logic;
		q		: out std_logic_vector(15 downto 0)
	);
	
end component single_port_rom;
  
  component register_16bit is
  port ( i_CLK   : in std_logic;
         i_CLR_N : in std_logic;
         i_ENA   : in  std_logic;  -- enable
         i_A     : in  std_logic_Vector(15 downto 0);  -- data input       
         o_Q     : out  std_logic_Vector(15 downto 0)); -- data output
  end component register_16bit;

signal w_O_ROM: std_logic_vector(15 downto 0);
  
begin  
  	  
  u_register_16bit: register_16bit port map( 
			i_CLK   => i_CLK,
         i_CLR_N => i_CLR_n,
         i_ENA   => i_IR_RD,
         i_A     => w_O_ROM,
         o_Q     => o_R_DATA);
			
			
  u_single_port_rom: single_port_rom port map(
      addr	=> i_IR_ADDR,
	   clk	=> i_CLK,
	   q		=> w_O_ROM);

end rtl;

