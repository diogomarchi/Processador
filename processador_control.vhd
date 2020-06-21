------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity processador_control is 
port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
		 i_RD    : in std_logic;  -- input clear/reset
		 i_ADDR  : in std_logic_vector(15 downto 0); -- input operacao
		 o_DATA  : out std_logic_vector(15 downto 0) -- output data
       ); 
end processador_control;

architecture rtl of processador_control is 
  
component processador_unidade_controle is 
port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
		 i_DATA  : in std_logic_vector(15 downto 0); -- input operacao
		 o_ADDR  : out std_logic_vector(15 downto 0); -- input operacao
		 o_RD    : out std_logic   -- output soma ULA
       ); 
end component;

		
begin 

--connecting processador_unidade_controle with processador_control
--u_PROCESSADOR_UC : processador_unidade_controle port map (i_CLR_N => i_PCLR_N,
	--																		i_CLK    => i_CLK,
		--																	i_DATA   => o_DATA,
			--																o_ADDR   => i_ADDR,
				--															o_RD     => i_RD
					--														);


  
  
end rtl;

