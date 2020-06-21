------------------------------------------------
-- Design: register_file
-- Entity: register_file
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 06/19/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity register_file is
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
end register_file;


architecture arch1 of register_file is
  signal w_ENA_R0, w_ENA_R1, w_ENA_R2, w_ENA_R3, w_ENA_R4, w_ENA_R5, w_ENA_R6 : std_logic;
  signal w_ENA_R7, w_ENA_R8, w_ENA_R9, w_ENA_R10, w_ENA_R11, w_ENA_R12, w_ENA_R13 : std_logic;
  signal w_ENA_R14, w_ENA_R15 : std_logic;  
  
  signal w_i_O_R0, w_i_O_R1, w_i_O_R2, w_i_O_R3, w_i_O_R4, w_i_O_R5, w_i_O_R6 : std_logic_Vector(15 downto 0);
  signal w_i_O_R7, w_i_O_R8, w_i_O_R9, w_i_O_R10, w_i_O_R11, w_i_O_R12, w_i_O_R13 : std_logic_Vector(15 downto 0);
  signal w_i_O_R14, w_i_O_R15 : std_logic_Vector(15 downto 0);
  
  -- saidas registradores
  signal w_O_MUX_RP, w_O_MUX_RQ : std_logic_Vector(15 downto 0);  

  component register_16bit is
  port ( i_CLK   : in std_logic;
         i_CLR_N : in std_logic;
         i_ENA   : in  std_logic;  -- enable
         i_A     : in  std_logic_Vector(15 downto 0);  -- data input       
         o_Q     : out  std_logic_Vector(15 downto 0)); -- data output
  end component;
  
  component demux1x16 is
  port ( i_SEL : in  std_logic_Vector(3 downto 0);  -- selector
       i_A   : in  std_logic;  -- data input
       o_S0  : out  std_logic;  -- data output
		 o_S1  : out  std_logic;  -- data output
		 o_S2  : out  std_logic;  -- data output
		 o_S3  : out  std_logic;  -- data output
		 o_S4  : out  std_logic;  -- data output
		 o_S5  : out  std_logic;  -- data output
		 o_S6  : out  std_logic;  -- data output
		 o_S7  : out  std_logic;  -- data output
		 o_S8  : out  std_logic;  -- data output
		 o_S9  : out  std_logic;  -- data output
		 o_S10  : out  std_logic;  -- data output
		 o_S11  : out  std_logic;  -- data output
		 o_S12  : out  std_logic;  -- data output
		 o_S13  : out  std_logic;  -- data output
		 o_S14  : out  std_logic;  -- data output		 
		 o_S15  : out  std_logic   -- data output
       );
  end component;
  
  component mux16x1 is
  port ( i_SEL : in  std_logic_Vector(3 downto 0);  -- selector       
       i_S0  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S1  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S2  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S3  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S4  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S5  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S6  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S7  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S8  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S9  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S10  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S11  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S12  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S13  : in  std_logic_vector(15 downto 0);  -- data input 
		 i_S14  : in  std_logic_vector(15 downto 0);  -- data input 		 
		 i_S15  : in  std_logic_vector(15 downto 0);  -- data input 
		 o_Q    : out std_logic_vector(15 downto 0)  -- data output
       ); 
  end component;

begin

  process(i_CLR_N,i_CLK) 
  begin
    if (i_CLR_N = '0') then
      
	 elsif (rising_edge(i_CLK)) then
      
    end if;
  end process;
  
  
  u_R0 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R0,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R0);
  
  u_R1 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R1,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R1);
											  
  u_R2 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R2,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R2);
											  
  u_R3 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R3,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R3);
											  
  u_R4 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R4,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R4);
											  
  u_R5 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R5,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R5);
											  
  u_R6 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R6,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R6);
											  
  u_R7 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R7,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R7);
											  
  u_R8 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R8,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R8);
											  
  u_R9 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R9,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R9);
											  
  u_R10 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R10,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R10);
											  
  u_R11 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R11,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R11);
											  
  u_R12 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R12,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R12);
											  
  u_R13 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R13,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R13);
											  
  u_R14 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   =>  w_ENA_R14,  -- enable
                                   i_A     =>  i_W_DATA,  -- data input       
                                   o_Q     =>  w_i_O_R14);
											  
  u_R15 : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => w_ENA_R15,  -- enable
                                   i_A     => i_W_DATA,  -- data input       
                                   o_Q     => w_i_O_R15);
											  											  
											  

  u_DEMUX : demux1x16 port map ( 
       i_SEL => i_RF_W_addr,  -- selector
       i_A   => i_RF_W_wr,  -- register enable/disable
       o_S0  => w_ENA_R0,  -- data output
		 o_S1  => w_ENA_R1,  -- data output
		 o_S2  => w_ENA_R2,  -- data output
		 o_S3  => w_ENA_R3,  -- data output
		 o_S4  => w_ENA_R4,  -- data output
		 o_S5  => w_ENA_R5,  -- data output
		 o_S6  => w_ENA_R6,  -- data output
		 o_S7  => w_ENA_R7,  -- data output
		 o_S8  => w_ENA_R8,  -- data output
		 o_S9  => w_ENA_R9,  -- data output
		 o_S10  => w_ENA_R10,  -- data output
		 o_S11  => w_ENA_R11,  -- data output
		 o_S12  => w_ENA_R12,  -- data output
		 o_S13  => w_ENA_R13,  -- data output
		 o_S14  => w_ENA_R14,  -- data output		 
		 o_S15  => w_ENA_R15   -- data output
       );
											  
  u_MUX_RP : mux16x1 port map ( 
       i_SEL => i_RF_RP_addr,  -- RP address        
       i_S0  => w_i_O_R0,  -- data input 		 
		 i_S1  => w_i_O_R1,  -- data input 		 
		 i_S2  => w_i_O_R2,  -- data input 		 
		 i_S3  => w_i_O_R3,  -- data input 		 
		 i_S4  => w_i_O_R4,  -- data input 		 
		 i_S5  => w_i_O_R5,  -- data input 		 
		 i_S6  => w_i_O_R6,  -- data input 		 
		 i_S7  => w_i_O_R7,  -- data input 		 
		 i_S8  => w_i_O_R8,  -- data input 		 
		 i_S9  => w_i_O_R9,  -- data input 		 
		 i_S10  => w_i_O_R10,  -- data input 		 
		 i_S11  => w_i_O_R11,  -- data input 		 
		 i_S12  => w_i_O_R12,  -- data input 		 
		 i_S13  => w_i_O_R13,  -- data input 		 
		 i_S14  => w_i_O_R14,  -- data input 		 
		 i_S15  => w_i_O_R15,  -- data input 
		 o_Q    => w_O_MUX_RP  -- data output
       ); 

  u_MUX_RQ : mux16x1 port map ( 
       i_SEL => i_RF_RQ_addr,  -- RP address        
       i_S0  => w_i_O_R0,  -- data input 		 
		 i_S1  => w_i_O_R1,  -- data input 		 
		 i_S2  => w_i_O_R2,  -- data input 		 
		 i_S3  => w_i_O_R3,  -- data input 		 
		 i_S4  => w_i_O_R4,  -- data input 		 
		 i_S5  => w_i_O_R5,  -- data input 		 
		 i_S6  => w_i_O_R6,  -- data input 		 
		 i_S7  => w_i_O_R7,  -- data input 		 
		 i_S8  => w_i_O_R8,  -- data input 		 
		 i_S9  => w_i_O_R9,  -- data input 		 
		 i_S10  => w_i_O_R10,  -- data input 		 
		 i_S11  => w_i_O_R11,  -- data input 		 
		 i_S12  => w_i_O_R12,  -- data input 		 
		 i_S13  => w_i_O_R13,  -- data input 		 
		 i_S14  => w_i_O_R14,  -- data input 		 
		 i_S15  => w_i_O_R15,  -- data input 
		 o_Q    => w_O_MUX_RQ  -- data output
       );


  u_RP : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => i_RF_RP_rd,  -- enable
                                   i_A     => w_O_MUX_RP,  -- data input       
                                   o_Q     => o_RP_DATA);
											  
  u_RQ : register_16bit port map ( i_CLK   => i_CLK,
                                   i_CLR_N => i_CLR_N,
                                   i_ENA   => i_RF_RQ_rd,  -- enable
                                   i_A     => w_O_MUX_RQ,  -- data input       
                                   o_Q     => o_RQ_DATA);
		 
  
end arch1;


