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


entity data_memo is 
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 8); -- address width
  
  port ( i_CLK   : in std_logic;       
       i_CLR_n   : in std_logic;   
       i_D_rd    : in  std_logic;  -- enable read      
		 i_D_wr    : in  std_logic;  -- enable write      		 
		 i_D_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
		 i_W_DATA : in  std_logic_Vector(D_Width-1 downto 0); -- data input
       o_R_DATA : out  std_logic_Vector(D_Width-1 downto 0)); -- data output

end entity data_memo;



architecture data_memo_Arch of data_memo is
  
  component RAM is 
    generic (D_Width : integer := 16; -- data width
           A_Width : integer := 8); -- address width
  
    port ( i_CLK   : in std_logic;       
       i_CLR_n   : in std_logic;   
       i_WE  : in  std_logic;  -- enable       
		 i_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
		 i_DATA : in  std_logic_Vector(D_Width-1 downto 0); -- data input
       o_DATA : out  std_logic_Vector(D_Width-1 downto 0)); -- data output

  end component;
  
  component register_16bit is
    port ( i_CLK   : in std_logic;
         i_CLR_N : in std_logic;
         i_ENA   : in  std_logic;  -- enable
         i_A     : in  std_logic_Vector(D_Width-1 downto 0);  -- data input       
         o_Q     : out  std_logic_Vector(D_Width-1 downto 0)); -- data output
  end component;
  
  signal w_o_RAM :  std_logic_Vector(D_Width-1 downto 0);

begin  
    
  u_RAM : RAM port map ( 
       i_CLK  => i_CLK,       
       i_CLR_n => i_CLR_n,   
       i_WE   => i_D_wr,  -- enable       
		 i_ADDR => i_D_ADDR, -- address
		 i_DATA => i_W_DATA, -- data input
       o_DATA => w_o_RAM); -- data output

  u_REG_DATA : register_16bit port map ( 
         i_CLK   => i_CLK,
         i_CLR_N => i_CLR_N,
         i_ENA   => i_D_rd,  -- enable
         i_A     => w_o_RAM,  -- data input       
         o_Q     =>  o_R_DATA); -- data output

end data_memo_Arch;

