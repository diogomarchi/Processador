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
end processador_control;

architecture rtl of processador_control is
  -- s_0 inicio
  -- s_1 busca
  -- s_2 decodificação
  -- s_3 carregar
  -- s_4 armazenar
  -- s_5 somar
  type t_STATE is (s_0, s_1, s_2, s_3, s_4, s_5);
  signal r_STATE: t_STATE;  -- state register
  signal w_NEXT : t_STATE;  -- next state  
  signal w_OP, w_RA, w_RB, w_RC:std_logic_vector(3 downto 0);
  signal w_D:std_logic_vector(7 downto 0);

begin

   --atribuição do valor de OP a partir do valor de entrada
	w_OP(3 to 0) <= i_DATA(15 downto 12);
-- w_OP[0] <= i_DATA[12];
--	w_OP[1] <= i_DATA[13];
--	w_OP[2] <= i_DATA[14];
--	w_OP[3] <= i_DATA[15];
	
	--atribuição do valor de RA a partir do valor de entrada
	w_RA(3 to 0) <= i_DATA(11 downto 8);
--	w_RA[0] <= i_DATA[8];
--	w_RA[1] <= i_DATA[9];
--	w_RA[2] <= i_DATA[10];
--	w_RA[3] <= i_DATA[11];
	
	--atribuição do valor de RB a partir do valor de entrada
	w_RB(3 to 0) <= i_DATA(7 downto 4);
--	w_RB[0] <= i_DATA[4];
--	w_RB[1] <= i_DATA[5];
--	w_RB[2] <= i_DATA[6];
--	w_RB[3] <= i_DATA[7];
	
	--atribuição do valor de RC a partir do valor de entrada
	w_RC(3 to 0) <= i_DATA(3 downto 0);
--	w_RC[0] <= i_DATA[0];
--	w_RC[1] <= i_DATA[1];
--	w_RC[2] <= i_DATA[2];
--	w_RC[3] <= i_DATA[3];
	
	--atribuição do valor de D a partir do valor de entrada
	w_D(7 to 0)  <= i_DATA(7 downto 0);
--	w_D[0]  <= i_DATA[0];
--	w_D[1]  <= i_DATA[1];
--	w_D[2]  <= i_DATA[2];
--	w_D[3]  <= i_DATA[3];
--	w_D[4]  <= i_DATA[4];
--	w_D[5]  <= i_DATA[5];
--	w_D[6]  <= i_DATA[6];
--	w_D[7]  <= i_DATA[7];

  
  p_STATE : process (i_CLK, i_CLR_n)
  begin
  
    if (i_CLR_n ='0') then
      r_STATE <= s_0;     --initial state
    elsif (rising_edge(i_CLK)) then
      r_STATE <= w_NEXT;  --next state
    end if;
  end process;
  
  
  p_NEXT : process(r_STATE, i_DATA)    
  begin
    case (r_STATE) is
      when s_0 =>        					 
              w_NEXT  <= s_1; --vai para o proximo passando clear em 1  
				  
		when s_1 =>         
				  w_NEXT  <= s_2;
				  
      when s_2 => 
				  if (w_OP = "0000") then    -- caso op = load next state = carregar
					 w_NEXT <= s_3;
				  elsif(w_OP = "0001") then  -- caso op = armazenar next state = armazenar
					 w_NEXT <= s_4;
				  elsif(w_OP = "0010") then   -- caso op = somar next state = somar
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
    
  
  o_PC_CLR <= '1' when (r_STATE = s_0) else '0';  
  
  o_I_RD   <= '1' when (r_STATE = s_1) else '0';  
  
  o_IR_LD  <= '1' when (r_STATE = s_1) else '0';  
  
  o_PC_INC <= '1' when (r_STATE = s_1) else '0';  
  
  o_D_ADDR <=  w_D when ((r_STATE = s_3) or (r_STATE = s_4)) else "00000000"; 
  
  o_D_RD   <= '1' when (r_STATE = s_3) else '0';    
  
  o_RF_S   <= '1' when (r_STATE = s_3) else '0';  
  
  o_RF_W_ADDR  <= w_RA when ((r_STATE = s_3) or (r_STATE = s_4) or (r_STATE = s_5)) else "0000";  
  
  o_RF_W_WR    <= '1' when ((r_STATE = s_3) or (r_STATE = s_5)) else '0'; 
  
  o_D_WR   <= '1' when (r_STATE = s_4) else '0';  
  
  o_RF_RP_ADDR <= w_RA when (r_STATE = s_4);o_RF_RP_ADDR <= w_RB when (r_STATE = s_5) else "0000"; 
  
  o_RF_RP_RD   <= '1' when ((r_STATE = s_4) or (r_STATE = s_5)) else '0';
  
  o_RF_RQ_ADDR <= w_RC when (r_STATE = s_5) else "0000";
  
  o_RF_RQ_RD   <= '1' when (r_STATE = s_5) else '0';
  
  o_ALU_S0     <= '1' when (r_STATE = s_5) else '0';
  
  
end rtl;
