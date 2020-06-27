------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity processador_top is 
port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
       o_SAIDA_RF: out std_logic_vector(15 downto 0)
       ); 
end processador_top;

architecture rtl of processador_top is 
  
  component control_unity is 
  port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n     : in std_logic;  -- input clear/reset
		 i_DATA      : in std_logic_vector(15 downto 0); -- input instruction register
		 i_RP_LT_RQ  : in std_logic;
		 i_RP_EQ_RQ  : in std_logic;
		 i_RF_RP_zero: in std_logic;  -- output RF_RP zero
		 o_I_RD      : out std_logic;  -- output instruction read 
       o_D_ADDR    : out std_logic_vector(7 downto 0);  -- output data address
       o_D_RD      : out std_logic;  -- output data read
		 o_D_WR      : out std_logic;  -- output data write
		 o_RF_S0     : out std_logic;  -- output RD_S
		 o_RF_S1     : out std_logic;  -- output RD_S
       o_RF_W_ADDR : out std_logic_vector(3 downto 0);  -- output register file address
       o_RF_W_WR   : out std_logic;  -- output RF_w escrita
		 o_RF_W_DATA : out std_logic_vector(7 downto 0);  -- output data for mux 3x1
		 o_RF_RP_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RP adress
		 o_RF_RP_RD  : out std_logic;  -- output RF_RP read
		 o_RF_RQ_ADDR: out std_logic_vector(3 downto 0);  -- output RF_RQ adress
		 o_RF_RQ_RD  : out std_logic;  -- output RF_RQ lread
		 o_ALU_S0    : out std_logic;   -- output soma ULA
		 o_ALU_S1    : out std_logic;   -- output soma ULA 
       o_ADDR    	 : out std_logic_vector(15 downto 0)     
         ); 
  end component control_unity;

  
  component data_memo is 
    generic (D_Width : integer := 16; -- data width
	    		  A_Width : integer := 8); -- address width
    port ( i_CLK   : in std_logic;       
	  	   i_CLR_n   : in std_logic;   
		   i_D_rd    : in  std_logic;  -- enable read      
		   i_D_wr    : in  std_logic;  -- enable write      		 
		   i_D_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
		   i_W_DATA : in  std_logic_Vector(D_Width-1 downto 0); -- data input
		   o_R_DATA : out  std_logic_Vector(D_Width-1 downto 0)); -- data output
  end component data_memo;
  
  
  component operational_block is
  port ( i_CLK   : in std_logic;
       i_CLR_N : in std_logic;
       i_RF_s0  : in  std_logic;  -- register file selector
		 i_RF_s1  : in  std_logic;  -- register file selector
		 i_ALU_s0  : in  std_logic;  -- ALU operation
		 i_ALU_s1  : in  std_logic;  -- ALU operation
		 i_RF_W_wr  : in  std_logic;  -- enable W write
		 i_RF_RP_rd : in  std_logic;  -- enable RP read
		 i_RF_RQ_rd : in  std_logic;  -- enable RQ read
       i_RF_W_addr  : in  std_logic_Vector(3 downto 0);  -- W write address
		 i_RF_RP_addr : in  std_logic_Vector(3 downto 0);  -- RP read address   
		 i_RF_RQ_addr : in  std_logic_Vector(3 downto 0);  -- RP read address
		 i_RF_W_DATA  : in  std_logic_Vector(7 downto 0);  -- RP read address
		 i_R_DATA     : in  std_logic_Vector(15 downto 0);    -- W input data
		 o_RP_LT_RQ : out std_logic;
		 o_RP_EQ_RQ : out std_logic;
		 o_RF_RP_ZERO : out std_logic;
		 o_W_DATA     : out  std_logic_Vector(15 downto 0)   -- W output data
         ); 
  end component operational_block;
  
  
  component instruction_memory is 
  generic (D_Width : integer := 16; -- data width
           A_Width : integer := 16); -- address width
  port ( i_CLK   : in std_logic;       
         i_CLR_n   : in std_logic;   
         i_IR_RD   : in  std_logic;  -- enable read         		 
		   i_IR_ADDR : in  std_logic_Vector(A_Width-1 downto 0); -- address
         o_R_DATA  : out  std_logic_Vector(D_Width-1 downto 0)); -- data output
  end component instruction_memory;

  
signal w_IR_DATA, w_O_ADDR, w_MEMO_DATA, w_R_DATA: std_logic_vector(15 downto 0);
signal w_O_D_ADDR, w_o_RF_W_DATA: std_logic_vector(7 downto 0);
signal w_O_RF_W_ADDR, w_O_RF_RP_ADDR, w_O_RF_RQ_ADDR: std_logic_vector(3 downto 0);
signal w_O_RD, w_O_D_RD, w_O_D_WR, w_O_RF_S0, w_O_RF_S1, w_O_RF_W_WR, w_O_RF_RP_RD, w_O_RF_RQ_RD, w_O_ALU_S0, w_O_ALU_S1, w_i_RF_RP_zero: std_logic;
signal w_o_RP_LT_RQ, w_o_RP_EQ_RQ : std_logic;

		
begin 

--connecting processador_unidade_controle with processador_control
u_control_unity : control_unity port map (
               i_CLK     => i_CLK,
					i_CLR_n  => i_CLR_n,
					i_DATA   => w_IR_DATA,
					i_RP_LT_RQ => w_o_RP_LT_RQ,
		         i_RP_EQ_RQ => w_o_RP_EQ_RQ,
					i_RF_RP_zero=>w_i_RF_RP_zero,
					o_ADDR   => w_O_ADDR,
					o_I_RD     => w_O_RD,
					o_D_ADDR => w_O_D_ADDR,
					o_D_RD   => w_O_D_RD,
					o_D_WR   => w_O_D_WR,
					o_RF_S0   => w_O_RF_S0,
					o_RF_S1   => w_O_RF_S1,
					o_RF_W_ADDR => w_O_RF_W_ADDR,
				   o_RF_W_WR   => w_O_RF_W_WR,
					o_RF_W_DATA => w_o_RF_W_DATA,
					o_RF_RP_ADDR=> w_O_RF_RP_ADDR,
					o_RF_RP_RD  => w_o_RF_RP_RD,
					o_RF_RQ_ADDR=> w_o_RF_RQ_ADDR,
					o_RF_RQ_RD  => w_O_RF_RQ_RD,
					o_ALU_S0    => w_O_ALU_S0,
					o_ALU_S1    => w_O_ALU_S1
 );
														  
  u_data_memo : data_memo port map ( 
        i_CLK    => i_CLK,
	i_CLR_n  => i_CLR_n,
	i_D_rd   => w_O_D_RD,
	i_D_wr   => w_O_D_WR,
	i_D_ADDR => w_O_D_ADDR,
	i_W_DATA => w_MEMO_DATA,
	o_R_DATA => w_R_DATA
  );
												

  u_operational_block : operational_block port map (  
       i_CLK   => i_CLK,
       i_CLR_N => i_CLR_N,
       i_RF_s0  => w_O_RF_s0,
		 i_RF_s1  => w_O_RF_s1,
       i_ALU_s0  => w_O_ALU_s0,
		 i_ALU_s1  => w_O_ALU_s1,
       i_RF_W_wr  => w_O_RF_W_WR,
       i_RF_RP_rd => w_O_RF_RP_RD,
       i_RF_RQ_rd => w_O_RF_RQ_RD,
       i_RF_W_addr => w_O_RF_W_addr,
		 i_RF_W_DATA => w_o_RF_W_DATA,
       i_RF_RP_addr => w_O_RF_RP_addr,
       i_RF_RQ_addr => w_O_RF_RQ_addr,
       i_R_DATA  => w_R_DATA,
		 o_RP_LT_RQ => w_o_RP_LT_RQ,
		 o_RP_EQ_RQ => w_o_RP_EQ_RQ,
		 o_RF_RP_ZERO=>w_i_RF_RP_zero,
       o_W_DATA => w_MEMO_DATA
  );

  u_instruction_memory : instruction_memory port map( 
	i_CLK     => i_CLK,
        i_CLR_n   => i_CLR_n,
        i_IR_RD   => w_O_RD,
	     i_IR_ADDR => w_O_ADDR,
        o_R_DATA  => w_IR_DATA
  );
  
  o_SAIDA_RF <= w_MEMO_DATA; 
end rtl;

