------------------------------------------------
-- Design: MDC CONTROL
-- Entity: mdc_control 
-- Author: Diogo & George
-- Rev.  : 1.0
-- Date  : 05/31/2020
------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY processador_top IS
	PORT (
		i_CLK : IN std_logic; -- input clock
		i_CLR_n : IN std_logic; -- input clear/reset
		o_SAIDA_RF : OUT std_logic_vector(15 DOWNTO 0)
	);
END processador_top;

ARCHITECTURE rtl OF processador_top IS

	COMPONENT control_unity IS
		PORT (
			i_CLK : IN std_logic; -- input clock
			i_CLR_n : IN std_logic; -- input clear/reset
			i_DATA : IN std_logic_vector(15 DOWNTO 0); -- input instruction register
			i_RF_RP_zero : IN std_logic; -- output RF_RP zero
			o_I_RD : OUT std_logic; -- output instruction read 
			o_D_ADDR : OUT std_logic_vector(7 DOWNTO 0); -- output data address
			o_D_RD : OUT std_logic; -- output data read
			o_D_WR : OUT std_logic; -- output data write
			o_RF_S0 : OUT std_logic; -- output mux selector 0
			o_RF_S1 : OUT std_logic; -- output mux selector 1
			o_RF_W_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output RF write address
			o_RF_W_WR : OUT std_logic; -- output RF write enable
			o_RF_W_DATA : OUT std_logic_vector(7 DOWNTO 0); -- output data for mux 3x1
			o_RF_RP_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output RF_RP read address
			o_RF_RP_RD : OUT std_logic; -- output RF_RP read enable
			o_RF_RQ_ADDR : OUT std_logic_vector(3 DOWNTO 0); -- output RF_RQ read adress
			o_RF_RQ_RD : OUT std_logic; -- output RF_RQ read enable
			o_ALU_S0 : OUT std_logic; -- output ULA operation selector 0
			o_ALU_S1 : OUT std_logic; -- output ULA operation selector 1
			o_I_ADDR : OUT std_logic_vector(15 DOWNTO 0) -- instruction memory address
		);
	END COMPONENT control_unity;
	COMPONENT data_memo IS
		GENERIC (
			D_Width : INTEGER := 16; -- data width
			A_Width : INTEGER := 8); -- address width
		PORT (
			i_CLK : IN std_logic;
			i_CLR_n : IN std_logic;
			i_D_rd : IN std_logic; -- enable read      
			i_D_wr : IN std_logic; -- enable write      		 
			i_D_ADDR : IN std_logic_Vector(A_Width - 1 DOWNTO 0); -- address
			i_W_DATA : IN std_logic_Vector(D_Width - 1 DOWNTO 0); -- data input
			o_R_DATA : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output
	END COMPONENT data_memo;
	COMPONENT operational_block IS
		PORT (
			i_CLK : IN std_logic;
			i_CLR_N : IN std_logic;
			i_RF_s0 : IN std_logic; -- register file selector
			i_RF_s1 : IN std_logic; -- register file selector
			i_ALU_s0 : IN std_logic; -- ALU operation
			i_ALU_s1 : IN std_logic; -- ALU operation
			i_RF_W_wr : IN std_logic; -- enable W write
			i_RF_RP_rd : IN std_logic; -- enable RP read
			i_RF_RQ_rd : IN std_logic; -- enable RQ read
			i_RF_W_addr : IN std_logic_Vector(3 DOWNTO 0); -- W write address
			i_RF_RP_addr : IN std_logic_Vector(3 DOWNTO 0); -- RP read address   
			i_RF_RQ_addr : IN std_logic_Vector(3 DOWNTO 0); -- RP read address
			i_RF_W_DATA : IN std_logic_Vector(7 DOWNTO 0); -- RP read address
			i_R_DATA : IN std_logic_Vector(15 DOWNTO 0); -- W input data
			o_RF_RP_ZERO : OUT std_logic;
			o_W_DATA : OUT std_logic_Vector(15 DOWNTO 0) -- W output data
		);
	END COMPONENT operational_block;
	COMPONENT instruction_memory IS
		GENERIC (
			D_Width : INTEGER := 16; -- data width
			A_Width : INTEGER := 16); -- address width
		PORT (
			i_IR_RD : IN std_logic; -- enable read         		 
			i_IR_ADDR : IN std_logic_Vector(A_Width - 1 DOWNTO 0); -- address
			o_R_DATA : OUT std_logic_Vector(D_Width - 1 DOWNTO 0)); -- data output
	END COMPONENT instruction_memory;
	SIGNAL w_IR_DATA, w_o_I_ADDR, w_MEMO_DATA, w_R_DATA : std_logic_vector(15 DOWNTO 0);
	SIGNAL w_O_D_ADDR, w_o_RF_W_DATA : std_logic_vector(7 DOWNTO 0);
	SIGNAL w_O_RF_W_ADDR, w_O_RF_RP_ADDR, w_O_RF_RQ_ADDR : std_logic_vector(3 DOWNTO 0);
	SIGNAL w_O_RD, w_O_D_RD, w_O_D_WR, w_O_RF_S0, w_O_RF_S1, w_O_RF_W_WR, w_O_RF_RP_RD, w_O_RF_RQ_RD, w_O_ALU_S0, w_O_ALU_S1, w_i_RF_RP_zero : std_logic;
	SIGNAL w_o_RP_LT_RQ, w_o_RP_EQ_RQ : std_logic;
BEGIN

	--connecting processador_unidade_controle with processador_control
	u_control_unity : control_unity PORT MAP(
		i_CLK => i_CLK,
		i_CLR_n => i_CLR_n,
		i_DATA => w_IR_DATA,
		i_RF_RP_zero => w_i_RF_RP_zero,
		o_I_ADDR => w_o_I_ADDR,
		o_I_RD => w_O_RD,
		o_D_ADDR => w_O_D_ADDR,
		o_D_RD => w_O_D_RD,
		o_D_WR => w_O_D_WR,
		o_RF_S0 => w_O_RF_S0,
		o_RF_S1 => w_O_RF_S1,
		o_RF_W_ADDR => w_O_RF_W_ADDR,
		o_RF_W_WR => w_O_RF_W_WR,
		o_RF_W_DATA => w_o_RF_W_DATA,
		o_RF_RP_ADDR => w_O_RF_RP_ADDR,
		o_RF_RP_RD => w_o_RF_RP_RD,
		o_RF_RQ_ADDR => w_o_RF_RQ_ADDR,
		o_RF_RQ_RD => w_O_RF_RQ_RD,
		o_ALU_S0 => w_O_ALU_S0,
		o_ALU_S1 => w_O_ALU_S1
	);

	u_data_memo : data_memo PORT MAP(
		i_CLK => i_CLK,
		i_CLR_n => i_CLR_n,
		i_D_rd => w_O_D_RD,
		i_D_wr => w_O_D_WR,
		i_D_ADDR => w_O_D_ADDR,
		i_W_DATA => w_MEMO_DATA,
		o_R_DATA => w_R_DATA
	);
	u_operational_block : operational_block PORT MAP(
		i_CLK => i_CLK,
		i_CLR_N => i_CLR_N,
		i_RF_s0 => w_O_RF_s0,
		i_RF_s1 => w_O_RF_s1,
		i_ALU_s0 => w_O_ALU_s0,
		i_ALU_s1 => w_O_ALU_s1,
		i_RF_W_wr => w_O_RF_W_WR,
		i_RF_RP_rd => w_O_RF_RP_RD,
		i_RF_RQ_rd => w_O_RF_RQ_RD,
		i_RF_W_addr => w_O_RF_W_addr,
		i_RF_W_DATA => w_o_RF_W_DATA,
		i_RF_RP_addr => w_O_RF_RP_addr,
		i_RF_RQ_addr => w_O_RF_RQ_addr,
		i_R_DATA => w_R_DATA,
		o_RF_RP_ZERO => w_i_RF_RP_zero,
		o_W_DATA => w_MEMO_DATA
	);

	u_instruction_memory : instruction_memory PORT MAP(
		i_IR_RD => w_O_RD,
		i_IR_ADDR => w_o_I_ADDR,
		o_R_DATA => w_IR_DATA
	);

	o_SAIDA_RF <= w_MEMO_DATA;
END rtl;