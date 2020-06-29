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
  -- s_INIT inicio
  -- s_FETCH busca
  -- s_DECODE decodificação
  -- s_LOAD carregar
  -- s_STORE armazenar
  -- s_ADD somar
  -- s_LD_CONST carrega constante
  -- s_SUB substrair
  -- s_JUMPZ saltar se zero
  -- s_JUMPZ_1 saltar
  -- s_LT verifica se RP < RQ
  
  type t_STATE is (s_INIT, s_FETCH, s_DECODE, s_LOAD, s_STORE, s_ADD, s_LD_CONST, s_SUB, s_JUMPZ, s_JUMPZ_1, s_LT);
  signal r_STATE: t_STATE;  -- state register
  signal w_NEXT : t_STATE;  -- next state  
  signal w_OP, w_RA, w_RB, w_RC:std_logic_vector(3 downto 0);
  signal w_D:std_logic_vector(7 downto 0);

begin

  p_STATE : process (i_CLK, i_CLR_n)
  begin
  
    if (i_CLR_n ='0') then
      r_STATE <= s_INIT;     --initial state
    elsif (rising_edge(i_CLK)) then
      r_STATE <= w_NEXT;  --next state
    end if;
  end process;
  
  
  p_NEXT : process(r_STATE, w_OP, i_RF_RP_zero)    
  begin
    case (r_STATE) is
      when s_INIT =>        					 
              w_NEXT  <= s_FETCH; --vai para o proximo passando clear em 1  
				  
		when s_FETCH =>         
				  w_NEXT  <= s_DECODE;
				  
      when s_DECODE => 
				  if (w_OP = "0000") then    -- caso op = load next state = carregar
					 w_NEXT <= s_LOAD;
				  elsif(w_OP = "0001") then  -- caso op = armazenar next state = armazenar
					 w_NEXT <= s_STORE;
				  elsif(w_OP = "0010") then   -- caso op = somar next state = somar
					 w_NEXT <= s_ADD;
				  elsif(w_OP = "0011") then   -- caso op = carregaconst next state = carregaconst
					 w_NEXT <= s_LD_CONST;
				  elsif(w_OP = "0100") then   -- caso op = sub A-B next state = sub A - B
					 w_NEXT <= s_SUB;
				  elsif(w_OP = "0101") then   -- caso op = Jump next state = Jump
					 w_NEXT <= s_JUMPZ;
				  elsif(w_OP = "0110") then   -- caso op = if RP < RQ 	0110 RW RP RQ
				    w_NEXT <= s_LT;
				  else
				    w_NEXT <= s_DECODE;
				  end if;       
						
      when s_LOAD =>	
               w_NEXT <= s_FETCH;		
						
      when s_STORE => 
               w_NEXT <= s_FETCH;	
					
		when s_ADD =>
					w_NEXT <= s_FETCH;
					
		when s_LD_CONST =>
					w_NEXT <= s_FETCH;
					
	   when s_SUB =>
					w_NEXT <= s_FETCH;
					
		when s_JUMPZ =>
		         if (i_RF_RP_zero = '1') then    -- caso 1, vai para saltar
					  w_NEXT <= s_JUMPZ_1;
					else
					  w_NEXT <= s_FETCH;
					end if;
					
		when s_JUMPZ_1 =>
               w_NEXT <= s_FETCH;
		
		
		when s_LT => -- RP < RQ
					  w_NEXT <= s_FETCH;
					  
      when others => 
               w_NEXT <= s_INIT;
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
  
  --atribuição do valor de constante
  o_RF_W_DATA <= i_DATA(7 downto 0);
	
  o_PC_CLR <= '1' when (r_STATE = s_INIT) else '0';  
  
  o_I_RD   <= '1' when (r_STATE = s_FETCH) else '0';  
  
  o_IR_LD  <= '1' when (r_STATE = s_FETCH) else '0';  
  
  o_PC_INC  <= '1' when (r_STATE = s_FETCH) else '0';  
  
  o_D_ADDR  <=  w_D when ((r_STATE = s_LOAD) or (r_STATE = s_STORE)) else "ZZZZZZZZ"; 
  
  o_D_RD    <= '1' when (r_STATE = s_LOAD) else '0'; 

  o_D_WR    <= '1' when (r_STATE = s_STORE) else '0';    
  
  o_RF_S0   <= '1' when (r_STATE = s_LOAD) else 
               'X' when (r_STATE = s_STORE) else '0';  
  
  o_RF_S1   <= '1' when (r_STATE = s_LD_CONST) else
               'X' when (r_STATE = s_STORE) else '0';
  
  o_RF_W_ADDR  <= w_RA when ((r_STATE = s_LOAD) or (r_STATE = s_ADD) or (r_STATE = s_LD_CONST) or (r_STATE = s_SUB) or (r_STATE = s_LT)) else	"ZZZZ";  
  
  o_RF_W_WR    <= '1' when ((r_STATE = s_LOAD) or (r_STATE = s_ADD) or (r_STATE = s_LD_CONST) or (r_STATE = s_SUB) or (r_STATE = s_LT)) else '0'; 
 
  
  o_RF_RP_ADDR <= w_RA when ((r_STATE = s_STORE) or (r_STATE = s_JUMPZ)) else
                  w_RB when ((r_STATE = s_ADD) or (r_STATE = s_SUB) or (r_STATE = s_LT)) else "ZZZZ"; 
  
  o_RF_RP_RD   <= '1' when ((r_STATE = s_STORE) or (r_STATE = s_ADD) or (r_STATE = s_SUB) or (r_STATE = s_JUMPZ) or (r_STATE = s_LT)) else '0';
  
  o_RF_RQ_ADDR <= w_RC when ((r_STATE = s_ADD) or (r_STATE = s_SUB) or (r_STATE = s_LT)) else "ZZZZ";
  
  o_RF_RQ_RD   <= '1' when ((r_STATE = s_ADD) or (r_STATE = s_SUB) or (r_STATE = s_LT)) else '0';
  
  o_ALU_S0     <= '1' when ((r_STATE = s_ADD) or (r_STATE = s_LT)) else '0';
  
  o_ALU_S1     <= '1' when ((r_STATE = s_SUB) or (r_STATE = s_LT)) else '0';
  
  o_PC_LD      <= '1' when (r_STATE = s_JUMPZ_1) else '0';
  
   
end rtl;

