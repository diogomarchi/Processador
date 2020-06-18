------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity mdc_control is 
port ( i_CLK   : in std_logic;  -- input clock
       i_CLR_n : in std_logic;  -- input clear/reset
		 i_OP    : in std_logic_vector(3 downto 0); -- input operacao
		 o_RD    : out std_logic;  -- output rd
       o_R_ID  : out std_logic;  -- output r_ID
		 o_PC_INC: out std_logic;  -- output r_ID
       o_PC_CLR: out std_logic;  -- output clear
       o_D_ADDR: out std_logic;  -- output D endereco
       o_D_RD  : out std_logic;  -- output D leitura
		 o_D_WR  : out std_logic;  -- output D escrita
		 o_RF_S  : out std_logic;  -- output RD_S
       o_RF_W_ADDR : out std_logic;  -- output RF_w endereco
       o_RF_W_WR   : out std_logic;  -- output RF_w escrita
		 o_RF_RP_ADDR: out std_logic;  -- output RF_RP endereco
		 o_RF_RP_WR  : out std_logic;  -- output RF_RP escrita
		 o_RF_RQ_ADDR: out std_logic;  -- output RF_RQ endereco
		 o_RF_RQ_WR  : out std_logic;  -- output RF_RQ escrita
		 o_ALU_S0    : out std_logic   -- output soma ULA
       ); 
end mdc_control;

architecture rtl of mdc_control is
  type t_STATE is (s_0, s_1, s_2, s_3, s_4,s_5);
  signal r_STATE: t_STATE;  -- state register
  signal w_NEXT : t_STATE;  -- next state  

begin
  
  p_STATE : process (i_CLK, i_CLR_n)
  begin
  
    if (i_CLR_n ='0') then
      r_STATE <= s_0;     --initial state
    elsif (rising_edge(i_CLK)) then
      r_STATE <= w_NEXT;  --next state
    end if;
  end process;
  
  
  p_NEXT : process(r_STATE, i_OP)    
  begin   	
    case (r_STATE) is
      when s_0 =>        					 
              w_NEXT  <= s_1; --vai para o proximo passando clear em 1  
				  
		when s_1 =>         
				  w_NEXT  <= s_2;
				  
      when s_2 => 
					if (i_OP = "0000") then    -- caso op = 0000
					 w_NEXT <= s_3;
				  elsif (i_OP = "0001") then  -- caso op = 0001
					 w_NEXT <= s_4;
				  elsif(i_OP = "0010") then   -- caso op = 0010
					 w_NEXT <= s_5;
				  end if;       
						
      when s_3 =>	
               w_NEXT <= s_1;		
						
      when s_4 => 
               w_NEXT <= s_1;	
					
		when s_5 =>
					W_NEXT <= s_1;
						
      when others => 
               w_NEXT <= s_0;
    end case;   		
  end process;
  
  -- SINALIZA QUE O RESULTADO FOI ENCONTRADO
  o_RDY   <= '1' when (r_STATE = s_0 or r_STATE = s_4) else '0';  

  -- SINALIZA QUE O VALOR DE X DEVE SER CARREGADO NO REGISTRADOR X
  o_X_LD  <= '1' when (r_STATE = s_0 or r_STATE = s_2) else '0';
  
  -- SINALIZA QUE O VALOR DE Y DEVE SER CARREGADO NO REGISTRADOR Y
  o_Y_LD  <= '1' when (r_STATE = s_0 or r_STATE = s_3) else '0';
  
  -- SINALIZA QUE O VALOR DE Y DEVE SER CARREGADO NO REGISTRADOR DE RESULTADO
  o_D_LD  <= '1' when (r_STATE = s_4) else '0';
  
  -- REALIZA SELEÇÃO ENTRE ENTRADA X E RESULTADO DA SUBTRAÇÃO	
  o_X_SEL <= '1' when (r_STATE = s_2) else '0';
  
  -- REALIZA SELEÇÃO ENTRE ENTRADA Y E RESULTADO DA SUBTRAÇÃO
  o_Y_SEL <= '1' when (r_STATE = s_3) else '0';
  
end rtl;

