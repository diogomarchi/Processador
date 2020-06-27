------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity control_block is 
port ( i_CLK       : in std_logic;  -- input clock
       i_CLR_n     : in std_logic;  -- input clear/reset
		 i_DATA      : in std_logic_vector(15 downto 0); -- input instruction register
		 i_RP_LT_RQ  : in std_logic;
		 i_RP_EQ_RQ  : in std_logic;	
		 i_RF_RP_zero: in std_logic;  -- output RF_RP zero
		 o_PC_CLR    : out std_logic;  -- output clear
		 o_I_RD      : out std_logic;  -- output instruction read
       o_IR_LD     : out std_logic;  -- output instruction register load
		 o_PC_INC    : out std_logic;  -- output program counter increment  
       o_PC_LD     : out std_logic;  -- output program counter load 		 
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
		 o_ALU_S1    : out std_logic   -- output soma ULA
       ); 
end control_block;

architecture rtl of control_block is
  -- s_0 inicio
  -- s_1 busca
  -- s_2 decodificação
  -- s_3 carregar
  -- s_4 armazenar
  -- s_5 somar
  -- S_6 carrega constante
  -- S_7 substrair
  -- S_8 saltar se zero
  -- S_9 saltar
  type t_STATE is (s_0, s_1, s_2, s_3, s_4, s_5, S_6, S_7, S_8, S_9, s_10, s_11, s_12, s_13, s_14);
  signal r_STATE: t_STATE;  -- state register
  signal w_NEXT : t_STATE;  -- next state  
  signal w_OP, w_RA, w_RB, w_RC:std_logic_vector(3 downto 0);
  signal w_D:std_logic_vector(7 downto 0);

begin

  p_STATE : process (i_CLK, i_CLR_n)
  begin
  
    if (i_CLR_n ='0') then
      r_STATE <= s_0;     --initial state
    elsif (rising_edge(i_CLK)) then
      r_STATE <= w_NEXT;  --next state
    end if;
  end process;
  
  
  p_NEXT : process(r_STATE, w_OP, i_RF_RP_zero, i_RP_LT_RQ, i_RP_EQ_RQ)    
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
				  elsif(w_OP = "0011") then   -- caso op = carregaconst next state = carregaconst
					 w_NEXT <= s_6;
				  elsif(w_OP = "0100") then   -- caso op = sub A-B next state = sub A - B
					 w_NEXT <= s_7;
				  elsif(w_OP = "0101") then   -- caso op = Jump next state = Jump
					 w_NEXT <= s_8;
				  elsif(w_OP = "0111") then   -- caso op = MDC
				    w_NEXT <= s_10;
				  else
				    w_NEXT <= S_2;
				  end if;       
						
      when s_3 =>	
               w_NEXT <= s_1;		
						
      when s_4 => 
               w_NEXT <= s_1;	
					
		when s_5 =>
					w_NEXT <= s_1;
					
		when s_6 =>
					w_NEXT <= s_1;
					
	   when s_7 =>
					w_NEXT <= s_1;
					
		when s_8 =>
		         if (i_RF_RP_zero = '1') then    -- caso 1, vai para saltar
					  w_NEXT <= s_9;
					else
					  w_NEXT <= s_1;
					end if;
					
		when s_9 =>
               w_NEXT <= s_1;
		
		when s_10 => -- inicio mdc
               w_NEXT <= s_11;		
		
		when s_11 => -- estado decisao
               if(i_RP_LT_RQ = '1') then
					  w_NEXT <= s_12;					
					elsif(i_RP_EQ_RQ = '1') then
		 		     w_NEXT <= s_14;
					else 
					  w_NEXT <= s_13;
		         end if;			  
									
		
		when s_12 => -- caso a
               w_NEXT <= s_11;
		
		when s_13 =>
               w_NEXT <= s_11;
		
		when s_14 =>
               w_NEXT <= s_1;		
					
      when others => 
               w_NEXT <= s_0;
    end case;   		
  end process;



   --atribuição do valor de OP a partir do valor de entrada
  w_OP <= i_DATA(15 downto 12);
	
	--atribuição do valor de RA a partir do valor de entrada
  w_RA <= i_DATA(11 downto 8);

	--atribuição do valor de RB a partir do valor de entrada
  w_RB <= i_DATA( 7 downto 4);
	
	--atribuição do valor de RC a partir do valor de entrada
  w_RC <= i_DATA(3 downto 0);
	
	--atribuição do valor de D a partir do valor de entrada
  W_D <= i_DATA(7 downto 0);
  
  o_RF_W_DATA <= i_DATA(7 downto 0);
	
  o_PC_CLR <= '1' when (r_STATE = s_0) else '0';  
  
  o_I_RD   <= '1' when (r_STATE = s_1) else '0';  
  
  o_IR_LD  <= '1' when (r_STATE = s_1) else '0';  
  
  o_PC_INC  <= '1' when (r_STATE = s_1) else '0';  
  
  o_D_ADDR  <=  w_D when ((r_STATE = s_3) or (r_STATE = s_4)) else "00000000"; 
  
  o_D_RD    <= '1' when (r_STATE = s_3) else '0'; 

  o_D_WR    <= '1' when (r_STATE = s_4) else '0';    
  
  o_RF_S0   <= '1' when (r_STATE = s_3) else '0';  
  
  o_RF_S1   <= '1' when (r_STATE = s_6) else '0';
  
  o_RF_W_ADDR  <= w_RA when ((r_STATE = s_3) or (r_STATE = s_5) or (r_STATE = s_6) or (r_STATE = s_7)) else
                  w_RB when (r_STATE = s_13) else
					   w_RC when (r_STATE = s_12) else	"0000";  
  
  o_RF_W_WR    <= '1' when ((r_STATE = s_3) or (r_STATE = s_5) or (r_STATE = s_6) or (r_STATE = s_7) or (r_STATE = s_12) or(r_STATE = s_13)) else '0'; 
 
  
  o_RF_RP_ADDR <= w_RA when ((r_STATE = s_4) or (r_STATE = s_8)) else
                  w_RB when ((r_STATE = s_5) or (r_STATE = s_7) or (r_STATE = s_11) or (r_STATE = s_12) or(r_STATE = s_13) ) else "0000"; 
  
  o_RF_RP_RD   <= '1' when ((r_STATE = s_4) or (r_STATE = s_5) or (r_STATE = s_7) or (r_STATE = s_8) or (r_STATE = s_11) or (r_STATE = s_12) or(r_STATE = s_13)) else '0';
  
  o_RF_RQ_ADDR <= w_RC when ((r_STATE = s_5) or (r_STATE = s_7) or (r_STATE = s_11) or (r_STATE = s_12) or(r_STATE = s_13) ) else "0000";
  
  o_RF_RQ_RD   <= '1' when ((r_STATE = s_5) or (r_STATE = s_7) or (r_STATE = s_11) or (r_STATE = s_12) or(r_STATE = s_13)) else '0';
  
  o_ALU_S0     <= '1' when (r_STATE = s_5 or r_STATE = s_12) else '0';
  
  o_ALU_S1     <= '1' when (r_STATE = s_7 or r_STATE = s_12 or r_STATE = s_13) else '0';
  
  o_PC_LD      <= '1' when (r_STATE = s_9) else '0';
  
  
  
  
end rtl;

