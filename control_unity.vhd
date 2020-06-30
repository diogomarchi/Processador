------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.STD_LOGIC_UNSIGNED.ALL;

ENTITY control_unity IS
	PORT (
		i_CLK : IN std_logic; -- input clock
		i_CLR_n : IN std_logic; -- input clear/reset
		i_DATA : IN std_logic_vector(15 DOWNTO 0); -- input instruction register
		i_RF_RP_zero : IN std_logic; -- output RF_RP zero		 
		o_I_RD : OUT std_logic; -- output instruction read
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
		o_ALU_S1 : OUT std_logic; -- output soma ULA 
		o_ADDR : OUT std_logic_vector(15 DOWNTO 0)
	);
END control_unity;

ARCHITECTURE rtl OF control_unity IS

	COMPONENT program_counter IS
		PORT (
			i_PC_CLR : IN std_logic; -- clear/reset
			i_CLK : IN std_logic; -- clock
			i_PC_INC : IN std_logic; -- enable 
			i_PC_LD : IN std_logic; -- input load program counter
			i_ADDITION : IN std_logic_vector(15 DOWNTO 0);--input addition instruction		 
			o_PC : OUT std_logic_vector(15 DOWNTO 0)-- data output
		);
	END COMPONENT;

	COMPONENT instruction_register IS
		PORT (
			i_CLR_N : IN std_logic; -- clear/reset
			i_CLK : IN std_logic; -- clock
			i_DATa : IN std_logic_vector(15 DOWNTO 0);--enter data value
			i_LD : IN std_logic; -- enable load instruction register   
			o_IR : OUT std_logic_vector(15 DOWNTO 0)); -- data output
	END COMPONENT;

	COMPONENT control_block IS
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
	END COMPONENT;
	SIGNAL w_PC_CLR, w_PC_INC, w_IR_LD, W_PC_LD : std_logic;
	SIGNAL w_IR, w_ADDITION_INTRUCTION, w_O_PC, w_AUX_SOMA : std_logic_vector(15 DOWNTO 0);
BEGIN

	--connecting reg_PC with processador_unidade_controle
	u_program_counter : program_counter PORT MAP(
		i_PC_CLR => w_PC_CLR,
		i_CLK => i_CLK,
		i_PC_INC => w_PC_INC,
		i_PC_LD => W_PC_LD,
		i_ADDITION => w_ADDITION_INTRUCTION,
		o_PC => w_O_PC
	);
	o_ADDR <= w_O_PC;

	w_AUX_SOMA(15 DOWNTO 8) <= "00000000" WHEN (w_IR(7) = '0') ELSE
	"11111111";
	w_AUX_SOMA(7 DOWNTO 0) <= w_IR(7 DOWNTO 0);

	w_ADDITION_INTRUCTION <= w_O_PC + w_AUX_SOMA - "1";

	--connecting instruction_register with processador_unidade_controle	 
	u_instruction_register : instruction_register PORT MAP(
		i_CLR_n => i_CLR_n,
		i_CLK => i_CLK,
		i_DATA => i_DATA,
		i_LD => w_IR_LD,
		o_IR => w_IR);

	--connecting processador_bloco_controle with processador_unidade_controle									 
	u_CONTROLE : control_block PORT MAP(
		i_CLK => i_CLK,
		i_CLR_n => i_CLR_n,
		i_DATA => W_IR,
		i_RF_RP_zero => i_RF_RP_zero,
		o_PC_CLR => w_PC_CLR,
		o_I_RD => o_I_RD,
		o_IR_LD => w_IR_LD,
		o_PC_INC => w_PC_INC,
		o_PC_LD => W_PC_LD,
		o_D_ADDR => o_D_ADDR,
		o_D_RD => o_D_RD,
		o_D_WR => o_D_WR,
		o_RF_S0 => o_RF_S0,
		o_RF_S1 => o_RF_S1,
		o_RF_W_ADDR => o_RF_W_ADDR,
		o_RF_W_WR => o_RF_W_WR,
		o_RF_W_DATA => o_RF_W_DATA,
		o_RF_RP_ADDR => o_RF_RP_ADDR,
		o_RF_RP_RD => o_RF_RP_RD,
		o_RF_RQ_ADDR => o_RF_RQ_ADDR,
		o_RF_RQ_RD => o_RF_RQ_RD,
		o_ALU_S0 => o_ALU_S0,
		o_ALU_S1 => o_ALU_S1
	);

END rtl;