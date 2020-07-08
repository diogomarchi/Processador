------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY control_block IS
  PORT (
    i_CLK : IN std_logic; -- input clock
    i_CLR_n : IN std_logic; -- input clear/reset
    i_DATA : IN std_logic_vector(15 DOWNTO 0); -- input instruction register
    i_RF_RP_zero : IN std_logic; -- output RF_RP zero
    o_PC_CLR : OUT std_logic; -- output clear
    o_I_RD : OUT std_logic; -- output instruction read
    o_IR_LD : OUT std_logic; -- output instruction register load
    o_PC_INC : OUT std_logic; -- output program counter increment  
    o_PC_LD : OUT std_logic; -- output program counter load 		 
    o_D_ADDR : OUT std_logic_vector(7 DOWNTO 0); -- output data address
    o_D_RD : OUT std_logic; -- output data read
    o_D_WR : OUT std_logic; -- output data write
    o_RF_S0 : OUT std_logic; -- output RD_S
    o_RF_S1 : OUT std_logic; -- output RD_S
    o_RF_W_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output register file address
    o_RF_W_WR : OUT std_logic; -- output RF_w escrita
    o_RF_W_DATA : OUT std_logic_vector(7 DOWNTO 0); -- output data for mux 3x1
    o_RF_RP_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output RF_RP adress
    o_RF_RP_RD : OUT std_logic; -- output RF_RP read
    o_RF_RQ_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output RF_RQ adress
    o_RF_RQ_RD : OUT std_logic; -- output RF_RQ lread
    o_ALU_S0 : OUT std_logic; -- output soma ULA
    o_ALU_S1 : OUT std_logic -- output soma ULA
  );
END control_block;

ARCHITECTURE rtl OF control_block IS
  -- s_INIT inicio
  -- s_FETCH busca
  -- s_DECODE decodificação
  -- s_LOAD carregar
  -- s_STORE armazenar
  -- s_ADD somar
  -- s_LD_CONST carrega constante
  -- s_SUB substrair
  -- s_JUMPZ saltar se zero
  -- s_JUMP saltar
  -- s_LT verifica se RP < RQ

  TYPE t_STATE IS (s_INIT, s_FETCH, s_DECODE, s_LOAD, s_STORE, s_ADD, s_LD_CONST, s_SUB, s_JUMPZ, s_JUMP, s_LT);
  SIGNAL r_STATE : t_STATE; -- state register
  SIGNAL w_NEXT : t_STATE; -- next state  
  SIGNAL w_OP, w_RA, w_RB, w_RC : std_logic_vector(3 DOWNTO 0);
  SIGNAL w_D : std_logic_vector(7 DOWNTO 0);

BEGIN

  p_STATE : PROCESS (i_CLK, i_CLR_n)
  BEGIN
    IF (i_CLR_n = '0') THEN
      r_STATE <= s_INIT; --initial state
    ELSIF (rising_edge(i_CLK)) THEN
      r_STATE <= w_NEXT; --next state
    END IF;
  END PROCESS;
  
  p_NEXT : PROCESS (r_STATE, w_OP, i_RF_RP_zero)
  BEGIN
    CASE (r_STATE) IS
      WHEN s_INIT =>
        w_NEXT <= s_FETCH; --vai para o proximo passando clear em 1  

      WHEN s_FETCH =>
        w_NEXT <= s_DECODE;

      WHEN s_DECODE =>
        IF (w_OP = "0000") THEN -- caso op = load next state = carregar
          w_NEXT <= s_LOAD;
        ELSIF (w_OP = "0001") THEN -- caso op = armazenar next state = armazenar
          w_NEXT <= s_STORE;
        ELSIF (w_OP = "0010") THEN -- caso op = somar next state = somar
          w_NEXT <= s_ADD;
        ELSIF (w_OP = "0011") THEN -- caso op = carregaconst next state = carregaconst
          w_NEXT <= s_LD_CONST;
        ELSIF (w_OP = "0100") THEN -- caso op = sub A-B next state = sub A - B
          w_NEXT <= s_SUB;
        ELSIF (w_OP = "0101") THEN -- caso op = Jump next state = Jump
          w_NEXT <= s_JUMPZ;
        ELSIF (w_OP = "0110") THEN -- caso op = if RP < RQ 	0110 RW RP RQ
          w_NEXT <= s_LT;
        ELSIF (w_OP = "0111") THEN -- caso op = jump to 
          w_NEXT <= s_JUMP;
        ELSE
          w_NEXT <= s_DECODE;
        END IF;

      WHEN s_LOAD =>
        w_NEXT <= s_FETCH;

      WHEN s_STORE =>
        w_NEXT <= s_FETCH;

      WHEN s_ADD =>
        w_NEXT <= s_FETCH;

      WHEN s_LD_CONST =>
        w_NEXT <= s_FETCH;

      WHEN s_SUB =>
        w_NEXT <= s_FETCH;

      WHEN s_JUMPZ =>
        IF (i_RF_RP_zero = '1') THEN -- caso 1, vai para saltar
          w_NEXT <= s_JUMP;
        ELSE
          w_NEXT <= s_FETCH;
        END IF;

      WHEN s_JUMP =>
        w_NEXT <= s_FETCH;
      WHEN s_LT => -- RP < RQ
        w_NEXT <= s_FETCH;

      WHEN OTHERS =>
        w_NEXT <= s_INIT;
    END CASE;
  END PROCESS;

  --atribuição do valor de OP a partir do valor de entrada
  w_OP <= i_DATA(15 DOWNTO 12);

  --atribuição do valor de RA a partir do valor de entrada
  w_RA <= i_DATA(11 DOWNTO 8);

  --atribuição do valor de RB a partir do valor de entrada
  w_RB <= i_DATA(7 DOWNTO 4);

  --atribuição do valor de RC a partir do valor de entrada
  w_RC <= i_DATA(3 DOWNTO 0);

  --atribuição do valor de D a partir do valor de entrada
  W_D <= i_DATA(7 DOWNTO 0);

  --atribuição do valor de constante
  o_RF_W_DATA <= i_DATA(7 DOWNTO 0);
  
  --clear pc counter
  o_PC_CLR <= '1' WHEN (r_STATE = s_INIT) ELSE
    '0';

  -- instruction read enable
  o_I_RD <= '1' WHEN (r_STATE = s_FETCH) ELSE
    '0';

  -- instruction load
  o_IR_LD <= '1' WHEN (r_STATE = s_FETCH) ELSE
    '0';

  -- pc increment
  o_PC_INC <= '1' WHEN (r_STATE = s_FETCH) ELSE
    '0';

  -- data address
  o_D_ADDR <= w_D WHEN ((r_STATE = s_LOAD) OR (r_STATE = s_STORE)) ELSE
    "00000000";

  -- data read
  o_D_RD <= '1' WHEN (r_STATE = s_LOAD) ELSE
    '0';

  -- data write
  o_D_WR <= '1' WHEN (r_STATE = s_STORE) ELSE
    '0';

  -- mux selector
  o_RF_S0 <= '1' WHEN (r_STATE = s_LOAD) ELSE
    '0';

  -- mux selector
  o_RF_S1 <= '1' WHEN (r_STATE = s_LD_CONST) ELSE
    '0';
	 
  -- RF write address
  o_RF_W_ADDR <= w_RA WHEN ((r_STATE = s_LOAD) OR (r_STATE = s_ADD) OR (r_STATE = s_LD_CONST) OR (r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    "0000";

  -- RF write enable
  o_RF_W_WR <= '1' WHEN ((r_STATE = s_LOAD) OR (r_STATE = s_ADD) OR (r_STATE = s_LD_CONST) OR (r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    '0';
	 
  -- RP read address
  o_RF_RP_ADDR <= w_RA WHEN ((r_STATE = s_STORE) OR (r_STATE = s_JUMPZ)) ELSE
    w_RB WHEN ((r_STATE = s_ADD) OR (r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    "0000";

  -- RP read enable
  o_RF_RP_RD <= '1' WHEN ((r_STATE = s_STORE) OR (r_STATE = s_ADD) OR (r_STATE = s_SUB) OR (r_STATE = s_JUMPZ) OR (r_STATE = s_LT)) ELSE
    '0';

  -- RQ read address 
  o_RF_RQ_ADDR <= w_RC WHEN ((r_STATE = s_ADD) OR (r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    "0000";

  -- RQ read enable
  o_RF_RQ_RD <= '1' WHEN ((r_STATE = s_ADD) OR (r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    '0';

  -- ULA selector
  o_ALU_S0 <= '1' WHEN ((r_STATE = s_ADD) OR (r_STATE = s_LT)) ELSE
    '0';

  -- ULA selector
  o_ALU_S1 <= '1' WHEN ((r_STATE = s_SUB) OR (r_STATE = s_LT)) ELSE
    '0';

  -- program counter load
  o_PC_LD <= '1' WHEN (r_STATE = s_JUMP) ELSE
    '0';
END rtl;