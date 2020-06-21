-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/21/2020 00:30:44"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador_unidade_controle IS
    PORT (
	i_CLK : IN std_logic;
	i_CLR_n : IN std_logic;
	i_DATA : IN std_logic_vector(15 DOWNTO 0);
	o_ADDR : BUFFER std_logic_vector(15 DOWNTO 0);
	o_RD : BUFFER std_logic;
	o_D_ADDR : BUFFER std_logic_vector(7 DOWNTO 0);
	o_D_RD : BUFFER std_logic;
	o_D_WR : BUFFER std_logic;
	o_RF_S : BUFFER std_logic;
	o_RF_W_ADDR : BUFFER std_logic_vector(3 DOWNTO 0);
	o_RF_W_WR : BUFFER std_logic;
	o_RF_RP_ADDR : BUFFER std_logic_vector(3 DOWNTO 0);
	o_RF_RP_RD : BUFFER std_logic;
	o_RF_RQ_ADDR : BUFFER std_logic_vector(3 DOWNTO 0);
	o_RF_RQ_RD : BUFFER std_logic;
	o_ALU_S0 : BUFFER std_logic
	);
END processador_unidade_controle;

-- Design Ports Information
-- o_ADDR[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADDR[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RD	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_RD	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_D_WR	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_S	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_W_ADDR[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_W_ADDR[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_W_ADDR[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_W_ADDR[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_W_WR	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RP_ADDR[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RP_ADDR[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RP_ADDR[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RP_ADDR[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RP_RD	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RQ_ADDR[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RQ_ADDR[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RQ_ADDR[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RQ_ADDR[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_RF_RQ_RD	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ALU_S0	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR_n	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[10]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[12]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[14]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador_unidade_controle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_CLR_n : std_logic;
SIGNAL ww_i_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_ADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_RD : std_logic;
SIGNAL ww_o_D_ADDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_D_RD : std_logic;
SIGNAL ww_o_D_WR : std_logic;
SIGNAL ww_o_RF_S : std_logic;
SIGNAL ww_o_RF_W_ADDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_RF_W_WR : std_logic;
SIGNAL ww_o_RF_RP_ADDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_RF_RP_RD : std_logic;
SIGNAL ww_o_RF_RQ_ADDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_RF_RQ_RD : std_logic;
SIGNAL ww_o_ALU_S0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[0]~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_0~feeder_combout\ : std_logic;
SIGNAL \i_CLR_n~input_o\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_0~q\ : std_logic;
SIGNAL \i_DATA[15]~input_o\ : std_logic;
SIGNAL \i_DATA[14]~input_o\ : std_logic;
SIGNAL \i_DATA[13]~input_o\ : std_logic;
SIGNAL \u_REG_IR|o_IR[13]~feeder_combout\ : std_logic;
SIGNAL \i_DATA[12]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|Selector0~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_2~q\ : std_logic;
SIGNAL \u_CONTROLE|w_NEXT~2_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_1~q\ : std_logic;
SIGNAL \u_REG_PC|Add0~1_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~2\ : std_logic;
SIGNAL \u_REG_PC|Add0~5_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~6\ : std_logic;
SIGNAL \u_REG_PC|Add0~9_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~10\ : std_logic;
SIGNAL \u_REG_PC|Add0~13_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~14\ : std_logic;
SIGNAL \u_REG_PC|Add0~17_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~18\ : std_logic;
SIGNAL \u_REG_PC|Add0~21_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~22\ : std_logic;
SIGNAL \u_REG_PC|Add0~25_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~26\ : std_logic;
SIGNAL \u_REG_PC|Add0~29_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~30\ : std_logic;
SIGNAL \u_REG_PC|Add0~33_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~34\ : std_logic;
SIGNAL \u_REG_PC|Add0~37_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~38\ : std_logic;
SIGNAL \u_REG_PC|Add0~41_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~42\ : std_logic;
SIGNAL \u_REG_PC|Add0~45_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~46\ : std_logic;
SIGNAL \u_REG_PC|Add0~49_sumout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|Add0~50\ : std_logic;
SIGNAL \u_REG_PC|Add0~53_sumout\ : std_logic;
SIGNAL \u_REG_PC|Add0~54\ : std_logic;
SIGNAL \u_REG_PC|Add0~57_sumout\ : std_logic;
SIGNAL \u_CONTROLE|w_NEXT.s_3~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_3~q\ : std_logic;
SIGNAL \u_CONTROLE|w_NEXT.s_4~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_4~q\ : std_logic;
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[0]~0_combout\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[1]~1_combout\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[2]~2_combout\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[3]~3_combout\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[4]~4_combout\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[5]~5_combout\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[6]~6_combout\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_D_ADDR[7]~7_combout\ : std_logic;
SIGNAL \i_DATA[8]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|w_NEXT.s_5~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|r_STATE.s_5~q\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_W_ADDR[0]~0_combout\ : std_logic;
SIGNAL \i_DATA[9]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_W_ADDR[1]~1_combout\ : std_logic;
SIGNAL \i_DATA[10]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_W_ADDR[2]~2_combout\ : std_logic;
SIGNAL \i_DATA[11]~input_o\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_W_ADDR[3]~3_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_W_WR~combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RP_ADDR[0]~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RP_ADDR[1]~1_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RP_ADDR[2]~2_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RP_ADDR[3]~3_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RP_RD~combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RQ_ADDR[0]~0_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RQ_ADDR[1]~1_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RQ_ADDR[2]~2_combout\ : std_logic;
SIGNAL \u_CONTROLE|o_RF_RQ_ADDR[3]~3_combout\ : std_logic;
SIGNAL \u_REG_PC|w_COUNTER\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REG_IR|o_IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i_DATA[13]~input_o\ : std_logic;
SIGNAL \u_REG_IR|ALT_INV_o_IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_CONTROLE|ALT_INV_r_STATE.s_2~q\ : std_logic;
SIGNAL \u_CONTROLE|ALT_INV_r_STATE.s_1~q\ : std_logic;
SIGNAL \u_CONTROLE|ALT_INV_r_STATE.s_5~q\ : std_logic;
SIGNAL \u_CONTROLE|ALT_INV_r_STATE.s_4~q\ : std_logic;
SIGNAL \u_CONTROLE|ALT_INV_r_STATE.s_3~q\ : std_logic;
SIGNAL \u_REG_PC|ALT_INV_w_COUNTER\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_i_CLK <= i_CLK;
ww_i_CLR_n <= i_CLR_n;
ww_i_DATA <= i_DATA;
o_ADDR <= ww_o_ADDR;
o_RD <= ww_o_RD;
o_D_ADDR <= ww_o_D_ADDR;
o_D_RD <= ww_o_D_RD;
o_D_WR <= ww_o_D_WR;
o_RF_S <= ww_o_RF_S;
o_RF_W_ADDR <= ww_o_RF_W_ADDR;
o_RF_W_WR <= ww_o_RF_W_WR;
o_RF_RP_ADDR <= ww_o_RF_RP_ADDR;
o_RF_RP_RD <= ww_o_RF_RP_RD;
o_RF_RQ_ADDR <= ww_o_RF_RQ_ADDR;
o_RF_RQ_RD <= ww_o_RF_RQ_RD;
o_ALU_S0 <= ww_o_ALU_S0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_REG_PC|ALT_INV_w_COUNTER[14]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[14]~DUPLICATE_q\;
\u_REG_PC|ALT_INV_w_COUNTER[12]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[12]~DUPLICATE_q\;
\u_REG_PC|ALT_INV_w_COUNTER[10]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[10]~DUPLICATE_q\;
\u_REG_PC|ALT_INV_w_COUNTER[9]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[9]~DUPLICATE_q\;
\u_REG_PC|ALT_INV_w_COUNTER[8]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[8]~DUPLICATE_q\;
\u_REG_PC|ALT_INV_w_COUNTER[4]~DUPLICATE_q\ <= NOT \u_REG_PC|w_COUNTER[4]~DUPLICATE_q\;
\ALT_INV_i_DATA[13]~input_o\ <= NOT \i_DATA[13]~input_o\;
\u_REG_IR|ALT_INV_o_IR\(14) <= NOT \u_REG_IR|o_IR\(14);
\u_REG_IR|ALT_INV_o_IR\(15) <= NOT \u_REG_IR|o_IR\(15);
\u_CONTROLE|ALT_INV_r_STATE.s_2~q\ <= NOT \u_CONTROLE|r_STATE.s_2~q\;
\u_REG_IR|ALT_INV_o_IR\(13) <= NOT \u_REG_IR|o_IR\(13);
\u_REG_IR|ALT_INV_o_IR\(12) <= NOT \u_REG_IR|o_IR\(12);
\u_CONTROLE|ALT_INV_r_STATE.s_1~q\ <= NOT \u_CONTROLE|r_STATE.s_1~q\;
\u_REG_IR|ALT_INV_o_IR\(11) <= NOT \u_REG_IR|o_IR\(11);
\u_REG_IR|ALT_INV_o_IR\(10) <= NOT \u_REG_IR|o_IR\(10);
\u_REG_IR|ALT_INV_o_IR\(9) <= NOT \u_REG_IR|o_IR\(9);
\u_CONTROLE|ALT_INV_r_STATE.s_5~q\ <= NOT \u_CONTROLE|r_STATE.s_5~q\;
\u_REG_IR|ALT_INV_o_IR\(8) <= NOT \u_REG_IR|o_IR\(8);
\u_REG_IR|ALT_INV_o_IR\(7) <= NOT \u_REG_IR|o_IR\(7);
\u_REG_IR|ALT_INV_o_IR\(6) <= NOT \u_REG_IR|o_IR\(6);
\u_REG_IR|ALT_INV_o_IR\(5) <= NOT \u_REG_IR|o_IR\(5);
\u_REG_IR|ALT_INV_o_IR\(4) <= NOT \u_REG_IR|o_IR\(4);
\u_REG_IR|ALT_INV_o_IR\(3) <= NOT \u_REG_IR|o_IR\(3);
\u_REG_IR|ALT_INV_o_IR\(2) <= NOT \u_REG_IR|o_IR\(2);
\u_REG_IR|ALT_INV_o_IR\(1) <= NOT \u_REG_IR|o_IR\(1);
\u_CONTROLE|ALT_INV_r_STATE.s_4~q\ <= NOT \u_CONTROLE|r_STATE.s_4~q\;
\u_CONTROLE|ALT_INV_r_STATE.s_3~q\ <= NOT \u_CONTROLE|r_STATE.s_3~q\;
\u_REG_IR|ALT_INV_o_IR\(0) <= NOT \u_REG_IR|o_IR\(0);
\u_REG_PC|ALT_INV_w_COUNTER\(15) <= NOT \u_REG_PC|w_COUNTER\(15);
\u_REG_PC|ALT_INV_w_COUNTER\(13) <= NOT \u_REG_PC|w_COUNTER\(13);
\u_REG_PC|ALT_INV_w_COUNTER\(11) <= NOT \u_REG_PC|w_COUNTER\(11);
\u_REG_PC|ALT_INV_w_COUNTER\(7) <= NOT \u_REG_PC|w_COUNTER\(7);
\u_REG_PC|ALT_INV_w_COUNTER\(6) <= NOT \u_REG_PC|w_COUNTER\(6);
\u_REG_PC|ALT_INV_w_COUNTER\(5) <= NOT \u_REG_PC|w_COUNTER\(5);
\u_REG_PC|ALT_INV_w_COUNTER\(3) <= NOT \u_REG_PC|w_COUNTER\(3);
\u_REG_PC|ALT_INV_w_COUNTER\(2) <= NOT \u_REG_PC|w_COUNTER\(2);
\u_REG_PC|ALT_INV_w_COUNTER\(1) <= NOT \u_REG_PC|w_COUNTER\(1);
\u_REG_PC|ALT_INV_w_COUNTER\(0) <= NOT \u_REG_PC|w_COUNTER\(0);

-- Location: IOOBUF_X4_Y0_N36
\o_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(0),
	devoe => ww_devoe,
	o => ww_o_ADDR(0));

-- Location: IOOBUF_X8_Y0_N19
\o_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_ADDR(1));

-- Location: IOOBUF_X6_Y0_N36
\o_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(2),
	devoe => ww_devoe,
	o => ww_o_ADDR(2));

-- Location: IOOBUF_X8_Y0_N2
\o_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(3),
	devoe => ww_devoe,
	o => ww_o_ADDR(3));

-- Location: IOOBUF_X4_Y0_N2
\o_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(4),
	devoe => ww_devoe,
	o => ww_o_ADDR(4));

-- Location: IOOBUF_X6_Y0_N53
\o_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(5),
	devoe => ww_devoe,
	o => ww_o_ADDR(5));

-- Location: IOOBUF_X6_Y0_N2
\o_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(6),
	devoe => ww_devoe,
	o => ww_o_ADDR(6));

-- Location: IOOBUF_X6_Y0_N19
\o_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(7),
	devoe => ww_devoe,
	o => ww_o_ADDR(7));

-- Location: IOOBUF_X2_Y0_N76
\o_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(8),
	devoe => ww_devoe,
	o => ww_o_ADDR(8));

-- Location: IOOBUF_X4_Y0_N53
\o_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(9),
	devoe => ww_devoe,
	o => ww_o_ADDR(9));

-- Location: IOOBUF_X4_Y0_N19
\o_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(10),
	devoe => ww_devoe,
	o => ww_o_ADDR(10));

-- Location: IOOBUF_X8_Y0_N36
\o_ADDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(11),
	devoe => ww_devoe,
	o => ww_o_ADDR(11));

-- Location: IOOBUF_X2_Y0_N93
\o_ADDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(12),
	devoe => ww_devoe,
	o => ww_o_ADDR(12));

-- Location: IOOBUF_X2_Y0_N42
\o_ADDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(13),
	devoe => ww_devoe,
	o => ww_o_ADDR(13));

-- Location: IOOBUF_X2_Y0_N59
\o_ADDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(14),
	devoe => ww_devoe,
	o => ww_o_ADDR(14));

-- Location: IOOBUF_X8_Y0_N53
\o_ADDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REG_PC|w_COUNTER\(15),
	devoe => ww_devoe,
	o => ww_o_ADDR(15));

-- Location: IOOBUF_X76_Y81_N53
\o_RD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_RD);

-- Location: IOOBUF_X40_Y0_N36
\o_D_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(0));

-- Location: IOOBUF_X28_Y0_N53
\o_D_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(1));

-- Location: IOOBUF_X26_Y0_N59
\o_D_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(2));

-- Location: IOOBUF_X50_Y0_N59
\o_D_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(3));

-- Location: IOOBUF_X40_Y0_N2
\o_D_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(4));

-- Location: IOOBUF_X50_Y0_N42
\o_D_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(5));

-- Location: IOOBUF_X34_Y0_N42
\o_D_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(6));

-- Location: IOOBUF_X38_Y0_N36
\o_D_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_D_ADDR[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_o_D_ADDR(7));

-- Location: IOOBUF_X52_Y0_N36
\o_D_RD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|r_STATE.s_3~q\,
	devoe => ww_devoe,
	o => ww_o_D_RD);

-- Location: IOOBUF_X32_Y0_N19
\o_D_WR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|r_STATE.s_4~q\,
	devoe => ww_devoe,
	o => ww_o_D_WR);

-- Location: IOOBUF_X52_Y0_N19
\o_RF_S~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|r_STATE.s_3~q\,
	devoe => ww_devoe,
	o => ww_o_RF_S);

-- Location: IOOBUF_X52_Y0_N2
\o_RF_W_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_W_ADDR[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_W_ADDR(0));

-- Location: IOOBUF_X40_Y0_N19
\o_RF_W_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_W_ADDR[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_W_ADDR(1));

-- Location: IOOBUF_X50_Y0_N93
\o_RF_W_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_W_ADDR[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_W_ADDR(2));

-- Location: IOOBUF_X54_Y0_N53
\o_RF_W_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_W_ADDR[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_W_ADDR(3));

-- Location: IOOBUF_X26_Y0_N93
\o_RF_W_WR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_W_WR~combout\,
	devoe => ww_devoe,
	o => ww_o_RF_W_WR);

-- Location: IOOBUF_X50_Y0_N76
\o_RF_RP_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RP_ADDR[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RP_ADDR(0));

-- Location: IOOBUF_X54_Y0_N2
\o_RF_RP_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RP_ADDR[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RP_ADDR(1));

-- Location: IOOBUF_X32_Y0_N2
\o_RF_RP_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RP_ADDR[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RP_ADDR(2));

-- Location: IOOBUF_X34_Y0_N93
\o_RF_RP_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RP_ADDR[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RP_ADDR(3));

-- Location: IOOBUF_X28_Y0_N19
\o_RF_RP_RD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RP_RD~combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RP_RD);

-- Location: IOOBUF_X34_Y0_N59
\o_RF_RQ_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RQ_ADDR[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RQ_ADDR(0));

-- Location: IOOBUF_X26_Y0_N42
\o_RF_RQ_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RQ_ADDR[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RQ_ADDR(1));

-- Location: IOOBUF_X28_Y0_N2
\o_RF_RQ_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RQ_ADDR[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RQ_ADDR(2));

-- Location: IOOBUF_X40_Y0_N53
\o_RF_RQ_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|o_RF_RQ_ADDR[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_o_RF_RQ_ADDR(3));

-- Location: IOOBUF_X54_Y0_N19
\o_RF_RQ_RD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|r_STATE.s_5~q\,
	devoe => ww_devoe,
	o => ww_o_RF_RQ_RD);

-- Location: IOOBUF_X54_Y0_N36
\o_ALU_S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_CONTROLE|r_STATE.s_5~q\,
	devoe => ww_devoe,
	o => ww_o_ALU_S0);

-- Location: IOIBUF_X89_Y35_N61
\i_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G10
\i_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~input_o\,
	outclk => \i_CLK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X8_Y2_N54
\u_REG_PC|w_COUNTER[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|w_COUNTER[0]~0_combout\ = ( !\u_REG_PC|w_COUNTER\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_REG_PC|ALT_INV_w_COUNTER\(0),
	combout => \u_REG_PC|w_COUNTER[0]~0_combout\);

-- Location: MLABCELL_X8_Y2_N48
\u_CONTROLE|r_STATE.s_0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|r_STATE.s_0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u_CONTROLE|r_STATE.s_0~feeder_combout\);

-- Location: IOIBUF_X32_Y0_N35
\i_CLR_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR_n,
	o => \i_CLR_n~input_o\);

-- Location: FF_X8_Y2_N49
\u_CONTROLE|r_STATE.s_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|r_STATE.s_0~feeder_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_0~q\);

-- Location: IOIBUF_X30_Y0_N52
\i_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(15),
	o => \i_DATA[15]~input_o\);

-- Location: FF_X29_Y2_N38
\u_REG_IR|o_IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[15]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(15));

-- Location: IOIBUF_X30_Y0_N18
\i_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(14),
	o => \i_DATA[14]~input_o\);

-- Location: FF_X29_Y2_N23
\u_REG_IR|o_IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[14]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(14));

-- Location: IOIBUF_X30_Y0_N35
\i_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(13),
	o => \i_DATA[13]~input_o\);

-- Location: LABCELL_X29_Y2_N27
\u_REG_IR|o_IR[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_IR|o_IR[13]~feeder_combout\ = ( \i_DATA[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_i_DATA[13]~input_o\,
	combout => \u_REG_IR|o_IR[13]~feeder_combout\);

-- Location: FF_X29_Y2_N29
\u_REG_IR|o_IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_IR|o_IR[13]~feeder_combout\,
	clrn => \i_CLR_n~input_o\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(13));

-- Location: IOIBUF_X30_Y0_N1
\i_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(12),
	o => \i_DATA[12]~input_o\);

-- Location: FF_X29_Y2_N32
\u_REG_IR|o_IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[12]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(12));

-- Location: LABCELL_X29_Y2_N54
\u_CONTROLE|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|Selector0~0_combout\ = ( \u_CONTROLE|r_STATE.s_2~q\ & ( \u_REG_IR|o_IR\(12) & ( (((\u_CONTROLE|r_STATE.s_1~q\) # (\u_REG_IR|o_IR\(13))) # (\u_REG_IR|o_IR\(14))) # (\u_REG_IR|o_IR\(15)) ) ) ) # ( !\u_CONTROLE|r_STATE.s_2~q\ & ( 
-- \u_REG_IR|o_IR\(12) & ( \u_CONTROLE|r_STATE.s_1~q\ ) ) ) # ( \u_CONTROLE|r_STATE.s_2~q\ & ( !\u_REG_IR|o_IR\(12) & ( ((\u_CONTROLE|r_STATE.s_1~q\) # (\u_REG_IR|o_IR\(14))) # (\u_REG_IR|o_IR\(15)) ) ) ) # ( !\u_CONTROLE|r_STATE.s_2~q\ & ( 
-- !\u_REG_IR|o_IR\(12) & ( \u_CONTROLE|r_STATE.s_1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011101111111111100000000111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REG_IR|ALT_INV_o_IR\(15),
	datab => \u_REG_IR|ALT_INV_o_IR\(14),
	datac => \u_REG_IR|ALT_INV_o_IR\(13),
	datad => \u_CONTROLE|ALT_INV_r_STATE.s_1~q\,
	datae => \u_CONTROLE|ALT_INV_r_STATE.s_2~q\,
	dataf => \u_REG_IR|ALT_INV_o_IR\(12),
	combout => \u_CONTROLE|Selector0~0_combout\);

-- Location: FF_X29_Y2_N56
\u_CONTROLE|r_STATE.s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|Selector0~0_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_2~q\);

-- Location: LABCELL_X16_Y2_N9
\u_CONTROLE|w_NEXT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|w_NEXT~2_combout\ = ( !\u_CONTROLE|r_STATE.s_1~q\ & ( !\u_CONTROLE|r_STATE.s_2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_CONTROLE|ALT_INV_r_STATE.s_1~q\,
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_2~q\,
	combout => \u_CONTROLE|w_NEXT~2_combout\);

-- Location: FF_X16_Y2_N11
\u_CONTROLE|r_STATE.s_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|w_NEXT~2_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_1~q\);

-- Location: FF_X8_Y2_N56
\u_REG_PC|w_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|w_COUNTER[0]~0_combout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(0));

-- Location: FF_X8_Y2_N2
\u_REG_PC|w_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~1_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(1));

-- Location: MLABCELL_X8_Y2_N0
\u_REG_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~1_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(0) ) + ( \u_REG_PC|w_COUNTER\(1) ) + ( !VCC ))
-- \u_REG_PC|Add0~2\ = CARRY(( \u_REG_PC|w_COUNTER\(0) ) + ( \u_REG_PC|w_COUNTER\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER\(1),
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(0),
	cin => GND,
	sumout => \u_REG_PC|Add0~1_sumout\,
	cout => \u_REG_PC|Add0~2\);

-- Location: FF_X8_Y2_N1
\u_REG_PC|w_COUNTER[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~1_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[1]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N3
\u_REG_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~5_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(2) ) + ( GND ) + ( \u_REG_PC|Add0~2\ ))
-- \u_REG_PC|Add0~6\ = CARRY(( \u_REG_PC|w_COUNTER\(2) ) + ( GND ) + ( \u_REG_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(2),
	cin => \u_REG_PC|Add0~2\,
	sumout => \u_REG_PC|Add0~5_sumout\,
	cout => \u_REG_PC|Add0~6\);

-- Location: FF_X8_Y2_N5
\u_REG_PC|w_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~5_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(2));

-- Location: MLABCELL_X8_Y2_N6
\u_REG_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~9_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(3) ) + ( GND ) + ( \u_REG_PC|Add0~6\ ))
-- \u_REG_PC|Add0~10\ = CARRY(( \u_REG_PC|w_COUNTER\(3) ) + ( GND ) + ( \u_REG_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(3),
	cin => \u_REG_PC|Add0~6\,
	sumout => \u_REG_PC|Add0~9_sumout\,
	cout => \u_REG_PC|Add0~10\);

-- Location: FF_X8_Y2_N7
\u_REG_PC|w_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~9_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(3));

-- Location: FF_X8_Y2_N11
\u_REG_PC|w_COUNTER[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~13_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[4]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N9
\u_REG_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~13_sumout\ = SUM(( \u_REG_PC|w_COUNTER[4]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~10\ ))
-- \u_REG_PC|Add0~14\ = CARRY(( \u_REG_PC|w_COUNTER[4]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER[4]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~10\,
	sumout => \u_REG_PC|Add0~13_sumout\,
	cout => \u_REG_PC|Add0~14\);

-- Location: FF_X8_Y2_N10
\u_REG_PC|w_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~13_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(4));

-- Location: MLABCELL_X8_Y2_N12
\u_REG_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~17_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(5) ) + ( GND ) + ( \u_REG_PC|Add0~14\ ))
-- \u_REG_PC|Add0~18\ = CARRY(( \u_REG_PC|w_COUNTER\(5) ) + ( GND ) + ( \u_REG_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(5),
	cin => \u_REG_PC|Add0~14\,
	sumout => \u_REG_PC|Add0~17_sumout\,
	cout => \u_REG_PC|Add0~18\);

-- Location: FF_X8_Y2_N13
\u_REG_PC|w_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~17_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(5));

-- Location: MLABCELL_X8_Y2_N15
\u_REG_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~21_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(6) ) + ( GND ) + ( \u_REG_PC|Add0~18\ ))
-- \u_REG_PC|Add0~22\ = CARRY(( \u_REG_PC|w_COUNTER\(6) ) + ( GND ) + ( \u_REG_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER\(6),
	cin => \u_REG_PC|Add0~18\,
	sumout => \u_REG_PC|Add0~21_sumout\,
	cout => \u_REG_PC|Add0~22\);

-- Location: FF_X8_Y2_N17
\u_REG_PC|w_COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~21_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(6));

-- Location: MLABCELL_X8_Y2_N18
\u_REG_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~25_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(7) ) + ( GND ) + ( \u_REG_PC|Add0~22\ ))
-- \u_REG_PC|Add0~26\ = CARRY(( \u_REG_PC|w_COUNTER\(7) ) + ( GND ) + ( \u_REG_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER\(7),
	cin => \u_REG_PC|Add0~22\,
	sumout => \u_REG_PC|Add0~25_sumout\,
	cout => \u_REG_PC|Add0~26\);

-- Location: FF_X8_Y2_N20
\u_REG_PC|w_COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~25_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(7));

-- Location: FF_X8_Y2_N23
\u_REG_PC|w_COUNTER[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~29_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[8]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N21
\u_REG_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~29_sumout\ = SUM(( \u_REG_PC|w_COUNTER[8]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~26\ ))
-- \u_REG_PC|Add0~30\ = CARRY(( \u_REG_PC|w_COUNTER[8]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER[8]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~26\,
	sumout => \u_REG_PC|Add0~29_sumout\,
	cout => \u_REG_PC|Add0~30\);

-- Location: FF_X8_Y2_N22
\u_REG_PC|w_COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~29_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(8));

-- Location: FF_X8_Y2_N26
\u_REG_PC|w_COUNTER[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~33_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[9]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N24
\u_REG_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~33_sumout\ = SUM(( \u_REG_PC|w_COUNTER[9]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~30\ ))
-- \u_REG_PC|Add0~34\ = CARRY(( \u_REG_PC|w_COUNTER[9]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER[9]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~30\,
	sumout => \u_REG_PC|Add0~33_sumout\,
	cout => \u_REG_PC|Add0~34\);

-- Location: FF_X8_Y2_N25
\u_REG_PC|w_COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~33_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(9));

-- Location: FF_X8_Y2_N29
\u_REG_PC|w_COUNTER[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~37_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[10]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N27
\u_REG_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~37_sumout\ = SUM(( \u_REG_PC|w_COUNTER[10]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~34\ ))
-- \u_REG_PC|Add0~38\ = CARRY(( \u_REG_PC|w_COUNTER[10]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER[10]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~34\,
	sumout => \u_REG_PC|Add0~37_sumout\,
	cout => \u_REG_PC|Add0~38\);

-- Location: FF_X8_Y2_N28
\u_REG_PC|w_COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~37_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(10));

-- Location: MLABCELL_X8_Y2_N30
\u_REG_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~41_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(11) ) + ( GND ) + ( \u_REG_PC|Add0~38\ ))
-- \u_REG_PC|Add0~42\ = CARRY(( \u_REG_PC|w_COUNTER\(11) ) + ( GND ) + ( \u_REG_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER\(11),
	cin => \u_REG_PC|Add0~38\,
	sumout => \u_REG_PC|Add0~41_sumout\,
	cout => \u_REG_PC|Add0~42\);

-- Location: FF_X8_Y2_N31
\u_REG_PC|w_COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~41_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(11));

-- Location: FF_X8_Y2_N35
\u_REG_PC|w_COUNTER[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~45_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[12]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N33
\u_REG_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~45_sumout\ = SUM(( \u_REG_PC|w_COUNTER[12]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~42\ ))
-- \u_REG_PC|Add0~46\ = CARRY(( \u_REG_PC|w_COUNTER[12]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REG_PC|ALT_INV_w_COUNTER[12]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~42\,
	sumout => \u_REG_PC|Add0~45_sumout\,
	cout => \u_REG_PC|Add0~46\);

-- Location: FF_X8_Y2_N34
\u_REG_PC|w_COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~45_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(12));

-- Location: MLABCELL_X8_Y2_N36
\u_REG_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~49_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(13) ) + ( GND ) + ( \u_REG_PC|Add0~46\ ))
-- \u_REG_PC|Add0~50\ = CARRY(( \u_REG_PC|w_COUNTER\(13) ) + ( GND ) + ( \u_REG_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(13),
	cin => \u_REG_PC|Add0~46\,
	sumout => \u_REG_PC|Add0~49_sumout\,
	cout => \u_REG_PC|Add0~50\);

-- Location: FF_X8_Y2_N38
\u_REG_PC|w_COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~49_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(13));

-- Location: FF_X8_Y2_N41
\u_REG_PC|w_COUNTER[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~53_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER[14]~DUPLICATE_q\);

-- Location: MLABCELL_X8_Y2_N39
\u_REG_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~53_sumout\ = SUM(( \u_REG_PC|w_COUNTER[14]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~50\ ))
-- \u_REG_PC|Add0~54\ = CARRY(( \u_REG_PC|w_COUNTER[14]~DUPLICATE_q\ ) + ( GND ) + ( \u_REG_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REG_PC|ALT_INV_w_COUNTER[14]~DUPLICATE_q\,
	cin => \u_REG_PC|Add0~50\,
	sumout => \u_REG_PC|Add0~53_sumout\,
	cout => \u_REG_PC|Add0~54\);

-- Location: FF_X8_Y2_N40
\u_REG_PC|w_COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~53_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(14));

-- Location: MLABCELL_X8_Y2_N42
\u_REG_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REG_PC|Add0~57_sumout\ = SUM(( \u_REG_PC|w_COUNTER\(15) ) + ( GND ) + ( \u_REG_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_PC|ALT_INV_w_COUNTER\(15),
	cin => \u_REG_PC|Add0~54\,
	sumout => \u_REG_PC|Add0~57_sumout\);

-- Location: FF_X8_Y2_N43
\u_REG_PC|w_COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REG_PC|Add0~57_sumout\,
	clrn => \u_CONTROLE|r_STATE.s_0~q\,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_PC|w_COUNTER\(15));

-- Location: LABCELL_X29_Y2_N0
\u_CONTROLE|w_NEXT.s_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|w_NEXT.s_3~0_combout\ = ( !\u_REG_IR|o_IR\(15) & ( !\u_REG_IR|o_IR\(13) & ( (!\u_REG_IR|o_IR\(14) & (!\u_REG_IR|o_IR\(12) & \u_CONTROLE|r_STATE.s_2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REG_IR|ALT_INV_o_IR\(14),
	datab => \u_REG_IR|ALT_INV_o_IR\(12),
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_2~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(15),
	dataf => \u_REG_IR|ALT_INV_o_IR\(13),
	combout => \u_CONTROLE|w_NEXT.s_3~0_combout\);

-- Location: FF_X29_Y2_N1
\u_CONTROLE|r_STATE.s_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|w_NEXT.s_3~0_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_3~q\);

-- Location: LABCELL_X29_Y2_N45
\u_CONTROLE|w_NEXT.s_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|w_NEXT.s_4~0_combout\ = ( !\u_REG_IR|o_IR\(15) & ( !\u_REG_IR|o_IR\(13) & ( (!\u_REG_IR|o_IR\(14) & (\u_REG_IR|o_IR\(12) & \u_CONTROLE|r_STATE.s_2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REG_IR|ALT_INV_o_IR\(14),
	datac => \u_REG_IR|ALT_INV_o_IR\(12),
	datad => \u_CONTROLE|ALT_INV_r_STATE.s_2~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(15),
	dataf => \u_REG_IR|ALT_INV_o_IR\(13),
	combout => \u_CONTROLE|w_NEXT.s_4~0_combout\);

-- Location: FF_X29_Y2_N46
\u_CONTROLE|r_STATE.s_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|w_NEXT.s_4~0_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_4~q\);

-- Location: IOIBUF_X34_Y0_N75
\i_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(0),
	o => \i_DATA[0]~input_o\);

-- Location: FF_X36_Y2_N41
\u_REG_IR|o_IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[0]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(0));

-- Location: LABCELL_X36_Y2_N36
\u_CONTROLE|o_D_ADDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[0]~0_combout\ = ( \u_REG_IR|o_IR\(0) & ( (\u_CONTROLE|r_STATE.s_4~q\) # (\u_CONTROLE|r_STATE.s_3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	dataf => \u_REG_IR|ALT_INV_o_IR\(0),
	combout => \u_CONTROLE|o_D_ADDR[0]~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\i_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

-- Location: FF_X29_Y2_N53
\u_REG_IR|o_IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[1]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(1));

-- Location: LABCELL_X29_Y2_N48
\u_CONTROLE|o_D_ADDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[1]~1_combout\ = (\u_REG_IR|o_IR\(1) & ((\u_CONTROLE|r_STATE.s_4~q\) # (\u_CONTROLE|r_STATE.s_3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(1),
	combout => \u_CONTROLE|o_D_ADDR[1]~1_combout\);

-- Location: IOIBUF_X26_Y0_N75
\i_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(2),
	o => \i_DATA[2]~input_o\);

-- Location: FF_X29_Y2_N8
\u_REG_IR|o_IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[2]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(2));

-- Location: LABCELL_X29_Y2_N9
\u_CONTROLE|o_D_ADDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[2]~2_combout\ = (\u_REG_IR|o_IR\(2) & ((\u_CONTROLE|r_STATE.s_4~q\) # (\u_CONTROLE|r_STATE.s_3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(2),
	combout => \u_CONTROLE|o_D_ADDR[2]~2_combout\);

-- Location: IOIBUF_X38_Y0_N18
\i_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: FF_X36_Y2_N32
\u_REG_IR|o_IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[3]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(3));

-- Location: LABCELL_X36_Y2_N33
\u_CONTROLE|o_D_ADDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[3]~3_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(3) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_CONTROLE|r_STATE.s_4~q\ & \u_REG_IR|o_IR\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(3),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_D_ADDR[3]~3_combout\);

-- Location: IOIBUF_X36_Y0_N18
\i_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: FF_X36_Y2_N50
\u_REG_IR|o_IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[4]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(4));

-- Location: LABCELL_X36_Y2_N48
\u_CONTROLE|o_D_ADDR[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[4]~4_combout\ = ( \u_REG_IR|o_IR\(4) & ( \u_CONTROLE|r_STATE.s_4~q\ ) ) # ( \u_REG_IR|o_IR\(4) & ( !\u_CONTROLE|r_STATE.s_4~q\ & ( \u_CONTROLE|r_STATE.s_3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(4),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	combout => \u_CONTROLE|o_D_ADDR[4]~4_combout\);

-- Location: IOIBUF_X32_Y0_N52
\i_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: FF_X36_Y2_N58
\u_REG_IR|o_IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[5]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(5));

-- Location: LABCELL_X36_Y2_N57
\u_CONTROLE|o_D_ADDR[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[5]~5_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(5) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_CONTROLE|r_STATE.s_4~q\ & \u_REG_IR|o_IR\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(5),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_D_ADDR[5]~5_combout\);

-- Location: IOIBUF_X36_Y0_N52
\i_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: FF_X36_Y2_N17
\u_REG_IR|o_IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[6]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(6));

-- Location: LABCELL_X36_Y2_N15
\u_CONTROLE|o_D_ADDR[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[6]~6_combout\ = ( \u_REG_IR|o_IR\(6) & ( \u_CONTROLE|r_STATE.s_4~q\ ) ) # ( \u_REG_IR|o_IR\(6) & ( !\u_CONTROLE|r_STATE.s_4~q\ & ( \u_CONTROLE|r_STATE.s_3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(6),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	combout => \u_CONTROLE|o_D_ADDR[6]~6_combout\);

-- Location: IOIBUF_X38_Y0_N1
\i_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

-- Location: FF_X36_Y2_N8
\u_REG_IR|o_IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[7]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(7));

-- Location: LABCELL_X36_Y2_N6
\u_CONTROLE|o_D_ADDR[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_D_ADDR[7]~7_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(7) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_CONTROLE|r_STATE.s_4~q\ & \u_REG_IR|o_IR\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(7),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_D_ADDR[7]~7_combout\);

-- Location: IOIBUF_X36_Y0_N35
\i_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(8),
	o => \i_DATA[8]~input_o\);

-- Location: FF_X36_Y2_N5
\u_REG_IR|o_IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[8]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(8));

-- Location: LABCELL_X29_Y2_N15
\u_CONTROLE|w_NEXT.s_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|w_NEXT.s_5~0_combout\ = ( !\u_REG_IR|o_IR\(15) & ( \u_REG_IR|o_IR\(13) & ( (!\u_REG_IR|o_IR\(14) & (!\u_REG_IR|o_IR\(12) & \u_CONTROLE|r_STATE.s_2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REG_IR|ALT_INV_o_IR\(14),
	datab => \u_REG_IR|ALT_INV_o_IR\(12),
	datad => \u_CONTROLE|ALT_INV_r_STATE.s_2~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(15),
	dataf => \u_REG_IR|ALT_INV_o_IR\(13),
	combout => \u_CONTROLE|w_NEXT.s_5~0_combout\);

-- Location: FF_X29_Y2_N16
\u_CONTROLE|r_STATE.s_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_CONTROLE|w_NEXT.s_5~0_combout\,
	clrn => \i_CLR_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_CONTROLE|r_STATE.s_5~q\);

-- Location: LABCELL_X36_Y2_N0
\u_CONTROLE|o_RF_W_ADDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_W_ADDR[0]~0_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(8) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_REG_IR|o_IR\(8) & ((\u_CONTROLE|r_STATE.s_5~q\) # (\u_CONTROLE|r_STATE.s_4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(8),
	datad => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_RF_W_ADDR[0]~0_combout\);

-- Location: IOIBUF_X38_Y0_N52
\i_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(9),
	o => \i_DATA[9]~input_o\);

-- Location: FF_X36_Y2_N56
\u_REG_IR|o_IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[9]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(9));

-- Location: LABCELL_X36_Y2_N45
\u_CONTROLE|o_RF_W_ADDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_W_ADDR[1]~1_combout\ = ( \u_REG_IR|o_IR\(9) & ( \u_CONTROLE|r_STATE.s_3~q\ ) ) # ( \u_REG_IR|o_IR\(9) & ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_CONTROLE|r_STATE.s_5~q\) # (\u_CONTROLE|r_STATE.s_4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datae => \u_REG_IR|ALT_INV_o_IR\(9),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_RF_W_ADDR[1]~1_combout\);

-- Location: IOIBUF_X36_Y0_N1
\i_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(10),
	o => \i_DATA[10]~input_o\);

-- Location: FF_X36_Y2_N29
\u_REG_IR|o_IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[10]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(10));

-- Location: LABCELL_X36_Y2_N24
\u_CONTROLE|o_RF_W_ADDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_W_ADDR[2]~2_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(10) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_REG_IR|o_IR\(10) & ((\u_CONTROLE|r_STATE.s_5~q\) # (\u_CONTROLE|r_STATE.s_4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(10),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_RF_W_ADDR[2]~2_combout\);

-- Location: IOIBUF_X52_Y0_N52
\i_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(11),
	o => \i_DATA[11]~input_o\);

-- Location: FF_X36_Y2_N23
\u_REG_IR|o_IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \i_DATA[11]~input_o\,
	clrn => \i_CLR_n~input_o\,
	sload => VCC,
	ena => \u_CONTROLE|r_STATE.s_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REG_IR|o_IR\(11));

-- Location: LABCELL_X36_Y2_N18
\u_CONTROLE|o_RF_W_ADDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_W_ADDR[3]~3_combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ & ( \u_REG_IR|o_IR\(11) ) ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( (\u_REG_IR|o_IR\(11) & ((\u_CONTROLE|r_STATE.s_5~q\) # (\u_CONTROLE|r_STATE.s_4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_REG_IR|ALT_INV_o_IR\(11),
	datad => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_RF_W_ADDR[3]~3_combout\);

-- Location: LABCELL_X29_Y2_N33
\u_CONTROLE|o_RF_W_WR\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_W_WR~combout\ = ( \u_CONTROLE|r_STATE.s_3~q\ ) # ( !\u_CONTROLE|r_STATE.s_3~q\ & ( \u_CONTROLE|r_STATE.s_5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datae => \u_CONTROLE|ALT_INV_r_STATE.s_3~q\,
	combout => \u_CONTROLE|o_RF_W_WR~combout\);

-- Location: LABCELL_X36_Y2_N3
\u_CONTROLE|o_RF_RP_ADDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RP_ADDR[0]~0_combout\ = ( \u_REG_IR|o_IR\(4) & ( (!\u_CONTROLE|r_STATE.s_4~q\ & (\u_CONTROLE|r_STATE.s_5~q\)) # (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(8))) ) ) # ( !\u_REG_IR|o_IR\(4) & ( 
-- (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010010110100000101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(8),
	dataf => \u_REG_IR|ALT_INV_o_IR\(4),
	combout => \u_CONTROLE|o_RF_RP_ADDR[0]~0_combout\);

-- Location: LABCELL_X36_Y2_N54
\u_CONTROLE|o_RF_RP_ADDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RP_ADDR[1]~1_combout\ = ( \u_REG_IR|o_IR\(5) & ( (!\u_CONTROLE|r_STATE.s_4~q\ & (\u_CONTROLE|r_STATE.s_5~q\)) # (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(9))) ) ) # ( !\u_REG_IR|o_IR\(5) & ( 
-- (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000100010011001100010001001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(9),
	dataf => \u_REG_IR|ALT_INV_o_IR\(5),
	combout => \u_CONTROLE|o_RF_RP_ADDR[1]~1_combout\);

-- Location: LABCELL_X36_Y2_N27
\u_CONTROLE|o_RF_RP_ADDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RP_ADDR[2]~2_combout\ = ( \u_REG_IR|o_IR\(6) & ( (!\u_CONTROLE|r_STATE.s_4~q\ & (\u_CONTROLE|r_STATE.s_5~q\)) # (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(10))) ) ) # ( !\u_REG_IR|o_IR\(6) & ( 
-- (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000100010011001100010001001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(10),
	dataf => \u_REG_IR|ALT_INV_o_IR\(6),
	combout => \u_CONTROLE|o_RF_RP_ADDR[2]~2_combout\);

-- Location: LABCELL_X36_Y2_N21
\u_CONTROLE|o_RF_RP_ADDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RP_ADDR[3]~3_combout\ = ( \u_REG_IR|o_IR\(7) & ( (!\u_CONTROLE|r_STATE.s_4~q\ & (\u_CONTROLE|r_STATE.s_5~q\)) # (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(11))) ) ) # ( !\u_REG_IR|o_IR\(7) & ( 
-- (\u_CONTROLE|r_STATE.s_4~q\ & (!\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001010010110100000101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(11),
	dataf => \u_REG_IR|ALT_INV_o_IR\(7),
	combout => \u_CONTROLE|o_RF_RP_ADDR[3]~3_combout\);

-- Location: LABCELL_X36_Y2_N9
\u_CONTROLE|o_RF_RP_RD\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RP_RD~combout\ = (\u_CONTROLE|r_STATE.s_5~q\) # (\u_CONTROLE|r_STATE.s_4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_CONTROLE|ALT_INV_r_STATE.s_4~q\,
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	combout => \u_CONTROLE|o_RF_RP_RD~combout\);

-- Location: LABCELL_X36_Y2_N39
\u_CONTROLE|o_RF_RQ_ADDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RQ_ADDR[0]~0_combout\ = (\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(0),
	combout => \u_CONTROLE|o_RF_RQ_ADDR[0]~0_combout\);

-- Location: LABCELL_X29_Y2_N51
\u_CONTROLE|o_RF_RQ_ADDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RQ_ADDR[1]~1_combout\ = ( \u_CONTROLE|r_STATE.s_5~q\ & ( \u_REG_IR|o_IR\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_IR|ALT_INV_o_IR\(1),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	combout => \u_CONTROLE|o_RF_RQ_ADDR[1]~1_combout\);

-- Location: LABCELL_X29_Y2_N6
\u_CONTROLE|o_RF_RQ_ADDR[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RQ_ADDR[2]~2_combout\ = ( \u_CONTROLE|r_STATE.s_5~q\ & ( \u_REG_IR|o_IR\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_REG_IR|ALT_INV_o_IR\(2),
	dataf => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	combout => \u_CONTROLE|o_RF_RQ_ADDR[2]~2_combout\);

-- Location: LABCELL_X36_Y2_N30
\u_CONTROLE|o_RF_RQ_ADDR[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_CONTROLE|o_RF_RQ_ADDR[3]~3_combout\ = (\u_CONTROLE|r_STATE.s_5~q\ & \u_REG_IR|o_IR\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_CONTROLE|ALT_INV_r_STATE.s_5~q\,
	datad => \u_REG_IR|ALT_INV_o_IR\(3),
	combout => \u_CONTROLE|o_RF_RQ_ADDR[3]~3_combout\);

-- Location: MLABCELL_X78_Y14_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


