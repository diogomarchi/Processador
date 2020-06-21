------------------------------------------------
-- Design: operational_block
-- Entity: operational_block
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity operational_block is
port ( i_CLK   : in std_logic;
       i_CLR_N : in std_logic;
       i_RF_s  : in  std_logic;  -- register file selector
		 i_ALU_s0  : in  std_logic;  -- ALU operation
		 i_RF_W_wr  : in  std_logic;  -- enable W write
		 i_RF_RP_rd : in  std_logic;  -- enable RP read
		 i_RF_RQ_rd : in  std_logic;  -- enable RQ read
       i_RF_W_addr  : in  std_logic_Vector(3 downto 0);  -- W write address
		 i_RF_RP_addr : in  std_logic_Vector(3 downto 0);  -- RP read address   
		 i_RF_RQ_addr : in  std_logic_Vector(3 downto 0);  -- RP read address
		 i_R_DATA  : in  std_logic_Vector(15 downto 0);    -- W input data
		 o_W_DATA : out  std_logic_Vector(15 downto 0)   -- W output data
       ); 
end operational_block;


architecture arch_1 of operational_block is

  signal w_o_ALU : std_logic_vector(15 downto 0);
  signal w_o_MUX : std_logic_vector(15 downto 0);
  signal w_o_RP_DATA : std_logic_vector(15 downto 0);
  signal w_o_RQ_DATA : std_logic_vector(15 downto 0);
  
  
  component mux2x1 is
  port ( i_SEL : in  std_logic;  -- selector
         i_A   : in  std_logic_Vector(15 downto 0);  -- data input
         i_B   : in  std_logic_Vector(15 downto 0);  -- data input
         o_Q   : out  std_logic_Vector(15 downto 0));  -- data output
  end component;
  
  component register_file is
  port ( i_CLK   : in std_logic;
         i_CLR_N : in std_logic;
         i_RF_W_wr  : in  std_logic;  -- enable W write
         i_RF_RP_rd : in  std_logic;  -- enable RP read
         i_RF_RQ_rd : in  std_logic;  -- enable RQ read
         i_RF_W_addr  : in  std_logic_Vector(3 downto 0);  -- W write address
         i_RF_RP_addr : in  std_logic_Vector(3 downto 0);  -- RP read address   
         i_RF_RQ_addr : in  std_logic_Vector(3 downto 0);  -- RP read address
         i_W_DATA  : in  std_logic_Vector(15 downto 0);    -- W input data
         o_RP_DATA : out  std_logic_Vector(15 downto 0);  -- RP output data
         o_RQ_DATA : out  std_logic_Vector(15 downto 0)   -- RQ output data
       ); 
  end component;
  
  component ALU is
  port ( i_CLK   : in std_logic;
         i_CLR_N : in std_logic;
         i_S0    : in  std_logic;  -- selector
         i_A     : in  std_logic_Vector(15 downto 0);  -- data input
         i_B     : in  std_logic_Vector(15 downto 0);  -- data input
         o_Q     : out  std_logic_Vector(15 downto 0)); -- data output
  end component;

begin
  
  u_MUX : mux2x1 port map ( 
         i_SEL => i_RF_s,  -- selector
         i_A   => i_R_DATA,  -- data input
         i_B   => w_o_ALU,  -- data input
         o_Q   => w_o_MUX);  -- data output
			
  u_REGISTER_FILE : register_file port map  ( 
         i_CLK   => i_CLK,
         i_CLR_N => i_CLR_N,
         i_RF_W_wr  => i_RF_W_wr,  -- enable W write
         i_RF_RP_rd => i_RF_RP_rd,  -- enable RP read
         i_RF_RQ_rd => i_RF_RQ_rd,  -- enable RQ read
         i_RF_W_addr  => i_RF_W_addr,  -- W write address
         i_RF_RP_addr => i_RF_RP_addr,  -- RP read address   
         i_RF_RQ_addr => i_RF_RQ_addr,  -- RP read address
         i_W_DATA  => w_o_MUX,    -- W input data
         o_RP_DATA => w_o_RP_DATA,  -- RP output data
         o_RQ_DATA => w_o_RQ_DATA   -- RQ output data
       );
	 
	 
  o_W_DATA <= w_o_RP_DATA;
  
  u_ALU : ALU port map ( 
         i_CLK   => i_CLK,
         i_CLR_N => i_CLR_N,
         i_S0    => i_ALU_s0,  -- selector
         i_A     => w_o_RP_DATA,  -- data input
         i_B     => w_o_RQ_DATA,  -- data input
         o_Q     => w_o_ALU  -- data output
			); 
	 
  
end arch_1;