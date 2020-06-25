------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity control_unity is 
port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
		 i_DATA  : in std_logic_vector(15 downto 0); -- input operacao
		 o_ADDR  : out std_logic_vector(15 downto 0); -- output adress
		 o_RD    : out std_logic;   -- output read
		 o_D_ADDR: out std_logic_vector(7 downto 0);  -- output data address
       o_D_RD  : out std_logic;  -- output data read
		 o_D_WR  : out std_logic;  -- output data write
		 o_RF_S  : out std_logic;  -- output RD_S
       o_RF_W_ADDR : out std_logic_vector(3 downto 0);  -- output register file address
       o_RF_W_WR   : out std_logic;  -- output RF_w escrita
		 o_RF_RP_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RP endereco
		 o_RF_RP_RD  : out std_logic;  -- output RF_RP leitura
		 o_RF_RQ_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RQ endereco
		 o_RF_RQ_RD  : out std_logic;  -- output RF_RQ leitura
		 o_ALU_S0    : out std_logic   -- output soma ULA       
       ); 
end control_unity;

architecture rtl of control_unity is
  
  component program_counter is
  port ( i_PC_CLR : in  std_logic;  -- clear/reset
       i_CLK    : in  std_logic;  -- clock
       i_PC_INC : in  std_logic;  -- enable    
       o_PC     : out std_logic_vector(15 downto 0)); -- data output
  end component;
	
  component instruction_register is
  port ( i_CLR_N : in  std_logic;  -- clear/reset
       i_CLK    : in  std_logic;  -- clock
		 i_DATa   : in  std_logic_vector(15 downto 0);--enter data value
       i_LD     : in  std_logic;  -- enable load instruction register   
       o_IR     : out std_logic_vector(15 downto 0)); -- data output
  end component;

  component control_block is 
  port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
		 i_DATA  : in std_logic_vector(15 downto 0); -- input operacao
		 o_PC_CLR: out std_logic;  -- output clear
		 o_I_RD  : out std_logic;  -- output instruction read
       o_IR_LD : out std_logic;  -- output instruction register load
		 o_PC_INC: out std_logic;  -- output program count increment       
       o_D_ADDR: out std_logic_vector(7 downto 0);  -- output data address
       o_D_RD  : out std_logic;  -- output data read
		 o_D_WR  : out std_logic;  -- output data write
		 o_RF_S  : out std_logic;  -- output RD_S
       o_RF_W_ADDR : out std_logic_vector(3 downto 0);  -- output register file address
       o_RF_W_WR   : out std_logic;  -- output RF_w escrita
		 o_RF_RP_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RP endereco
		 o_RF_RP_RD  : out std_logic;  -- output RF_RP leitura
		 o_RF_RQ_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RQ endereco
		 o_RF_RQ_RD  : out std_logic;  -- output RF_RQ leitura
		 o_ALU_S0    : out std_logic   -- output soma ULA
       ); 
  end component;


  signal w_PC_CLR, w_PC_INC, w_IR_LD: std_logic;
  signal w_IR:std_logic_vector(15 downto 0);

		
begin 

  --connecting reg_PC with processador_unidade_controle
  u_program_counter : program_counter port map (i_PC_CLR => w_PC_CLR,
                            i_CLK    => i_CLK,
                            i_PC_INC => w_PC_INC,
                            o_PC     => o_ADDR);

  --connecting instruction_register with processador_unidade_controle	 
  u_instruction_register : instruction_register port map (
                            i_CLR_n => i_CLR_n,
                            i_CLK   => i_CLK,
								    i_DATA  => i_DATA,
                            i_LD    => w_IR_LD,
                            o_IR    => w_IR);
							
  --connecting processador_bloco_controle with processador_unidade_controle									 
  u_CONTROLE: control_block port map( i_CLK    => i_CLK,
														i_CLR_n  => i_CLR_n,
														i_DATA   => W_IR,
														o_PC_CLR => w_PC_CLR,
														o_I_RD   => o_RD,
														o_IR_LD  => w_IR_LD,
														o_PC_INC => w_PC_INC,
														o_D_ADDR => o_D_ADDR,
														o_D_RD   => o_D_RD,
														o_D_WR   => o_D_WR,
														o_RF_S   => o_RF_S,
														o_RF_W_ADDR => o_RF_W_ADDR,
														o_RF_W_WR   => o_RF_W_WR,
														o_RF_RP_ADDR=> o_RF_RP_ADDR,
														o_RF_RP_RD  => o_RF_RP_RD,
														o_RF_RQ_ADDR=> o_RF_RQ_ADDR,
														o_RF_RQ_RD  => o_RF_RQ_RD,
														o_ALU_S0    => o_ALU_S0
														); 
  
end rtl;

