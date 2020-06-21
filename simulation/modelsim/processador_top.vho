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

-- DATE "06/21/2020 11:48:18"

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

ENTITY 	operational_block IS
    PORT (
	i_CLK : IN std_logic;
	i_CLR_N : IN std_logic;
	i_RF_s : IN std_logic;
	i_ALU_s0 : IN std_logic;
	i_RF_W_wr : IN std_logic;
	i_RF_RP_rd : IN std_logic;
	i_RF_RQ_rd : IN std_logic;
	i_RF_W_addr : IN std_logic_vector(3 DOWNTO 0);
	i_RF_RP_addr : IN std_logic_vector(3 DOWNTO 0);
	i_RF_RQ_addr : IN std_logic_vector(3 DOWNTO 0);
	i_R_DATA : IN std_logic_vector(15 DOWNTO 0);
	o_W_DATA : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END operational_block;

-- Design Ports Information
-- o_W_DATA[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[13]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_W_DATA[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RP_addr[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RP_addr[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RP_addr[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RP_addr[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLR_N	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RP_rd	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_s	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_W_wr	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_W_addr[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_W_addr[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_W_addr[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_W_addr[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[11]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[12]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_R_DATA[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ALU_s0	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RQ_addr[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RQ_addr[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RQ_addr[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RQ_addr[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RF_RQ_rd	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF operational_block IS
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
SIGNAL ww_i_CLR_N : std_logic;
SIGNAL ww_i_RF_s : std_logic;
SIGNAL ww_i_ALU_s0 : std_logic;
SIGNAL ww_i_RF_W_wr : std_logic;
SIGNAL ww_i_RF_RP_rd : std_logic;
SIGNAL ww_i_RF_RQ_rd : std_logic;
SIGNAL ww_i_RF_W_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_RF_RP_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_RF_RQ_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_R_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_W_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_RF_RP_addr[0]~input_o\ : std_logic;
SIGNAL \i_RF_RP_addr[3]~input_o\ : std_logic;
SIGNAL \i_R_DATA[0]~input_o\ : std_logic;
SIGNAL \i_RF_s~input_o\ : std_logic;
SIGNAL \i_RF_RQ_addr[0]~input_o\ : std_logic;
SIGNAL \i_RF_RQ_addr[2]~input_o\ : std_logic;
SIGNAL \i_RF_RQ_addr[3]~input_o\ : std_logic;
SIGNAL \i_CLR_N~input_o\ : std_logic;
SIGNAL \i_CLR_N~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_RF_W_addr[1]~input_o\ : std_logic;
SIGNAL \i_RF_W_wr~input_o\ : std_logic;
SIGNAL \i_RF_W_addr[2]~input_o\ : std_logic;
SIGNAL \i_RF_W_addr[3]~input_o\ : std_logic;
SIGNAL \i_RF_W_addr[0]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[0]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[0]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\ : std_logic;
SIGNAL \i_RF_RQ_addr[1]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[0]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R3|r_STATE[0]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~4_combout\ : std_logic;
SIGNAL \i_RF_RQ_rd~input_o\ : std_logic;
SIGNAL \u_ALU|Add0~1_sumout\ : std_logic;
SIGNAL \i_ALU_s0~input_o\ : std_logic;
SIGNAL \u_MUX|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\ : std_logic;
SIGNAL \i_RF_RP_addr[2]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\ : std_logic;
SIGNAL \i_RF_RP_addr[1]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~4_combout\ : std_logic;
SIGNAL \i_RF_RP_rd~input_o\ : std_logic;
SIGNAL \i_R_DATA[1]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[1]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[1]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[1]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[1]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~9_combout\ : std_logic;
SIGNAL \u_ALU|Add0~2\ : std_logic;
SIGNAL \u_ALU|Add0~5_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[1]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~9_combout\ : std_logic;
SIGNAL \i_R_DATA[2]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[2]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[2]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~14_combout\ : std_logic;
SIGNAL \u_ALU|Add0~6\ : std_logic;
SIGNAL \u_ALU|Add0~9_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[2]~2_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~14_combout\ : std_logic;
SIGNAL \i_R_DATA[3]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[3]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[3]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~19_combout\ : std_logic;
SIGNAL \u_ALU|Add0~10\ : std_logic;
SIGNAL \u_ALU|Add0~13_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[3]~3_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[3]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~19_combout\ : std_logic;
SIGNAL \i_R_DATA[4]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[4]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[4]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[4]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[4]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~24_combout\ : std_logic;
SIGNAL \u_ALU|Add0~14\ : std_logic;
SIGNAL \u_ALU|Add0~17_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[4]~4_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~24_combout\ : std_logic;
SIGNAL \i_R_DATA[5]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[5]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[5]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[5]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~29_combout\ : std_logic;
SIGNAL \u_ALU|Add0~18\ : std_logic;
SIGNAL \u_ALU|Add0~21_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[5]~5_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[5]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~29_combout\ : std_logic;
SIGNAL \i_R_DATA[6]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[6]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[6]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[6]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[6]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[6]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~34_combout\ : std_logic;
SIGNAL \u_ALU|Add0~22\ : std_logic;
SIGNAL \u_ALU|Add0~25_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[6]~6_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~34_combout\ : std_logic;
SIGNAL \i_R_DATA[7]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[7]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[7]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE[7]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~39_combout\ : std_logic;
SIGNAL \u_ALU|Add0~26\ : std_logic;
SIGNAL \u_ALU|Add0~29_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[7]~7_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~39_combout\ : std_logic;
SIGNAL \i_R_DATA[8]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE[8]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~44_combout\ : std_logic;
SIGNAL \u_ALU|Add0~30\ : std_logic;
SIGNAL \u_ALU|Add0~33_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[8]~8_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~44_combout\ : std_logic;
SIGNAL \i_R_DATA[9]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[9]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R13|r_STATE[9]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R3|r_STATE[9]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~49_combout\ : std_logic;
SIGNAL \u_ALU|Add0~34\ : std_logic;
SIGNAL \u_ALU|Add0~37_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[9]~9_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R12|r_STATE[9]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~49_combout\ : std_logic;
SIGNAL \i_R_DATA[10]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[10]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~54_combout\ : std_logic;
SIGNAL \u_ALU|Add0~38\ : std_logic;
SIGNAL \u_ALU|Add0~41_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[10]~10_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~54_combout\ : std_logic;
SIGNAL \i_R_DATA[11]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[11]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[11]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[11]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~59_combout\ : std_logic;
SIGNAL \u_ALU|Add0~42\ : std_logic;
SIGNAL \u_ALU|Add0~45_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[11]~11_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~59_combout\ : std_logic;
SIGNAL \i_R_DATA[12]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[12]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[12]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[12]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[12]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE[12]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~64_combout\ : std_logic;
SIGNAL \u_ALU|Add0~46\ : std_logic;
SIGNAL \u_ALU|Add0~49_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[12]~12_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~64_combout\ : std_logic;
SIGNAL \i_R_DATA[13]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R12|r_STATE[13]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[13]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[13]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE[13]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~69_combout\ : std_logic;
SIGNAL \u_ALU|Add0~50\ : std_logic;
SIGNAL \u_ALU|Add0~53_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[13]~13_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~69_combout\ : std_logic;
SIGNAL \i_R_DATA[14]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE[14]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE[14]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~74_combout\ : std_logic;
SIGNAL \u_ALU|Add0~54\ : std_logic;
SIGNAL \u_ALU|Add0~57_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[14]~14_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[14]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~74_combout\ : std_logic;
SIGNAL \i_R_DATA[15]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE[15]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE[15]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE[15]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R3|r_STATE[15]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE[15]~feeder_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~79_combout\ : std_logic;
SIGNAL \u_ALU|Add0~58\ : std_logic;
SIGNAL \u_ALU|Add0~61_sumout\ : std_logic;
SIGNAL \u_MUX|o_Q[15]~15_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~79_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RP|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R1|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R5|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R3|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R7|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R15|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R13|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R2|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R11|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R10|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R6|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R14|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R0|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R8|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R4|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R12|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_ALU|w_o_ADD\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_RQ|r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~31_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~30_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~28_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~27_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~26_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~25_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~23_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~22_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~21_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~20_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~18_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~17_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~16_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~15_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~13_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~12_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~11_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~10_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~8_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~7_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~6_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~5_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~3_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~2_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~63_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~62_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~61_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~60_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~58_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~57_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~56_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~55_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~53_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~52_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~51_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~50_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~48_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~47_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~46_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~45_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~43_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~42_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~41_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~40_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~38_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~37_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~36_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~35_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~33_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~32_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_MUX|ALT_INV_o_Q[15]~15_combout\ : std_logic;
SIGNAL \u_ALU|ALT_INV_w_o_ADD\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_MUX|ALT_INV_o_Q[14]~14_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[13]~13_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[12]~12_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[11]~11_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[10]~10_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[9]~9_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[8]~8_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[7]~7_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[6]~6_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[5]~5_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[4]~4_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[3]~3_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[2]~2_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[1]~1_combout\ : std_logic;
SIGNAL \u_MUX|ALT_INV_o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~78_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~77_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~76_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~75_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~73_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~72_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~71_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~70_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~68_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~67_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~66_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~65_combout\ : std_logic;
SIGNAL \ALT_INV_i_RF_RQ_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RQ_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RQ_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RQ_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_W_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_W_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_W_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_W_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_W_wr~input_o\ : std_logic;
SIGNAL \ALT_INV_i_R_DATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_s~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RP_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RP_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RP_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_RF_RP_addr[0]~input_o\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~78_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~77_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~76_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~75_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~73_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~72_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~71_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~70_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~68_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~67_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~66_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~65_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~63_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~62_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~61_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~60_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~58_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~57_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~56_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~55_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~53_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~52_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~51_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~50_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~48_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~47_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~46_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~45_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~43_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~42_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~41_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~40_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~38_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~37_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~36_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~35_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~33_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~32_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~31_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~30_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~28_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~27_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~26_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~25_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~23_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~22_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~21_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~20_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~18_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~17_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~16_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~15_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~13_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~12_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~11_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~10_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~8_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~7_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~6_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~5_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~3_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~2_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\ : std_logic;
SIGNAL \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_CLR_N <= i_CLR_N;
ww_i_RF_s <= i_RF_s;
ww_i_ALU_s0 <= i_ALU_s0;
ww_i_RF_W_wr <= i_RF_W_wr;
ww_i_RF_RP_rd <= i_RF_RP_rd;
ww_i_RF_RQ_rd <= i_RF_RQ_rd;
ww_i_RF_W_addr <= i_RF_W_addr;
ww_i_RF_RP_addr <= i_RF_RP_addr;
ww_i_RF_RQ_addr <= i_RF_RQ_addr;
ww_i_R_DATA <= i_R_DATA;
o_W_DATA <= ww_o_W_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(0);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(0);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~1_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\;
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\ <= NOT \u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\;
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\ <= NOT \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(0);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(0);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(0);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~0_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(0);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(0);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(0);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(0);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(15);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(14);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(13);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(12);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(11);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(10);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(9);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(8);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(7);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(6);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(5);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(4);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(3);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(2);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(1);
\u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_RP|r_STATE\(0);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(6);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(6);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(6);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~31_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(6);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(6);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(6);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~30_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(6);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(6);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(6);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(6);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~28_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(5);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(5);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(5);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(5);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~27_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(5);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(5);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(5);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(5);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~26_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(5);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(5);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(5);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~25_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(5);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(5);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(5);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(5);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~23_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(4);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(4);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(4);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(4);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~22_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(4);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(4);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(4);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(4);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~21_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(4);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(4);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(4);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~20_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(4);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(4);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(4);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(4);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~18_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(3);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(3);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(3);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(3);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~17_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(3);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(3);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(3);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(3);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~16_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(3);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(3);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(3);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~15_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(3);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(3);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(3);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(3);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~13_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(2);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(2);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(2);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(2);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~12_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(2);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(2);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(2);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(2);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~11_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(2);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(2);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(2);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~10_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(2);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(2);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(2);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(2);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~8_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(1);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(1);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(1);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(1);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~7_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(1);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(1);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(1);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(1);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~6_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(1);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(1);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(1);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~5_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(1);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(1);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(1);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(1);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~3_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(0);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(0);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(0);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(0);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~2_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(0);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(0);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~63_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(12);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(12);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(12);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(12);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~62_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(12);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(12);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(12);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(12);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~61_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(12);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(12);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(12);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~60_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(12);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(12);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(12);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(12);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~58_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(11);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(11);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(11);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(11);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~57_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(11);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(11);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(11);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(11);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~56_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(11);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(11);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(11);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~55_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(11);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(11);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(11);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(11);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~53_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(10);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(10);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(10);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(10);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~52_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(10);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(10);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(10);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(10);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~51_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(10);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(10);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(10);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~50_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(10);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(10);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(10);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(10);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~48_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(9);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(9);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(9);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(9);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~47_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(9);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(9);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(9);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(9);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~46_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(9);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(9);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(9);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~45_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(9);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(9);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(9);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(9);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~43_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(8);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(8);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(8);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(8);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~42_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(8);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(8);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(8);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(8);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~41_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(8);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(8);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(8);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~40_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(8);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(8);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(8);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(8);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~38_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(7);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(7);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(7);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(7);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~37_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(7);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(7);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(7);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(7);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~36_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(7);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(7);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(7);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~35_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(7);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(7);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(7);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(7);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~33_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(6);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(6);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(6);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(6);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~32_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(6);
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~0_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\;
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(15);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(14);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(13);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(12) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(12);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(11) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(11);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(10) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(10);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(9) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(9);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(8) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(8);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(7) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(7);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(6) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(6);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(5) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(5);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(4) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(4);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(3) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(3);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(2) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(2);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(1) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(1);
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(0) <= NOT \u_REGISTER_FILE|u_RQ|r_STATE\(0);
\u_MUX|ALT_INV_o_Q[15]~15_combout\ <= NOT \u_MUX|o_Q[15]~15_combout\;
\u_ALU|ALT_INV_w_o_ADD\(15) <= NOT \u_ALU|w_o_ADD\(15);
\u_MUX|ALT_INV_o_Q[14]~14_combout\ <= NOT \u_MUX|o_Q[14]~14_combout\;
\u_ALU|ALT_INV_w_o_ADD\(14) <= NOT \u_ALU|w_o_ADD\(14);
\u_MUX|ALT_INV_o_Q[13]~13_combout\ <= NOT \u_MUX|o_Q[13]~13_combout\;
\u_ALU|ALT_INV_w_o_ADD\(13) <= NOT \u_ALU|w_o_ADD\(13);
\u_MUX|ALT_INV_o_Q[12]~12_combout\ <= NOT \u_MUX|o_Q[12]~12_combout\;
\u_ALU|ALT_INV_w_o_ADD\(12) <= NOT \u_ALU|w_o_ADD\(12);
\u_MUX|ALT_INV_o_Q[11]~11_combout\ <= NOT \u_MUX|o_Q[11]~11_combout\;
\u_ALU|ALT_INV_w_o_ADD\(11) <= NOT \u_ALU|w_o_ADD\(11);
\u_MUX|ALT_INV_o_Q[10]~10_combout\ <= NOT \u_MUX|o_Q[10]~10_combout\;
\u_ALU|ALT_INV_w_o_ADD\(10) <= NOT \u_ALU|w_o_ADD\(10);
\u_MUX|ALT_INV_o_Q[9]~9_combout\ <= NOT \u_MUX|o_Q[9]~9_combout\;
\u_ALU|ALT_INV_w_o_ADD\(9) <= NOT \u_ALU|w_o_ADD\(9);
\u_MUX|ALT_INV_o_Q[8]~8_combout\ <= NOT \u_MUX|o_Q[8]~8_combout\;
\u_ALU|ALT_INV_w_o_ADD\(8) <= NOT \u_ALU|w_o_ADD\(8);
\u_MUX|ALT_INV_o_Q[7]~7_combout\ <= NOT \u_MUX|o_Q[7]~7_combout\;
\u_ALU|ALT_INV_w_o_ADD\(7) <= NOT \u_ALU|w_o_ADD\(7);
\u_MUX|ALT_INV_o_Q[6]~6_combout\ <= NOT \u_MUX|o_Q[6]~6_combout\;
\u_ALU|ALT_INV_w_o_ADD\(6) <= NOT \u_ALU|w_o_ADD\(6);
\u_MUX|ALT_INV_o_Q[5]~5_combout\ <= NOT \u_MUX|o_Q[5]~5_combout\;
\u_ALU|ALT_INV_w_o_ADD\(5) <= NOT \u_ALU|w_o_ADD\(5);
\u_MUX|ALT_INV_o_Q[4]~4_combout\ <= NOT \u_MUX|o_Q[4]~4_combout\;
\u_ALU|ALT_INV_w_o_ADD\(4) <= NOT \u_ALU|w_o_ADD\(4);
\u_MUX|ALT_INV_o_Q[3]~3_combout\ <= NOT \u_MUX|o_Q[3]~3_combout\;
\u_ALU|ALT_INV_w_o_ADD\(3) <= NOT \u_ALU|w_o_ADD\(3);
\u_MUX|ALT_INV_o_Q[2]~2_combout\ <= NOT \u_MUX|o_Q[2]~2_combout\;
\u_ALU|ALT_INV_w_o_ADD\(2) <= NOT \u_ALU|w_o_ADD\(2);
\u_MUX|ALT_INV_o_Q[1]~1_combout\ <= NOT \u_MUX|o_Q[1]~1_combout\;
\u_ALU|ALT_INV_w_o_ADD\(1) <= NOT \u_ALU|w_o_ADD\(1);
\u_MUX|ALT_INV_o_Q[0]~0_combout\ <= NOT \u_MUX|o_Q[0]~0_combout\;
\u_ALU|ALT_INV_w_o_ADD\(0) <= NOT \u_ALU|w_o_ADD\(0);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~78_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(15);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(15);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(15);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(15);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~77_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(15);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(15);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(15);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(15);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~76_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(15);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(15);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(15);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~75_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(15);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(15);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(15);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(15) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(15);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~73_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(14);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(14);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(14);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(14);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~72_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(14);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(14);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(14);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(14);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~71_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(14);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(14);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(14);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~70_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(14);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(14);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(14);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(14) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(14);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~68_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\;
\u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R12|r_STATE\(13);
\u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R4|r_STATE\(13);
\u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R8|r_STATE\(13);
\u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R0|r_STATE\(13);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~67_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\;
\u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R14|r_STATE\(13);
\u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R6|r_STATE\(13);
\u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R10|r_STATE\(13);
\u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R2|r_STATE\(13);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~66_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\;
\u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R11|r_STATE\(13);
\u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R13|r_STATE\(13);
\u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R15|r_STATE\(13);
\u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~65_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\;
\u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R7|r_STATE\(13);
\u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R3|r_STATE\(13);
\u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R5|r_STATE\(13);
\u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(13) <= NOT \u_REGISTER_FILE|u_R1|r_STATE\(13);
\ALT_INV_i_RF_RQ_addr[3]~input_o\ <= NOT \i_RF_RQ_addr[3]~input_o\;
\ALT_INV_i_RF_RQ_addr[2]~input_o\ <= NOT \i_RF_RQ_addr[2]~input_o\;
\ALT_INV_i_RF_RQ_addr[1]~input_o\ <= NOT \i_RF_RQ_addr[1]~input_o\;
\ALT_INV_i_RF_RQ_addr[0]~input_o\ <= NOT \i_RF_RQ_addr[0]~input_o\;
\ALT_INV_i_R_DATA[15]~input_o\ <= NOT \i_R_DATA[15]~input_o\;
\ALT_INV_i_R_DATA[14]~input_o\ <= NOT \i_R_DATA[14]~input_o\;
\ALT_INV_i_R_DATA[13]~input_o\ <= NOT \i_R_DATA[13]~input_o\;
\ALT_INV_i_R_DATA[12]~input_o\ <= NOT \i_R_DATA[12]~input_o\;
\ALT_INV_i_R_DATA[11]~input_o\ <= NOT \i_R_DATA[11]~input_o\;
\ALT_INV_i_R_DATA[10]~input_o\ <= NOT \i_R_DATA[10]~input_o\;
\ALT_INV_i_R_DATA[9]~input_o\ <= NOT \i_R_DATA[9]~input_o\;
\ALT_INV_i_R_DATA[8]~input_o\ <= NOT \i_R_DATA[8]~input_o\;
\ALT_INV_i_R_DATA[7]~input_o\ <= NOT \i_R_DATA[7]~input_o\;
\ALT_INV_i_R_DATA[6]~input_o\ <= NOT \i_R_DATA[6]~input_o\;
\ALT_INV_i_R_DATA[5]~input_o\ <= NOT \i_R_DATA[5]~input_o\;
\ALT_INV_i_R_DATA[4]~input_o\ <= NOT \i_R_DATA[4]~input_o\;
\ALT_INV_i_R_DATA[3]~input_o\ <= NOT \i_R_DATA[3]~input_o\;
\ALT_INV_i_R_DATA[2]~input_o\ <= NOT \i_R_DATA[2]~input_o\;
\ALT_INV_i_R_DATA[1]~input_o\ <= NOT \i_R_DATA[1]~input_o\;
\ALT_INV_i_RF_W_addr[2]~input_o\ <= NOT \i_RF_W_addr[2]~input_o\;
\ALT_INV_i_RF_W_addr[1]~input_o\ <= NOT \i_RF_W_addr[1]~input_o\;
\ALT_INV_i_RF_W_addr[3]~input_o\ <= NOT \i_RF_W_addr[3]~input_o\;
\ALT_INV_i_RF_W_addr[0]~input_o\ <= NOT \i_RF_W_addr[0]~input_o\;
\ALT_INV_i_RF_W_wr~input_o\ <= NOT \i_RF_W_wr~input_o\;
\ALT_INV_i_R_DATA[0]~input_o\ <= NOT \i_R_DATA[0]~input_o\;
\ALT_INV_i_RF_s~input_o\ <= NOT \i_RF_s~input_o\;
\ALT_INV_i_RF_RP_addr[3]~input_o\ <= NOT \i_RF_RP_addr[3]~input_o\;
\ALT_INV_i_RF_RP_addr[2]~input_o\ <= NOT \i_RF_RP_addr[2]~input_o\;
\ALT_INV_i_RF_RP_addr[1]~input_o\ <= NOT \i_RF_RP_addr[1]~input_o\;
\ALT_INV_i_RF_RP_addr[0]~input_o\ <= NOT \i_RF_RP_addr[0]~input_o\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~78_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~77_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~76_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~75_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~73_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~72_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~71_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~70_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~68_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~67_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~66_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~65_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~63_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~62_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~61_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~60_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~58_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~57_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~56_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~55_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~53_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~52_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~51_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~50_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~48_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~47_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~46_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~45_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~43_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~42_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~41_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~40_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~38_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~37_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~36_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~35_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~33_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~32_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~31_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~30_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~28_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~27_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~26_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~25_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~23_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~22_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~21_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~20_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~18_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~17_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~16_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~15_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~13_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~12_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~11_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~10_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~8_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~7_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~6_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~5_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~3_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~2_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\;
\u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~1_combout\ <= NOT \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\;
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\ <= NOT \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\;
\u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\ <= NOT \u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\;

-- Location: IOOBUF_X68_Y0_N53
\o_W_DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(0),
	devoe => ww_devoe,
	o => ww_o_W_DATA(0));

-- Location: IOOBUF_X34_Y0_N76
\o_W_DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(1),
	devoe => ww_devoe,
	o => ww_o_W_DATA(1));

-- Location: IOOBUF_X54_Y0_N19
\o_W_DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(2),
	devoe => ww_devoe,
	o => ww_o_W_DATA(2));

-- Location: IOOBUF_X58_Y0_N93
\o_W_DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(3),
	devoe => ww_devoe,
	o => ww_o_W_DATA(3));

-- Location: IOOBUF_X52_Y0_N2
\o_W_DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(4),
	devoe => ww_devoe,
	o => ww_o_W_DATA(4));

-- Location: IOOBUF_X38_Y0_N19
\o_W_DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(5),
	devoe => ww_devoe,
	o => ww_o_W_DATA(5));

-- Location: IOOBUF_X34_Y0_N59
\o_W_DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(6),
	devoe => ww_devoe,
	o => ww_o_W_DATA(6));

-- Location: IOOBUF_X34_Y0_N93
\o_W_DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(7),
	devoe => ww_devoe,
	o => ww_o_W_DATA(7));

-- Location: IOOBUF_X38_Y0_N2
\o_W_DATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(8),
	devoe => ww_devoe,
	o => ww_o_W_DATA(8));

-- Location: IOOBUF_X38_Y0_N36
\o_W_DATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(9),
	devoe => ww_devoe,
	o => ww_o_W_DATA(9));

-- Location: IOOBUF_X38_Y0_N53
\o_W_DATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(10),
	devoe => ww_devoe,
	o => ww_o_W_DATA(10));

-- Location: IOOBUF_X36_Y0_N36
\o_W_DATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(11),
	devoe => ww_devoe,
	o => ww_o_W_DATA(11));

-- Location: IOOBUF_X32_Y0_N19
\o_W_DATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(12),
	devoe => ww_devoe,
	o => ww_o_W_DATA(12));

-- Location: IOOBUF_X36_Y0_N2
\o_W_DATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(13),
	devoe => ww_devoe,
	o => ww_o_W_DATA(13));

-- Location: IOOBUF_X36_Y0_N53
\o_W_DATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(14),
	devoe => ww_devoe,
	o => ww_o_W_DATA(14));

-- Location: IOOBUF_X36_Y0_N19
\o_W_DATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_REGISTER_FILE|u_RP|r_STATE\(15),
	devoe => ww_devoe,
	o => ww_o_W_DATA(15));

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

-- Location: IOIBUF_X50_Y0_N75
\i_RF_RP_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RP_addr(0),
	o => \i_RF_RP_addr[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\i_RF_RP_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RP_addr(3),
	o => \i_RF_RP_addr[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\i_R_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(0),
	o => \i_R_DATA[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\i_RF_s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_s,
	o => \i_RF_s~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\i_RF_RQ_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RQ_addr(0),
	o => \i_RF_RQ_addr[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\i_RF_RQ_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RQ_addr(2),
	o => \i_RF_RQ_addr[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\i_RF_RQ_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RQ_addr(3),
	o => \i_RF_RQ_addr[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\i_CLR_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLR_N,
	o => \i_CLR_N~input_o\);

-- Location: CLKCTRL_G8
\i_CLR_N~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLR_N~input_o\,
	outclk => \i_CLR_N~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y0_N1
\i_RF_W_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_W_addr(1),
	o => \i_RF_W_addr[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\i_RF_W_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_W_wr,
	o => \i_RF_W_wr~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\i_RF_W_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_W_addr(2),
	o => \i_RF_W_addr[2]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\i_RF_W_addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_W_addr(3),
	o => \i_RF_W_addr[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\i_RF_W_addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_W_addr(0),
	o => \i_RF_W_addr[0]~input_o\);

-- Location: LABCELL_X51_Y4_N57
\u_REGISTER_FILE|u_DEMUX|o_S4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (\i_RF_W_addr[2]~input_o\ & !\i_RF_W_addr[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[2]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[3]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\);

-- Location: FF_X50_Y1_N32
\u_REGISTER_FILE|u_R4|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(0));

-- Location: LABCELL_X51_Y4_N30
\u_REGISTER_FILE|u_DEMUX|o_S12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\ = ( \i_RF_W_addr[2]~input_o\ & ( !\i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & \i_RF_W_addr[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datae => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\);

-- Location: FF_X50_Y1_N29
\u_REGISTER_FILE|u_R12|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(0));

-- Location: LABCELL_X51_Y4_N24
\u_REGISTER_FILE|u_DEMUX|o_S8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\ = ( !\i_RF_W_addr[2]~input_o\ & ( !\i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & \i_RF_W_addr[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datae => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\);

-- Location: FF_X50_Y1_N2
\u_REGISTER_FILE|u_R8|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(0));

-- Location: LABCELL_X51_Y4_N54
\u_REGISTER_FILE|u_DEMUX|o_S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (!\i_RF_W_addr[3]~input_o\ & !\i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\);

-- Location: FF_X51_Y1_N14
\u_REGISTER_FILE|u_R0|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(0));

-- Location: LABCELL_X50_Y1_N39
\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(0) & ( \u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(0))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(0) & ( \u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[3]~input_o\)) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(0))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(0)))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[3]~input_o\)) 
-- # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(0))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(0)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(0) 
-- & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(0))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(0),
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(0),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\);

-- Location: LABCELL_X48_Y4_N27
\u_REGISTER_FILE|u_R10|r_STATE[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[0]~feeder_combout\ = ( \u_MUX|o_Q[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[0]~0_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[0]~feeder_combout\);

-- Location: LABCELL_X51_Y4_N21
\u_REGISTER_FILE|u_DEMUX|o_S10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (\i_RF_W_addr[3]~input_o\ & !\i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\);

-- Location: FF_X48_Y4_N29
\u_REGISTER_FILE|u_R10|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[0]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(0));

-- Location: LABCELL_X46_Y4_N15
\u_REGISTER_FILE|u_R2|r_STATE[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[0]~feeder_combout\ = ( \u_MUX|o_Q[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[0]~0_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[0]~feeder_combout\);

-- Location: LABCELL_X51_Y4_N18
\u_REGISTER_FILE|u_DEMUX|o_S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (!\i_RF_W_addr[3]~input_o\ & !\i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\);

-- Location: FF_X46_Y4_N16
\u_REGISTER_FILE|u_R2|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[0]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(0));

-- Location: LABCELL_X51_Y4_N36
\u_REGISTER_FILE|u_DEMUX|o_S6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (!\i_RF_W_addr[3]~input_o\ & \i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\);

-- Location: FF_X47_Y4_N26
\u_REGISTER_FILE|u_R6|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(0));

-- Location: MLABCELL_X47_Y4_N33
\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(0) & ( \u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(0))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(0) & ( \u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(0) & ((\i_RF_RQ_addr[3]~input_o\)))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(0))))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(0)))) # (\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R14|r_STATE\(0) & \i_RF_RQ_addr[3]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (\i_RF_RQ_addr[3]~input_o\ 
-- & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(0))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(0),
	datab => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(0),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\);

-- Location: IOIBUF_X40_Y0_N35
\i_RF_RQ_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RQ_addr(1),
	o => \i_RF_RQ_addr[1]~input_o\);

-- Location: LABCELL_X51_Y4_N45
\u_REGISTER_FILE|u_DEMUX|o_S15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\ = ( \i_RF_W_addr[3]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (\i_RF_W_addr[0]~input_o\ & \i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[0]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[3]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\);

-- Location: FF_X47_Y2_N44
\u_REGISTER_FILE|u_R15|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(0));

-- Location: LABCELL_X48_Y1_N3
\u_REGISTER_FILE|u_RQ|r_STATE[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ = ( \i_RF_RQ_addr[2]~input_o\ & ( (\i_RF_RQ_addr[3]~input_o\ & \i_RF_RQ_addr[1]~input_o\) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( \i_RF_RQ_addr[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	dataf => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	combout => \u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\);

-- Location: LABCELL_X51_Y4_N51
\u_REGISTER_FILE|u_DEMUX|o_S11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\ = ( \i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (!\i_RF_W_addr[2]~input_o\ & (\i_RF_W_wr~input_o\ & \i_RF_W_addr[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_W_wr~input_o\,
	datad => \ALT_INV_i_RF_W_addr[3]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\);

-- Location: FF_X48_Y1_N20
\u_REGISTER_FILE|u_R11|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(0));

-- Location: LABCELL_X48_Y1_N42
\u_REGISTER_FILE|u_RQ|r_STATE[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ = ( \i_RF_RQ_addr[1]~input_o\ & ( (\i_RF_RQ_addr[3]~input_o\ & !\i_RF_RQ_addr[2]~input_o\) ) ) # ( !\i_RF_RQ_addr[1]~input_o\ & ( (\i_RF_RQ_addr[3]~input_o\ & \i_RF_RQ_addr[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	combout => \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\);

-- Location: LABCELL_X51_Y4_N42
\u_REGISTER_FILE|u_DEMUX|o_S7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\ = ( \i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (!\i_RF_W_addr[3]~input_o\ & \i_RF_W_addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\);

-- Location: FF_X47_Y3_N32
\u_REGISTER_FILE|u_R7|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(0));

-- Location: MLABCELL_X47_Y3_N48
\u_REGISTER_FILE|u_R5|r_STATE[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[0]~feeder_combout\ = \u_MUX|o_Q[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_MUX|ALT_INV_o_Q[0]~0_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[0]~feeder_combout\);

-- Location: LABCELL_X51_Y4_N6
\u_REGISTER_FILE|u_DEMUX|o_S5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\ = ( \i_RF_W_addr[2]~input_o\ & ( \i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & !\i_RF_W_addr[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datae => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\);

-- Location: FF_X47_Y3_N50
\u_REGISTER_FILE|u_R5|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[0]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(0));

-- Location: LABCELL_X51_Y4_N3
\u_REGISTER_FILE|u_DEMUX|o_S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\ = ( !\i_RF_W_addr[2]~input_o\ & ( !\i_RF_W_addr[1]~input_o\ & ( (!\i_RF_W_addr[3]~input_o\ & (\i_RF_W_addr[0]~input_o\ & \i_RF_W_wr~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_W_addr[0]~input_o\,
	datac => \ALT_INV_i_RF_W_wr~input_o\,
	datae => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[1]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\);

-- Location: FF_X47_Y3_N26
\u_REGISTER_FILE|u_R1|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(0));

-- Location: LABCELL_X46_Y3_N15
\u_REGISTER_FILE|u_R3|r_STATE[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R3|r_STATE[0]~feeder_combout\ = ( \u_MUX|o_Q[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[0]~0_combout\,
	combout => \u_REGISTER_FILE|u_R3|r_STATE[0]~feeder_combout\);

-- Location: LABCELL_X51_Y4_N15
\u_REGISTER_FILE|u_DEMUX|o_S3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\ = ( !\i_RF_W_addr[2]~input_o\ & ( \i_RF_W_addr[1]~input_o\ & ( (!\i_RF_W_addr[3]~input_o\ & (\i_RF_W_addr[0]~input_o\ & \i_RF_W_wr~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_W_addr[0]~input_o\,
	datac => \ALT_INV_i_RF_W_wr~input_o\,
	datae => \ALT_INV_i_RF_W_addr[2]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[1]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\);

-- Location: FF_X46_Y3_N17
\u_REGISTER_FILE|u_R3|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R3|r_STATE[0]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(0));

-- Location: MLABCELL_X47_Y3_N24
\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ = ( \u_REGISTER_FILE|u_R1|r_STATE\(0) & ( \u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(0)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R7|r_STATE\(0)))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(0) & ( \u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R5|r_STATE\(0) & \i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (((!\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(0)))) ) ) ) # ( \u_REGISTER_FILE|u_R1|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(0))))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(0) & ((\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(0)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(0),
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(0),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\);

-- Location: LABCELL_X51_Y4_N48
\u_REGISTER_FILE|u_DEMUX|o_S13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\ = ( \i_RF_W_addr[0]~input_o\ & ( (!\i_RF_W_addr[1]~input_o\ & (\i_RF_W_addr[2]~input_o\ & (\i_RF_W_addr[3]~input_o\ & \i_RF_W_wr~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_W_addr[3]~input_o\,
	datad => \ALT_INV_i_RF_W_wr~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\);

-- Location: FF_X47_Y1_N32
\u_REGISTER_FILE|u_R13|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(0));

-- Location: MLABCELL_X47_Y1_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ & ( \u_REGISTER_FILE|u_R13|r_STATE\(0) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ & ( \u_REGISTER_FILE|u_R13|r_STATE\(0) & ( 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ & ( !\u_REGISTER_FILE|u_R13|r_STATE\(0) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~0_combout\ & ( !\u_REGISTER_FILE|u_R13|r_STATE\(0) & ( (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(0),
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datac => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(0),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~0_combout\,
	dataf => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\);

-- Location: MLABCELL_X47_Y1_N36
\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~4_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\)) # (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\)))) 
-- # (\i_RF_RQ_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~1_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~3_combout\)) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datab => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~3_combout\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~2_combout\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[0]~1_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~4_combout\);

-- Location: IOIBUF_X40_Y0_N1
\i_RF_RQ_rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RQ_rd,
	o => \i_RF_RQ_rd~input_o\);

-- Location: FF_X47_Y1_N37
\u_REGISTER_FILE|u_RQ|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[0]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(0));

-- Location: LABCELL_X45_Y1_N0
\u_ALU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~1_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(0) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(0) ) + ( !VCC ))
-- \u_ALU|Add0~2\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(0) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(0),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(0),
	cin => GND,
	sumout => \u_ALU|Add0~1_sumout\,
	cout => \u_ALU|Add0~2\);

-- Location: IOIBUF_X62_Y0_N1
\i_ALU_s0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ALU_s0,
	o => \i_ALU_s0~input_o\);

-- Location: FF_X45_Y1_N2
\u_ALU|w_o_ADD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~1_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(0));

-- Location: LABCELL_X50_Y1_N21
\u_MUX|o_Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[0]~0_combout\ = ( \i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(0) ) ) # ( !\i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(0) & ( \i_R_DATA[0]~input_o\ ) ) ) # ( !\i_RF_s~input_o\ & ( !\u_ALU|w_o_ADD\(0) & ( \i_R_DATA[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_R_DATA[0]~input_o\,
	datae => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(0),
	combout => \u_MUX|o_Q[0]~0_combout\);

-- Location: LABCELL_X51_Y4_N39
\u_REGISTER_FILE|u_DEMUX|o_S14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\ = ( !\i_RF_W_addr[0]~input_o\ & ( (\i_RF_W_addr[1]~input_o\ & (\i_RF_W_wr~input_o\ & (\i_RF_W_addr[2]~input_o\ & \i_RF_W_addr[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_W_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_W_wr~input_o\,
	datac => \ALT_INV_i_RF_W_addr[2]~input_o\,
	datad => \ALT_INV_i_RF_W_addr[3]~input_o\,
	dataf => \ALT_INV_i_RF_W_addr[0]~input_o\,
	combout => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\);

-- Location: FF_X47_Y4_N32
\u_REGISTER_FILE|u_R14|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[0]~0_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(0));

-- Location: IOIBUF_X50_Y0_N41
\i_RF_RP_addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RP_addr(2),
	o => \i_RF_RP_addr[2]~input_o\);

-- Location: MLABCELL_X47_Y4_N27
\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(0) & ( \u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(0)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R14|r_STATE\(0)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(0) & ( \u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RP_addr[3]~input_o\ & (((\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(0)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(0))))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (!\i_RF_RP_addr[3]~input_o\ & 
-- (((!\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(0)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(0) & ( 
-- !\u_REGISTER_FILE|u_R6|r_STATE\(0) & ( (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(0)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(0),
	datac => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(0),
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\);

-- Location: IOIBUF_X50_Y0_N92
\i_RF_RP_addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RP_addr(1),
	o => \i_RF_RP_addr[1]~input_o\);

-- Location: LABCELL_X50_Y1_N0
\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(0) & ( \u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(0)))) # (\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R12|r_STATE\(0)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(0) & ( \u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(0))))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(0)))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(0) & ( (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(0))))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R12|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(0) & ( 
-- (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(0)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(0),
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(0),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\);

-- Location: MLABCELL_X47_Y1_N0
\u_REGISTER_FILE|u_RP|r_STATE[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ = ( \i_RF_RP_addr[3]~input_o\ & ( (!\i_RF_RP_addr[2]~input_o\) # (\i_RF_RP_addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	dataf => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	combout => \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\);

-- Location: LABCELL_X43_Y3_N42
\u_REGISTER_FILE|u_RP|r_STATE[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ = ( \i_RF_RP_addr[2]~input_o\ & ( (\i_RF_RP_addr[3]~input_o\ & !\i_RF_RP_addr[1]~input_o\) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( (\i_RF_RP_addr[3]~input_o\ & \i_RF_RP_addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	combout => \u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\);

-- Location: MLABCELL_X47_Y3_N30
\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(0) & ( \u_REGISTER_FILE|u_R3|r_STATE\(0) & ( ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(0))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R5|r_STATE\(0))))) # (\i_RF_RP_addr[1]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(0) & ( \u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(0))) 
-- # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(0)))))) # (\i_RF_RP_addr[1]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(0) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RP_addr[1]~input_o\ & 
-- ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(0))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(0)))))) # (\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(0) & ( 
-- !\u_REGISTER_FILE|u_R3|r_STATE\(0) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(0))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(0),
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(0),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(0),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\);

-- Location: MLABCELL_X47_Y1_N30
\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(0) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(0) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(0) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(0) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~0_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(0))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(0),
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(0),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(0),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~0_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\);

-- Location: LABCELL_X46_Y1_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~4_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\)) # (\i_RF_RP_addr[0]~input_o\) ) 
-- ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\ & \i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~3_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~1_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[0]~2_combout\ & \i_RF_RP_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101001010101010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~2_combout\,
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~3_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[0]~1_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~4_combout\);

-- Location: IOIBUF_X40_Y0_N18
\i_RF_RP_rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RF_RP_rd,
	o => \i_RF_RP_rd~input_o\);

-- Location: FF_X46_Y1_N41
\u_REGISTER_FILE|u_RP|r_STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[0]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(0));

-- Location: IOIBUF_X50_Y81_N58
\i_R_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(1),
	o => \i_R_DATA[1]~input_o\);

-- Location: FF_X50_Y1_N8
\u_REGISTER_FILE|u_R4|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(1));

-- Location: FF_X50_Y1_N50
\u_REGISTER_FILE|u_R12|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(1));

-- Location: FF_X50_Y1_N5
\u_REGISTER_FILE|u_R8|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(1));

-- Location: LABCELL_X51_Y1_N45
\u_REGISTER_FILE|u_R0|r_STATE[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[1]~feeder_combout\ = ( \u_MUX|o_Q[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[1]~1_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[1]~feeder_combout\);

-- Location: FF_X51_Y1_N47
\u_REGISTER_FILE|u_R0|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[1]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(1));

-- Location: LABCELL_X50_Y1_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(1) & ( \u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(1) & ( \u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[3]~input_o\)) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(1)))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[3]~input_o\)) 
-- # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(1)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(1) 
-- & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(1),
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(1),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\);

-- Location: FF_X48_Y1_N38
\u_REGISTER_FILE|u_R7|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(1));

-- Location: FF_X47_Y1_N26
\u_REGISTER_FILE|u_R3|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(1));

-- Location: MLABCELL_X47_Y3_N51
\u_REGISTER_FILE|u_R5|r_STATE[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[1]~feeder_combout\ = ( \u_MUX|o_Q[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[1]~1_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[1]~feeder_combout\);

-- Location: FF_X47_Y3_N52
\u_REGISTER_FILE|u_R5|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[1]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(1));

-- Location: FF_X47_Y3_N11
\u_REGISTER_FILE|u_R1|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(1));

-- Location: MLABCELL_X47_Y1_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\ = ( \u_REGISTER_FILE|u_R5|r_STATE\(1) & ( \u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RQ_addr[1]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(1)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R7|r_STATE\(1)))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(1) & ( \u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(1)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) ) # ( \u_REGISTER_FILE|u_R5|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RQ_addr[1]~input_o\ & 
-- (((\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(1)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(1)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(1),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(1),
	datae => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\);

-- Location: FF_X47_Y1_N44
\u_REGISTER_FILE|u_R13|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(1));

-- Location: MLABCELL_X47_Y2_N27
\u_REGISTER_FILE|u_R15|r_STATE[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[1]~feeder_combout\ = ( \u_MUX|o_Q[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[1]~1_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[1]~feeder_combout\);

-- Location: FF_X47_Y2_N29
\u_REGISTER_FILE|u_R15|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[1]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(1));

-- Location: FF_X48_Y1_N35
\u_REGISTER_FILE|u_R11|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(1));

-- Location: MLABCELL_X47_Y1_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ = ( \u_REGISTER_FILE|u_R15|r_STATE\(1) & ( \u_REGISTER_FILE|u_R11|r_STATE\(1) & ( ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\)) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(1))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(1) & ( \u_REGISTER_FILE|u_R11|r_STATE\(1) & ( 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(1))))) ) ) ) # ( \u_REGISTER_FILE|u_R15|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R11|r_STATE\(1) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(1) & !\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(1) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~5_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~5_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(1),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datae => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\);

-- Location: LABCELL_X45_Y4_N51
\u_REGISTER_FILE|u_R10|r_STATE[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[1]~feeder_combout\ = ( \u_MUX|o_Q[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[1]~1_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[1]~feeder_combout\);

-- Location: FF_X45_Y4_N53
\u_REGISTER_FILE|u_R10|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[1]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(1));

-- Location: FF_X46_Y4_N5
\u_REGISTER_FILE|u_R6|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(1));

-- Location: FF_X46_Y4_N35
\u_REGISTER_FILE|u_R14|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(1));

-- Location: LABCELL_X46_Y4_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(1) & ( \u_REGISTER_FILE|u_R14|r_STATE\(1) & ( ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(1))))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(1) & ( \u_REGISTER_FILE|u_R14|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(1)))))) # (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(1)))))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (((!\i_RF_RQ_addr[3]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(1) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(1))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(1),
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(1),
	datad => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\);

-- Location: LABCELL_X46_Y1_N42
\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~9_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ & ( ((\i_RF_RQ_addr[0]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\)) # (\i_RF_RQ_addr[1]~input_o\) ) ) 
-- ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~6_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~7_combout\ & ( (!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~8_combout\ & !\i_RF_RQ_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010101111111101011111000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~8_combout\,
	datad => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~6_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[1]~7_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~9_combout\);

-- Location: FF_X46_Y1_N44
\u_REGISTER_FILE|u_RQ|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[1]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(1));

-- Location: LABCELL_X45_Y1_N3
\u_ALU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~5_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(1) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(1) ) + ( \u_ALU|Add0~2\ ))
-- \u_ALU|Add0~6\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(1) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(1) ) + ( \u_ALU|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(1),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(1),
	cin => \u_ALU|Add0~2\,
	sumout => \u_ALU|Add0~5_sumout\,
	cout => \u_ALU|Add0~6\);

-- Location: FF_X45_Y1_N4
\u_ALU|w_o_ADD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~5_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(1));

-- Location: LABCELL_X48_Y1_N45
\u_MUX|o_Q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[1]~1_combout\ = ( \u_ALU|w_o_ADD\(1) & ( (\i_RF_s~input_o\) # (\i_R_DATA[1]~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(1) & ( (\i_R_DATA[1]~input_o\ & !\i_RF_s~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_R_DATA[1]~input_o\,
	datad => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(1),
	combout => \u_MUX|o_Q[1]~1_combout\);

-- Location: FF_X46_Y4_N19
\u_REGISTER_FILE|u_R2|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[1]~1_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(1));

-- Location: MLABCELL_X47_Y4_N48
\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(1) & ( \u_REGISTER_FILE|u_R10|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R2|r_STATE\(1)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (((!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(1) & ( \u_REGISTER_FILE|u_R10|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(1)))) # (\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(1))))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R2|r_STATE\(1) & (!\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(1) & (!\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(1),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(1),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\);

-- Location: LABCELL_X50_Y1_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(1) & ( \u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(1)))) # (\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R12|r_STATE\(1)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(1) & ( \u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(1)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(1))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(1)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(1) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(1)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(1),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(1),
	datad => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\);

-- Location: MLABCELL_X47_Y1_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(1) & ( \u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(1))) # (\i_RF_RP_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(1) & ( \u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R5|r_STATE\(1))))) # 
-- (\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (!\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(1)))) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(1) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(1) & ( (\i_RF_RP_addr[2]~input_o\ 
-- & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(1))) # (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(1),
	datad => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(1),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(1),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\);

-- Location: MLABCELL_X47_Y1_N42
\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(1) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(1))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(1) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)) # (\u_REGISTER_FILE|u_R15|r_STATE\(1)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_R11|r_STATE\(1) & 
-- \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(1) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(1) & 
-- ((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # (\u_REGISTER_FILE|u_R11|r_STATE\(1))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(1) & ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~5_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(1))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111001100110100011111001100010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(1),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datac => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(1),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(1),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~5_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\);

-- Location: LABCELL_X45_Y1_N48
\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~9_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\) # (\i_RF_RP_addr[0]~input_o\)) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\) ) 
-- ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\ & \i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~8_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~6_combout\ & ( (\u_REGISTER_FILE|u_MUX_RP|o_Q[1]~7_combout\ & (\i_RF_RP_addr[1]~input_o\ & !\i_RF_RP_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100110000000000000011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~7_combout\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datad => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~8_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[1]~6_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~9_combout\);

-- Location: FF_X45_Y1_N50
\u_REGISTER_FILE|u_RP|r_STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[1]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(1));

-- Location: IOIBUF_X54_Y0_N35
\i_R_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(2),
	o => \i_R_DATA[2]~input_o\);

-- Location: LABCELL_X48_Y4_N24
\u_REGISTER_FILE|u_R10|r_STATE[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[2]~feeder_combout\ = ( \u_MUX|o_Q[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[2]~2_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[2]~feeder_combout\);

-- Location: FF_X48_Y4_N25
\u_REGISTER_FILE|u_R10|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[2]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(2));

-- Location: FF_X47_Y4_N38
\u_REGISTER_FILE|u_R14|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(2));

-- Location: FF_X47_Y4_N11
\u_REGISTER_FILE|u_R6|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(2));

-- Location: MLABCELL_X47_Y4_N39
\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\ = ( \u_REGISTER_FILE|u_R14|r_STATE\(2) & ( \u_REGISTER_FILE|u_R6|r_STATE\(2) & ( ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(2)))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(2)))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(2) & ( \u_REGISTER_FILE|u_R6|r_STATE\(2) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R2|r_STATE\(2)) # 
-- (\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(2) & (!\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( \u_REGISTER_FILE|u_R14|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(2) & ( (!\i_RF_RQ_addr[3]~input_o\ & 
-- (((!\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R2|r_STATE\(2))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R10|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(2) & ( 
-- !\u_REGISTER_FILE|u_R6|r_STATE\(2) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(2)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(2),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\);

-- Location: FF_X50_Y1_N14
\u_REGISTER_FILE|u_R4|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(2));

-- Location: FF_X50_Y1_N20
\u_REGISTER_FILE|u_R12|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(2));

-- Location: FF_X50_Y1_N56
\u_REGISTER_FILE|u_R8|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(2));

-- Location: FF_X51_Y1_N26
\u_REGISTER_FILE|u_R0|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(2));

-- Location: LABCELL_X50_Y1_N15
\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(2) & ( \u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(2))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(2))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(2) & ( \u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[3]~input_o\)) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(2))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(2)))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[3]~input_o\)) 
-- # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(2))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(2)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(2) 
-- & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(2))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(2),
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\);

-- Location: FF_X47_Y1_N14
\u_REGISTER_FILE|u_R13|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(2));

-- Location: FF_X47_Y2_N50
\u_REGISTER_FILE|u_R15|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(2));

-- Location: FF_X48_Y1_N31
\u_REGISTER_FILE|u_R11|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(2));

-- Location: FF_X48_Y1_N14
\u_REGISTER_FILE|u_R7|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(2));

-- Location: FF_X47_Y1_N20
\u_REGISTER_FILE|u_R3|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(2));

-- Location: MLABCELL_X47_Y3_N0
\u_REGISTER_FILE|u_R5|r_STATE[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[2]~feeder_combout\ = ( \u_MUX|o_Q[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[2]~2_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[2]~feeder_combout\);

-- Location: FF_X47_Y3_N1
\u_REGISTER_FILE|u_R5|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[2]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(2));

-- Location: FF_X47_Y2_N19
\u_REGISTER_FILE|u_R1|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(2));

-- Location: MLABCELL_X47_Y1_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ = ( \u_REGISTER_FILE|u_R5|r_STATE\(2) & ( \u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RQ_addr[1]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RQ_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R7|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(2) & ( \u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) ) # ( \u_REGISTER_FILE|u_R5|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RQ_addr[1]~input_o\ & 
-- (((\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(2) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(2),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\);

-- Location: LABCELL_X48_Y1_N30
\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(2) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(2)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(2))))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(2) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(2)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_R15|r_STATE\(2) & !\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(2) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(2) & ((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(2))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(2) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(2) & ((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(2) & !\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(2),
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(2),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~10_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\);

-- Location: LABCELL_X46_Y1_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~14_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ & ( (!\i_RF_RQ_addr[1]~input_o\) # ((\i_RF_RQ_addr[0]~input_o\) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\)) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ & ( ((\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\))) ) ) ) # 
-- ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~13_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~11_combout\ & ( (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~12_combout\ & !\i_RF_RQ_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000101011110000000000000101111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~12_combout\,
	datad => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~13_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[2]~11_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~14_combout\);

-- Location: FF_X46_Y1_N8
\u_REGISTER_FILE|u_RQ|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[2]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(2));

-- Location: LABCELL_X45_Y1_N6
\u_ALU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~9_sumout\ = SUM(( \u_REGISTER_FILE|u_RP|r_STATE\(2) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(2) ) + ( \u_ALU|Add0~6\ ))
-- \u_ALU|Add0~10\ = CARRY(( \u_REGISTER_FILE|u_RP|r_STATE\(2) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(2) ) + ( \u_ALU|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(2),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(2),
	cin => \u_ALU|Add0~6\,
	sumout => \u_ALU|Add0~9_sumout\,
	cout => \u_ALU|Add0~10\);

-- Location: FF_X45_Y1_N7
\u_ALU|w_o_ADD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~9_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(2));

-- Location: LABCELL_X51_Y1_N36
\u_MUX|o_Q[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[2]~2_combout\ = ( \u_ALU|w_o_ADD\(2) & ( (\i_RF_s~input_o\) # (\i_R_DATA[2]~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(2) & ( (\i_R_DATA[2]~input_o\ & !\i_RF_s~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_R_DATA[2]~input_o\,
	datac => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(2),
	combout => \u_MUX|o_Q[2]~2_combout\);

-- Location: FF_X46_Y4_N28
\u_REGISTER_FILE|u_R2|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[2]~2_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(2));

-- Location: MLABCELL_X47_Y4_N6
\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\ = ( \i_RF_RP_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R10|r_STATE\(2) & ( (!\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(2)) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R10|r_STATE\(2) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(2))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(2)))) ) ) ) # ( \i_RF_RP_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R10|r_STATE\(2) & ( 
-- (\u_REGISTER_FILE|u_R14|r_STATE\(2) & \i_RF_RP_addr[2]~input_o\) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R10|r_STATE\(2) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(2))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(2),
	datab => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(2),
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(2),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\);

-- Location: LABCELL_X50_Y1_N54
\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(2) & ( \u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(2)))) # (\i_RF_RP_addr[3]~input_o\ 
-- & (\u_REGISTER_FILE|u_R12|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(2) & ( \u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(2))))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(2)))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(2) & ( (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(2))))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R12|r_STATE\(2))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(2) & ( 
-- (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(2)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(2),
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\);

-- Location: MLABCELL_X47_Y1_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ = ( \u_REGISTER_FILE|u_R5|r_STATE\(2) & ( \u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RP_addr[1]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R7|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(2) & ( \u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RP_addr[1]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) ) # ( \u_REGISTER_FILE|u_R5|r_STATE\(2) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (!\i_RF_RP_addr[1]~input_o\ & 
-- (((\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(2) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(2) & ( (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(2)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(2),
	datac => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(2),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(2),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\);

-- Location: LABCELL_X48_Y1_N21
\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ = ( \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(2))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(2)) ) ) ) # ( \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(2))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(2)))) ) ) ) # ( !\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~10_combout\ & ( (\u_REGISTER_FILE|u_R13|r_STATE\(2) & 
-- \u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(2),
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(2),
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(2),
	datae => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~10_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\);

-- Location: LABCELL_X46_Y1_N48
\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~14_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ & ( (!\i_RF_RP_addr[1]~input_o\) # ((\i_RF_RP_addr[0]~input_o\) # 
-- (\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\)) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ & ( ((\i_RF_RP_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\)) # 
-- (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\))) ) ) ) # 
-- ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~13_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~11_combout\ & ( (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[2]~12_combout\ & !\i_RF_RP_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000101100001011000000011111000111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~12_combout\,
	datac => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~13_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[2]~11_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~14_combout\);

-- Location: FF_X46_Y1_N50
\u_REGISTER_FILE|u_RP|r_STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[2]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(2));

-- Location: IOIBUF_X56_Y0_N52
\i_R_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(3),
	o => \i_R_DATA[3]~input_o\);

-- Location: FF_X50_Y2_N32
\u_REGISTER_FILE|u_R4|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(3));

-- Location: FF_X50_Y2_N38
\u_REGISTER_FILE|u_R8|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(3));

-- Location: FF_X50_Y2_N2
\u_REGISTER_FILE|u_R12|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(3));

-- Location: MLABCELL_X52_Y2_N3
\u_REGISTER_FILE|u_R0|r_STATE[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[3]~feeder_combout\ = ( \u_MUX|o_Q[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[3]~3_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[3]~feeder_combout\);

-- Location: FF_X52_Y2_N5
\u_REGISTER_FILE|u_R0|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[3]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(3));

-- Location: LABCELL_X50_Y2_N33
\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(3) & ( \u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(3))))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(3))) # (\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(3) & ( \u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(3))))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(3))))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(3) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(3)))) # (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(3))) # (\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(3) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(3)))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(3),
	datad => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(3),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\);

-- Location: FF_X46_Y4_N44
\u_REGISTER_FILE|u_R14|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(3));

-- Location: FF_X46_Y4_N23
\u_REGISTER_FILE|u_R2|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(3));

-- Location: FF_X47_Y4_N53
\u_REGISTER_FILE|u_R6|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(3));

-- Location: LABCELL_X46_Y4_N30
\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(3) & ( \u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(3)))) # (\i_RF_RQ_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R14|r_STATE\(3)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(3) & ( \u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\ & \u_REGISTER_FILE|u_R10|r_STATE\(3))))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R14|r_STATE\(3)))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\) # 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(3))))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(3) & (\i_RF_RQ_addr[3]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (\i_RF_RQ_addr[3]~input_o\ & 
-- ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(3)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(3),
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(3),
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\);

-- Location: FF_X46_Y3_N31
\u_REGISTER_FILE|u_R3|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(3));

-- Location: MLABCELL_X47_Y3_N3
\u_REGISTER_FILE|u_R5|r_STATE[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[3]~feeder_combout\ = ( \u_MUX|o_Q[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[3]~3_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[3]~feeder_combout\);

-- Location: FF_X47_Y3_N4
\u_REGISTER_FILE|u_R5|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[3]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(3));

-- Location: FF_X45_Y3_N55
\u_REGISTER_FILE|u_R7|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(3));

-- Location: FF_X47_Y3_N59
\u_REGISTER_FILE|u_R1|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(3));

-- Location: LABCELL_X45_Y3_N54
\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(3) & ( \u_REGISTER_FILE|u_R1|r_STATE\(3) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # ((\u_REGISTER_FILE|u_R3|r_STATE\(3))))) # (\i_RF_RQ_addr[2]~input_o\ 
-- & (((\u_REGISTER_FILE|u_R5|r_STATE\(3))) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(3) & ( \u_REGISTER_FILE|u_R1|r_STATE\(3) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(3))))) # (\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(3))))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(3) & ( (!\i_RF_RQ_addr[2]~input_o\ 
-- & (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(3)))) # (\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R5|r_STATE\(3))) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(3) 
-- & ( (!\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(3)))) # (\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(3),
	datad => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(3),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\);

-- Location: FF_X46_Y3_N25
\u_REGISTER_FILE|u_R13|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(3));

-- Location: FF_X45_Y3_N43
\u_REGISTER_FILE|u_R11|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(3));

-- Location: FF_X47_Y2_N38
\u_REGISTER_FILE|u_R15|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[3]~3_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(3));

-- Location: LABCELL_X45_Y3_N42
\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(3) & ( \u_REGISTER_FILE|u_R15|r_STATE\(3) & ( ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\)) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(3))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(3) & ( \u_REGISTER_FILE|u_R15|r_STATE\(3) & ( 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(3)))))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R15|r_STATE\(3) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(3)))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R15|r_STATE\(3) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~15_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~15_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(3),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\);

-- Location: LABCELL_X45_Y3_N3
\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~19_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\) # (\i_RF_RQ_addr[1]~input_o\)) # (\i_RF_RQ_addr[0]~input_o\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~17_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~16_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000010101010101001010101111101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datad => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~18_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~17_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[3]~16_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~19_combout\);

-- Location: FF_X45_Y3_N4
\u_REGISTER_FILE|u_RQ|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[3]~19_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(3));

-- Location: LABCELL_X45_Y1_N9
\u_ALU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~13_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(3) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(3) ) + ( \u_ALU|Add0~10\ ))
-- \u_ALU|Add0~14\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(3) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(3) ) + ( \u_ALU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(3),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(3),
	cin => \u_ALU|Add0~10\,
	sumout => \u_ALU|Add0~13_sumout\,
	cout => \u_ALU|Add0~14\);

-- Location: FF_X45_Y1_N10
\u_ALU|w_o_ADD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~13_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(3));

-- Location: LABCELL_X45_Y2_N9
\u_MUX|o_Q[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[3]~3_combout\ = ( \u_ALU|w_o_ADD\(3) & ( (\i_RF_s~input_o\) # (\i_R_DATA[3]~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(3) & ( (\i_R_DATA[3]~input_o\ & !\i_RF_s~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_R_DATA[3]~input_o\,
	datad => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(3),
	combout => \u_MUX|o_Q[3]~3_combout\);

-- Location: LABCELL_X45_Y4_N57
\u_REGISTER_FILE|u_R10|r_STATE[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[3]~feeder_combout\ = ( \u_MUX|o_Q[3]~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[3]~3_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[3]~feeder_combout\);

-- Location: FF_X45_Y4_N58
\u_REGISTER_FILE|u_R10|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[3]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(3));

-- Location: LABCELL_X46_Y4_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(3) & ( \u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(3))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(3))))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(3) & ( \u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(3) & ((\i_RF_RP_addr[3]~input_o\)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(3))))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(3)))) # (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R14|r_STATE\(3) & \i_RF_RP_addr[3]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(3) & ( (\i_RF_RP_addr[3]~input_o\ 
-- & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(3))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(3),
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(3),
	datad => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\);

-- Location: LABCELL_X50_Y2_N42
\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(3) & ( \u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(3))) # (\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(3))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(3) & ( \u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(3))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(3)))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(3))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(3)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(3) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(3) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(3))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(3),
	datac => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(3),
	datad => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\);

-- Location: LABCELL_X46_Y3_N30
\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(3) & ( \u_REGISTER_FILE|u_R5|r_STATE\(3) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R1|r_STATE\(3))))) # (\i_RF_RP_addr[1]~input_o\ 
-- & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(3)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(3) & ( \u_REGISTER_FILE|u_R5|r_STATE\(3) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R1|r_STATE\(3))))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(3) & ((\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(3) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(3) & ( (!\i_RF_RP_addr[1]~input_o\ & 
-- (((\u_REGISTER_FILE|u_R1|r_STATE\(3) & !\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(3)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(3) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(3) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(3) & !\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(3) & ((\i_RF_RP_addr[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(3),
	datab => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(3),
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(3),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\);

-- Location: LABCELL_X46_Y3_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(3) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(3)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(3)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(3) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(3))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(3) & 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(3) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- \u_REGISTER_FILE|u_R15|r_STATE\(3))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)) # (\u_REGISTER_FILE|u_R11|r_STATE\(3)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(3) & ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~15_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R15|r_STATE\(3)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datab => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(3),
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(3),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(3),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~15_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\);

-- Location: LABCELL_X46_Y1_N57
\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~19_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\)) # 
-- (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\ & \i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~18_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~16_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[3]~17_combout\ & \i_RF_RP_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101010100000101001010101010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~17_combout\,
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~18_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[3]~16_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~19_combout\);

-- Location: FF_X46_Y1_N59
\u_REGISTER_FILE|u_RP|r_STATE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[3]~19_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(3));

-- Location: IOIBUF_X60_Y0_N52
\i_R_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(4),
	o => \i_R_DATA[4]~input_o\);

-- Location: FF_X50_Y3_N8
\u_REGISTER_FILE|u_R4|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(4));

-- Location: FF_X50_Y3_N41
\u_REGISTER_FILE|u_R12|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(4));

-- Location: LABCELL_X51_Y3_N51
\u_REGISTER_FILE|u_R0|r_STATE[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[4]~feeder_combout\ = ( \u_MUX|o_Q[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[4]~4_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[4]~feeder_combout\);

-- Location: FF_X51_Y3_N53
\u_REGISTER_FILE|u_R0|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[4]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(4));

-- Location: LABCELL_X50_Y3_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\ = ( \i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(4)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(4))) 
-- ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R4|r_STATE\(4)) ) ) ) # ( \i_RF_RQ_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R0|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R8|r_STATE\(4)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(4))) ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R0|r_STATE\(4) & ( (\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(4)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(4),
	datac => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(4),
	datae => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\);

-- Location: FF_X48_Y4_N50
\u_REGISTER_FILE|u_R6|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(4));

-- Location: FF_X48_Y4_N44
\u_REGISTER_FILE|u_R14|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(4));

-- Location: FF_X48_Y4_N58
\u_REGISTER_FILE|u_R10|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(4));

-- Location: LABCELL_X50_Y4_N51
\u_REGISTER_FILE|u_R2|r_STATE[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[4]~feeder_combout\ = ( \u_MUX|o_Q[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[4]~4_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[4]~feeder_combout\);

-- Location: FF_X50_Y4_N53
\u_REGISTER_FILE|u_R2|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[4]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(4));

-- Location: LABCELL_X48_Y4_N51
\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ = ( \i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(4)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(4))) 
-- ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R6|r_STATE\(4)) ) ) ) # ( \i_RF_RQ_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(4)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(4))) ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (\u_REGISTER_FILE|u_R6|r_STATE\(4) & \i_RF_RQ_addr[2]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(4),
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(4),
	datae => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\);

-- Location: FF_X46_Y1_N31
\u_REGISTER_FILE|u_R13|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(4));

-- Location: MLABCELL_X47_Y2_N6
\u_REGISTER_FILE|u_R15|r_STATE[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[4]~feeder_combout\ = ( \u_MUX|o_Q[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[4]~4_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[4]~feeder_combout\);

-- Location: FF_X47_Y2_N8
\u_REGISTER_FILE|u_R15|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[4]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(4));

-- Location: FF_X45_Y3_N26
\u_REGISTER_FILE|u_R11|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(4));

-- Location: FF_X43_Y3_N29
\u_REGISTER_FILE|u_R3|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(4));

-- Location: FF_X43_Y3_N47
\u_REGISTER_FILE|u_R1|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(4));

-- Location: FF_X43_Y3_N38
\u_REGISTER_FILE|u_R7|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(4));

-- Location: MLABCELL_X47_Y3_N12
\u_REGISTER_FILE|u_R5|r_STATE[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[4]~feeder_combout\ = ( \u_MUX|o_Q[4]~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[4]~4_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[4]~feeder_combout\);

-- Location: FF_X47_Y3_N13
\u_REGISTER_FILE|u_R5|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[4]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(4));

-- Location: LABCELL_X43_Y3_N36
\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(4) & ( \u_REGISTER_FILE|u_R5|r_STATE\(4) & ( ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R3|r_STATE\(4)))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(4) & ( \u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4)))) 
-- # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(4))))) # (\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(4) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(4))))) # (\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[1]~input_o\)) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(4) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(4),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(4),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\);

-- Location: LABCELL_X45_Y3_N24
\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(4) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(4))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(4)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(4) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(4))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(4) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(4) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(4))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(4)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(4) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(4))))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(4) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(4),
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(4),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(4),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~20_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\);

-- Location: LABCELL_X45_Y3_N33
\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~24_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\) # (\i_RF_RQ_addr[1]~input_o\)) # (\i_RF_RQ_addr[0]~input_o\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~22_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~21_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001010100010101001011101010111010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~23_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~22_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[4]~21_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~24_combout\);

-- Location: FF_X45_Y3_N34
\u_REGISTER_FILE|u_RQ|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[4]~24_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(4));

-- Location: LABCELL_X45_Y1_N12
\u_ALU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~17_sumout\ = SUM(( \u_REGISTER_FILE|u_RP|r_STATE\(4) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(4) ) + ( \u_ALU|Add0~14\ ))
-- \u_ALU|Add0~18\ = CARRY(( \u_REGISTER_FILE|u_RP|r_STATE\(4) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(4) ) + ( \u_ALU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(4),
	cin => \u_ALU|Add0~14\,
	sumout => \u_ALU|Add0~17_sumout\,
	cout => \u_ALU|Add0~18\);

-- Location: FF_X45_Y1_N13
\u_ALU|w_o_ADD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~17_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(4));

-- Location: LABCELL_X48_Y1_N24
\u_MUX|o_Q[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[4]~4_combout\ = ( \u_ALU|w_o_ADD\(4) & ( (\i_R_DATA[4]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(4) & ( (!\i_RF_s~input_o\ & \i_R_DATA[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_s~input_o\,
	datad => \ALT_INV_i_R_DATA[4]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(4),
	combout => \u_MUX|o_Q[4]~4_combout\);

-- Location: FF_X50_Y3_N50
\u_REGISTER_FILE|u_R8|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[4]~4_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(4));

-- Location: LABCELL_X50_Y3_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\ = ( \i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R12|r_STATE\(4) & ( (\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R4|r_STATE\(4)) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R12|r_STATE\(4) & ( (!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(4)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(4))) ) ) ) # ( \i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R12|r_STATE\(4) & ( 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(4) & !\i_RF_RP_addr[3]~input_o\) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R12|r_STATE\(4) & ( (!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(4)))) # (\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R8|r_STATE\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(4),
	datab => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(4),
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(4),
	datae => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\);

-- Location: MLABCELL_X47_Y4_N54
\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(4) & ( \u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(4))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(4))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(4) & ( \u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R10|r_STATE\(4)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(4))))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(4) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(4) & 
-- (\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(4))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(4) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(4) & ( (\i_RF_RP_addr[3]~input_o\ & 
-- ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(4))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(4),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(4),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(4),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\);

-- Location: LABCELL_X43_Y3_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(4) & ( \u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(4))) # (\i_RF_RP_addr[2]~input_o\))) # (\i_RF_RP_addr[1]~input_o\ 
-- & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(4))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(4) & ( \u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(4))) # 
-- (\i_RF_RP_addr[2]~input_o\))) # (\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(4)))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(4) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RP_addr[1]~input_o\ & 
-- (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4))))) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(4))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(4) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(4) & ( (!\i_RF_RP_addr[1]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(4))))) # (\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(4),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(4),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(4),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\);

-- Location: LABCELL_X46_Y1_N30
\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(4) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(4)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(4)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(4) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(4))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(4) & 
-- ((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(4) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(4) & 
-- \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)) # (\u_REGISTER_FILE|u_R11|r_STATE\(4)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(4) & ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~20_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R15|r_STATE\(4)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(4),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(4),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(4),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~20_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\);

-- Location: LABCELL_X46_Y1_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~24_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ & ( ((\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\)) # (\i_RF_RP_addr[0]~input_o\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\ & !\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~22_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~21_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[4]~23_combout\ & !\i_RF_RP_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010101010101001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~23_combout\,
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~22_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[4]~21_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~24_combout\);

-- Location: FF_X46_Y1_N17
\u_REGISTER_FILE|u_RP|r_STATE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[4]~24_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(4));

-- Location: IOIBUF_X62_Y0_N52
\i_R_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(5),
	o => \i_R_DATA[5]~input_o\);

-- Location: FF_X50_Y3_N14
\u_REGISTER_FILE|u_R4|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(5));

-- Location: FF_X50_Y3_N56
\u_REGISTER_FILE|u_R12|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(5));

-- Location: FF_X50_Y3_N32
\u_REGISTER_FILE|u_R8|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(5));

-- Location: LABCELL_X50_Y3_N15
\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(5) & ( \u_REGISTER_FILE|u_R8|r_STATE\(5) & ( ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(5)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(5)))) # (\i_RF_RQ_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(5) & ( \u_REGISTER_FILE|u_R8|r_STATE\(5) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(5)))) 
-- # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(5))))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R8|r_STATE\(5) & ( (!\i_RF_RQ_addr[3]~input_o\ & 
-- ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(5)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(5))))) # (\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(5) & ( 
-- !\u_REGISTER_FILE|u_R8|r_STATE\(5) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(5)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(5),
	datad => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\);

-- Location: FF_X45_Y4_N8
\u_REGISTER_FILE|u_R14|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(5));

-- Location: FF_X45_Y4_N26
\u_REGISTER_FILE|u_R6|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(5));

-- Location: LABCELL_X46_Y4_N12
\u_REGISTER_FILE|u_R2|r_STATE[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[5]~feeder_combout\ = \u_MUX|o_Q[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_MUX|ALT_INV_o_Q[5]~5_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[5]~feeder_combout\);

-- Location: FF_X46_Y4_N14
\u_REGISTER_FILE|u_R2|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[5]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(5));

-- Location: FF_X45_Y4_N50
\u_REGISTER_FILE|u_R10|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(5));

-- Location: LABCELL_X45_Y4_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(5) & ( \u_REGISTER_FILE|u_R10|r_STATE\(5) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(5)))) # (\i_RF_RQ_addr[3]~input_o\ 
-- & (\u_REGISTER_FILE|u_R14|r_STATE\(5)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(5) & ( \u_REGISTER_FILE|u_R10|r_STATE\(5) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(5))))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R14|r_STATE\(5))))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(5) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(5))))) # (\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(5)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(5) & ( (\i_RF_RQ_addr[2]~input_o\ 
-- & ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(5)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(5),
	datad => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\);

-- Location: MLABCELL_X47_Y2_N0
\u_REGISTER_FILE|u_R15|r_STATE[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[5]~feeder_combout\ = ( \u_MUX|o_Q[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[5]~5_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[5]~feeder_combout\);

-- Location: FF_X47_Y2_N2
\u_REGISTER_FILE|u_R15|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[5]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(5));

-- Location: FF_X45_Y2_N44
\u_REGISTER_FILE|u_R13|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(5));

-- Location: FF_X45_Y3_N7
\u_REGISTER_FILE|u_R11|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(5));

-- Location: MLABCELL_X47_Y3_N15
\u_REGISTER_FILE|u_R5|r_STATE[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[5]~feeder_combout\ = ( \u_MUX|o_Q[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[5]~5_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[5]~feeder_combout\);

-- Location: FF_X47_Y3_N16
\u_REGISTER_FILE|u_R5|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[5]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(5));

-- Location: FF_X47_Y3_N23
\u_REGISTER_FILE|u_R1|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(5));

-- Location: FF_X45_Y3_N19
\u_REGISTER_FILE|u_R7|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(5));

-- Location: FF_X46_Y3_N7
\u_REGISTER_FILE|u_R3|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[5]~5_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(5));

-- Location: LABCELL_X45_Y3_N18
\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(5) & ( \u_REGISTER_FILE|u_R3|r_STATE\(5) & ( ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(5)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(5)))) # (\i_RF_RQ_addr[1]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(5) & ( \u_REGISTER_FILE|u_R3|r_STATE\(5) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(5))) # (\i_RF_RQ_addr[1]~input_o\))) 
-- # (\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(5)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(5) & ( (!\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R1|r_STATE\(5))))) # (\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R5|r_STATE\(5))) # (\i_RF_RQ_addr[1]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(5) & ( 
-- (!\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(5)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(5),
	datad => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\);

-- Location: LABCELL_X45_Y3_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(5) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(5))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R15|r_STATE\(5)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(5) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R13|r_STATE\(5))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(5) & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(5) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_R13|r_STATE\(5) & \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R15|r_STATE\(5)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(5) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(5) & \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(5) & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(5),
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(5),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~25_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\);

-- Location: LABCELL_X45_Y3_N12
\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~29_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ & ( ((\i_RF_RQ_addr[1]~input_o\) # (\i_RF_RQ_addr[0]~input_o\)) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\ & !\i_RF_RQ_addr[1]~input_o\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~27_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~26_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~28_combout\ & (!\i_RF_RQ_addr[0]~input_o\ & !\i_RF_RQ_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011111000011110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~28_combout\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~27_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[5]~26_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~29_combout\);

-- Location: FF_X45_Y3_N14
\u_REGISTER_FILE|u_RQ|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[5]~29_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(5));

-- Location: LABCELL_X45_Y1_N15
\u_ALU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~21_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(5) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(5) ) + ( \u_ALU|Add0~18\ ))
-- \u_ALU|Add0~22\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(5) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(5) ) + ( \u_ALU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(5),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(5),
	cin => \u_ALU|Add0~18\,
	sumout => \u_ALU|Add0~21_sumout\,
	cout => \u_ALU|Add0~22\);

-- Location: FF_X45_Y1_N16
\u_ALU|w_o_ADD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~21_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(5));

-- Location: LABCELL_X45_Y2_N45
\u_MUX|o_Q[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[5]~5_combout\ = ( \i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(5) ) ) # ( !\i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(5) & ( \i_R_DATA[5]~input_o\ ) ) ) # ( !\i_RF_s~input_o\ & ( !\u_ALU|w_o_ADD\(5) & ( \i_R_DATA[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_R_DATA[5]~input_o\,
	datae => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(5),
	combout => \u_MUX|o_Q[5]~5_combout\);

-- Location: LABCELL_X51_Y3_N30
\u_REGISTER_FILE|u_R0|r_STATE[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[5]~feeder_combout\ = ( \u_MUX|o_Q[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[5]~5_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[5]~feeder_combout\);

-- Location: FF_X51_Y3_N32
\u_REGISTER_FILE|u_R0|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[5]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(5));

-- Location: LABCELL_X50_Y3_N33
\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\ = ( \i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R4|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R12|r_STATE\(5)) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R4|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(5))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(5)))) ) ) ) # ( \i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R4|r_STATE\(5) & ( 
-- (\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R12|r_STATE\(5)) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R4|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(5))) # (\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R8|r_STATE\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(5),
	datab => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(5),
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(5),
	datae => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\);

-- Location: LABCELL_X46_Y3_N6
\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(5) & ( \u_REGISTER_FILE|u_R5|r_STATE\(5) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[1]~input_o\)) # (\u_REGISTER_FILE|u_R1|r_STATE\(5)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_R7|r_STATE\(5))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(5) & ( \u_REGISTER_FILE|u_R5|r_STATE\(5) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(5) & 
-- (!\i_RF_RP_addr[1]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_R7|r_STATE\(5))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(5) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((\i_RF_RP_addr[1]~input_o\)) # (\u_REGISTER_FILE|u_R1|r_STATE\(5)))) # (\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[1]~input_o\ & \u_REGISTER_FILE|u_R7|r_STATE\(5))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(5) 
-- & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(5) & (!\i_RF_RP_addr[1]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[1]~input_o\ & \u_REGISTER_FILE|u_R7|r_STATE\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(5),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datad => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\);

-- Location: LABCELL_X46_Y3_N3
\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ = ( \u_REGISTER_FILE|u_R15|r_STATE\(5) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(5))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(5))))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(5) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # ((\u_REGISTER_FILE|u_R13|r_STATE\(5))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(5))))) ) ) ) # ( \u_REGISTER_FILE|u_R15|r_STATE\(5) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(5)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # ((\u_REGISTER_FILE|u_R11|r_STATE\(5))))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(5) & ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~25_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(5))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datac => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(5),
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~25_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\);

-- Location: LABCELL_X45_Y4_N27
\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ = ( \u_REGISTER_FILE|u_R2|r_STATE\(5) & ( \u_REGISTER_FILE|u_R14|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R6|r_STATE\(5)))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R10|r_STATE\(5)) # (\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(5) & ( \u_REGISTER_FILE|u_R14|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(5) & 
-- (\i_RF_RP_addr[2]~input_o\))) # (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R10|r_STATE\(5)) # (\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R2|r_STATE\(5) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & 
-- (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R6|r_STATE\(5)))) # (\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\ & \u_REGISTER_FILE|u_R10|r_STATE\(5))))) ) ) ) # ( !\u_REGISTER_FILE|u_R2|r_STATE\(5) & ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(5) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(5) & (\i_RF_RP_addr[2]~input_o\))) # (\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\ & \u_REGISTER_FILE|u_R10|r_STATE\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(5),
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(5),
	datae => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(5),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(5),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\);

-- Location: LABCELL_X46_Y1_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~29_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\) # (\i_RF_RP_addr[0]~input_o\)) # (\i_RF_RP_addr[1]~input_o\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\) # (\i_RF_RP_addr[1]~input_o\))) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~26_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[5]~27_combout\ & ( (!\i_RF_RP_addr[1]~input_o\ & (!\i_RF_RP_addr[0]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000001110110011101101001100010011000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~28_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~26_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[5]~27_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~29_combout\);

-- Location: FF_X46_Y1_N26
\u_REGISTER_FILE|u_RP|r_STATE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[5]~29_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(5));

-- Location: IOIBUF_X56_Y0_N18
\i_R_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(6),
	o => \i_R_DATA[6]~input_o\);

-- Location: LABCELL_X46_Y4_N21
\u_REGISTER_FILE|u_R2|r_STATE[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[6]~feeder_combout\ = \u_MUX|o_Q[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_MUX|ALT_INV_o_Q[6]~6_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[6]~feeder_combout\);

-- Location: FF_X46_Y4_N22
\u_REGISTER_FILE|u_R2|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[6]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(6));

-- Location: FF_X45_Y4_N2
\u_REGISTER_FILE|u_R6|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(6));

-- Location: LABCELL_X45_Y4_N54
\u_REGISTER_FILE|u_R10|r_STATE[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[6]~feeder_combout\ = \u_MUX|o_Q[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_MUX|ALT_INV_o_Q[6]~6_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[6]~feeder_combout\);

-- Location: FF_X45_Y4_N56
\u_REGISTER_FILE|u_R10|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[6]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(6));

-- Location: FF_X45_Y4_N32
\u_REGISTER_FILE|u_R14|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(6));

-- Location: LABCELL_X45_Y4_N33
\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(6) & ( \u_REGISTER_FILE|u_R14|r_STATE\(6) & ( ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(6))))) # (\i_RF_RQ_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(6) & ( \u_REGISTER_FILE|u_R14|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(6) & ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- (((!\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(6),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\);

-- Location: MLABCELL_X52_Y2_N18
\u_REGISTER_FILE|u_R0|r_STATE[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[6]~feeder_combout\ = ( \u_MUX|o_Q[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[6]~6_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[6]~feeder_combout\);

-- Location: FF_X52_Y2_N20
\u_REGISTER_FILE|u_R0|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[6]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(6));

-- Location: FF_X51_Y2_N29
\u_REGISTER_FILE|u_R12|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(6));

-- Location: FF_X51_Y2_N50
\u_REGISTER_FILE|u_R8|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(6));

-- Location: LABCELL_X51_Y2_N3
\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(6) & ( \u_REGISTER_FILE|u_R8|r_STATE\(6) & ( ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(6))))) # (\i_RF_RQ_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(6) & ( \u_REGISTER_FILE|u_R8|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(6))) 
-- # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(6)))))) # (\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R8|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & 
-- ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(6)))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(6) & ( 
-- !\u_REGISTER_FILE|u_R8|r_STATE\(6) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R0|r_STATE\(6))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(6),
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(6),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\);

-- Location: FF_X45_Y2_N38
\u_REGISTER_FILE|u_R3|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(6));

-- Location: FF_X43_Y2_N52
\u_REGISTER_FILE|u_R1|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(6));

-- Location: FF_X46_Y2_N55
\u_REGISTER_FILE|u_R7|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(6));

-- Location: LABCELL_X42_Y3_N0
\u_REGISTER_FILE|u_R5|r_STATE[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[6]~feeder_combout\ = ( \u_MUX|o_Q[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[6]~6_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[6]~feeder_combout\);

-- Location: FF_X42_Y3_N1
\u_REGISTER_FILE|u_R5|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[6]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(6));

-- Location: LABCELL_X46_Y2_N54
\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(6) & ( \u_REGISTER_FILE|u_R5|r_STATE\(6) & ( ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(6)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R3|r_STATE\(6)))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(6) & ( \u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(6)))) 
-- # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(6))))) # (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[1]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(6)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(6))))) # (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[1]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(6) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(6)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(6),
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(6),
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\);

-- Location: FF_X45_Y2_N19
\u_REGISTER_FILE|u_R13|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(6));

-- Location: FF_X46_Y2_N19
\u_REGISTER_FILE|u_R11|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(6));

-- Location: MLABCELL_X47_Y2_N39
\u_REGISTER_FILE|u_R15|r_STATE[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[6]~feeder_combout\ = ( \u_MUX|o_Q[6]~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[6]~6_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[6]~feeder_combout\);

-- Location: FF_X47_Y2_N41
\u_REGISTER_FILE|u_R15|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[6]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(6));

-- Location: LABCELL_X46_Y2_N18
\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(6) & ( \u_REGISTER_FILE|u_R15|r_STATE\(6) & ( ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\)) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(6))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(6) & ( \u_REGISTER_FILE|u_R15|r_STATE\(6) & ( 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(6))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R15|r_STATE\(6) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(6))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(6) & ( 
-- !\u_REGISTER_FILE|u_R15|r_STATE\(6) & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~30_combout\)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~30_combout\,
	datad => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\);

-- Location: LABCELL_X46_Y2_N0
\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~34_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\ & \i_RF_RQ_addr[1]~input_o\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~33_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~31_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~32_combout\ & \i_RF_RQ_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010101010100010001001010101011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datab => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~32_combout\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~33_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[6]~31_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~34_combout\);

-- Location: FF_X46_Y2_N2
\u_REGISTER_FILE|u_RQ|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[6]~34_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(6));

-- Location: LABCELL_X45_Y1_N18
\u_ALU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~25_sumout\ = SUM(( \u_REGISTER_FILE|u_RP|r_STATE\(6) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(6) ) + ( \u_ALU|Add0~22\ ))
-- \u_ALU|Add0~26\ = CARRY(( \u_REGISTER_FILE|u_RP|r_STATE\(6) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(6) ) + ( \u_ALU|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(6),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(6),
	cin => \u_ALU|Add0~22\,
	sumout => \u_ALU|Add0~25_sumout\,
	cout => \u_ALU|Add0~26\);

-- Location: FF_X45_Y1_N19
\u_ALU|w_o_ADD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~25_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(6));

-- Location: LABCELL_X45_Y2_N39
\u_MUX|o_Q[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[6]~6_combout\ = ( \i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(6) ) ) # ( !\i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(6) & ( \i_R_DATA[6]~input_o\ ) ) ) # ( !\i_RF_s~input_o\ & ( !\u_ALU|w_o_ADD\(6) & ( \i_R_DATA[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_R_DATA[6]~input_o\,
	datae => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(6),
	combout => \u_MUX|o_Q[6]~6_combout\);

-- Location: FF_X51_Y2_N32
\u_REGISTER_FILE|u_R4|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[6]~6_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(6));

-- Location: LABCELL_X51_Y2_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(6) & ( \u_REGISTER_FILE|u_R0|r_STATE\(6) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(6))))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(6) & ( \u_REGISTER_FILE|u_R0|r_STATE\(6) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(6))))) # (\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(6))))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(6) & ( 
-- (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(6)))) # (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(6) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(6) & ( (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(6)))) # (\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(6),
	datad => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\);

-- Location: LABCELL_X45_Y4_N3
\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(6) & ( \u_REGISTER_FILE|u_R14|r_STATE\(6) & ( ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(6))))) # (\i_RF_RP_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(6) & ( \u_REGISTER_FILE|u_R14|r_STATE\(6) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) # (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(6) & 
-- ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) # (\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\)) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(6) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(6))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(6),
	datad => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\);

-- Location: LABCELL_X46_Y2_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ = ( \u_REGISTER_FILE|u_R1|r_STATE\(6) & ( \u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RP_addr[1]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(6)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R7|r_STATE\(6)))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(6) & ( \u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\)) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(6)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(6))))) ) ) ) # ( \u_REGISTER_FILE|u_R1|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(6) & ( (!\i_RF_RP_addr[1]~input_o\ & (!\i_RF_RP_addr[2]~input_o\)) 
-- # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(6)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(6))))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(6) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(6) 
-- & ( (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(6)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(6),
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(6),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\);

-- Location: LABCELL_X45_Y2_N18
\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(6) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(6))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(6))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(6) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(6))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(6)))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(6) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(6))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(6)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(6) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~30_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(6))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(6),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(6),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(6),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~30_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\);

-- Location: LABCELL_X45_Y2_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~34_combout\ = ( \i_RF_RP_addr[1]~input_o\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ & ( (\i_RF_RP_addr[0]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\) ) ) ) # ( !\i_RF_RP_addr[1]~input_o\ & ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ & ( (\i_RF_RP_addr[0]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\) ) ) ) # ( \i_RF_RP_addr[1]~input_o\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ & ( 
-- (\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~32_combout\ & !\i_RF_RP_addr[0]~input_o\) ) ) ) # ( !\i_RF_RP_addr[1]~input_o\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~31_combout\ & ( (\u_REGISTER_FILE|u_MUX_RP|o_Q[6]~33_combout\ & !\i_RF_RP_addr[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000001011111010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~33_combout\,
	datab => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~32_combout\,
	datac => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datae => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[6]~31_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~34_combout\);

-- Location: FF_X45_Y2_N26
\u_REGISTER_FILE|u_RP|r_STATE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[6]~34_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(6));

-- Location: IOIBUF_X54_Y0_N1
\i_R_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(7),
	o => \i_R_DATA[7]~input_o\);

-- Location: FF_X45_Y4_N44
\u_REGISTER_FILE|u_R14|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(7));

-- Location: FF_X45_Y4_N59
\u_REGISTER_FILE|u_R10|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(7));

-- Location: LABCELL_X46_Y4_N18
\u_REGISTER_FILE|u_R2|r_STATE[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[7]~feeder_combout\ = ( \u_MUX|o_Q[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[7]~7_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[7]~feeder_combout\);

-- Location: FF_X46_Y4_N20
\u_REGISTER_FILE|u_R2|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[7]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(7));

-- Location: LABCELL_X45_Y4_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(7) & ( \u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(7))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(7) & ( \u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R6|r_STATE\(7)))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R14|r_STATE\(7) & \i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7) & 
-- ((\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(7))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(7),
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(7),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\);

-- Location: MLABCELL_X47_Y2_N54
\u_REGISTER_FILE|u_R15|r_STATE[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[7]~feeder_combout\ = ( \u_MUX|o_Q[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[7]~7_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[7]~feeder_combout\);

-- Location: FF_X47_Y2_N56
\u_REGISTER_FILE|u_R15|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[7]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(7));

-- Location: FF_X46_Y3_N19
\u_REGISTER_FILE|u_R13|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(7));

-- Location: FF_X45_Y3_N37
\u_REGISTER_FILE|u_R11|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(7));

-- Location: FF_X46_Y3_N43
\u_REGISTER_FILE|u_R3|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(7));

-- Location: FF_X47_Y3_N53
\u_REGISTER_FILE|u_R5|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(7));

-- Location: FF_X46_Y3_N49
\u_REGISTER_FILE|u_R7|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(7));

-- Location: LABCELL_X43_Y3_N21
\u_REGISTER_FILE|u_R1|r_STATE[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R1|r_STATE[7]~feeder_combout\ = ( \u_MUX|o_Q[7]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[7]~7_combout\,
	combout => \u_REGISTER_FILE|u_R1|r_STATE[7]~feeder_combout\);

-- Location: FF_X43_Y3_N22
\u_REGISTER_FILE|u_R1|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R1|r_STATE[7]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(7));

-- Location: LABCELL_X46_Y3_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(7) & ( \u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R5|r_STATE\(7))))) # (\i_RF_RQ_addr[1]~input_o\ 
-- & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R3|r_STATE\(7)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(7) & ( \u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(7))))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(7) & ((!\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RQ_addr[1]~input_o\ 
-- & (((\u_REGISTER_FILE|u_R5|r_STATE\(7) & \i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R3|r_STATE\(7)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(7) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R5|r_STATE\(7) & \i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(7) & ((!\i_RF_RQ_addr[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(7),
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(7),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\);

-- Location: LABCELL_X45_Y3_N36
\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(7) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(7))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(7))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(7) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # ((\u_REGISTER_FILE|u_R13|r_STATE\(7))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(7)))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(7) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(7))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(7))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(7) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(7))))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(7),
	datad => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(7),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~35_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\);

-- Location: FF_X51_Y2_N2
\u_REGISTER_FILE|u_R12|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(7));

-- Location: FF_X51_Y2_N44
\u_REGISTER_FILE|u_R8|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(7));

-- Location: FF_X52_Y2_N14
\u_REGISTER_FILE|u_R0|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(7));

-- Location: FF_X51_Y2_N35
\u_REGISTER_FILE|u_R4|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(7));

-- Location: LABCELL_X51_Y2_N12
\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ = ( \i_RF_RQ_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R4|r_STATE\(7) & ( (!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R12|r_STATE\(7)) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R4|r_STATE\(7) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(7)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(7))) ) ) ) # ( \i_RF_RQ_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R4|r_STATE\(7) & ( 
-- (\u_REGISTER_FILE|u_R12|r_STATE\(7) & \i_RF_RQ_addr[3]~input_o\) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R4|r_STATE\(7) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R0|r_STATE\(7)))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R8|r_STATE\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(7),
	datab => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(7),
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(7),
	datae => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\);

-- Location: LABCELL_X45_Y3_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~39_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\i_RF_RQ_addr[0]~input_o\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\ & \i_RF_RQ_addr[1]~input_o\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~36_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~38_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~37_combout\ & (!\i_RF_RQ_addr[0]~input_o\ & \i_RF_RQ_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000011110011111111110000001100001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~37_combout\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~36_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[7]~38_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~39_combout\);

-- Location: FF_X45_Y3_N49
\u_REGISTER_FILE|u_RQ|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[7]~39_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(7));

-- Location: LABCELL_X45_Y1_N21
\u_ALU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~29_sumout\ = SUM(( \u_REGISTER_FILE|u_RP|r_STATE\(7) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(7) ) + ( \u_ALU|Add0~26\ ))
-- \u_ALU|Add0~30\ = CARRY(( \u_REGISTER_FILE|u_RP|r_STATE\(7) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(7) ) + ( \u_ALU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(7),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(7),
	cin => \u_ALU|Add0~26\,
	sumout => \u_ALU|Add0~29_sumout\,
	cout => \u_ALU|Add0~30\);

-- Location: FF_X45_Y1_N23
\u_ALU|w_o_ADD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~29_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(7));

-- Location: LABCELL_X48_Y1_N27
\u_MUX|o_Q[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[7]~7_combout\ = ( \u_ALU|w_o_ADD\(7) & ( (\i_R_DATA[7]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(7) & ( (!\i_RF_s~input_o\ & \i_R_DATA[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_s~input_o\,
	datac => \ALT_INV_i_R_DATA[7]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(7),
	combout => \u_MUX|o_Q[7]~7_combout\);

-- Location: FF_X45_Y4_N14
\u_REGISTER_FILE|u_R6|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[7]~7_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(7));

-- Location: LABCELL_X45_Y4_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(7) & ( \u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7))) # (\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(7))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(7) & ( \u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R6|r_STATE\(7)))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R14|r_STATE\(7) & \i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7) & 
-- ((\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(7))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(7) & ( (\i_RF_RP_addr[2]~input_o\ & 
-- ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(7))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(7),
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(7),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\);

-- Location: LABCELL_X51_Y2_N21
\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(7) & ( \u_REGISTER_FILE|u_R0|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(7))))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(7))) # (\i_RF_RP_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(7) & ( \u_REGISTER_FILE|u_R0|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(7))))) # (\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(7)))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ 
-- & (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(7))))) # (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(7))) # (\i_RF_RP_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(7) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(7) & ( (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(7))))) # (\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(7),
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(7),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\);

-- Location: LABCELL_X46_Y3_N42
\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(7) & ( \u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(7))) # (\i_RF_RP_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R7|r_STATE\(7))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(7) & ( \u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[1]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(7))) # (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(7)))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(7) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((\i_RF_RP_addr[1]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(7))) # (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(7)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(7) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(7) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(7))) # (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(7),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datad => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(7),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(7),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\);

-- Location: LABCELL_X46_Y3_N18
\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(7) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(7)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(7)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(7) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(7))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(7) & 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(7) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- \u_REGISTER_FILE|u_R15|r_STATE\(7))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)) # (\u_REGISTER_FILE|u_R11|r_STATE\(7)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(7) & ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~35_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R15|r_STATE\(7)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datab => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(7),
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(7),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(7),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~35_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\);

-- Location: LABCELL_X46_Y1_N21
\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~39_combout\ = ( \i_RF_RP_addr[1]~input_o\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ & ( (\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( !\i_RF_RP_addr[1]~input_o\ & ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ & ( (\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( \i_RF_RP_addr[1]~input_o\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~37_combout\) ) ) ) # ( !\i_RF_RP_addr[1]~input_o\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[7]~36_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000010100000101001010101111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~37_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~38_combout\,
	datae => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[7]~36_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~39_combout\);

-- Location: FF_X46_Y1_N23
\u_REGISTER_FILE|u_RP|r_STATE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[7]~39_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(7));

-- Location: IOIBUF_X56_Y0_N1
\i_R_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(8),
	o => \i_R_DATA[8]~input_o\);

-- Location: FF_X46_Y4_N17
\u_REGISTER_FILE|u_R2|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(8));

-- Location: FF_X46_Y4_N56
\u_REGISTER_FILE|u_R14|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(8));

-- Location: FF_X45_Y4_N52
\u_REGISTER_FILE|u_R10|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(8));

-- Location: LABCELL_X46_Y4_N39
\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\ = ( \u_REGISTER_FILE|u_R14|r_STATE\(8) & ( \u_REGISTER_FILE|u_R10|r_STATE\(8) & ( ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(8))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R6|r_STATE\(8))))) # (\i_RF_RQ_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(8) & ( \u_REGISTER_FILE|u_R10|r_STATE\(8) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(8))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(8)))))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R14|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(8) 
-- & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(8))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(8)))))) # (\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(8) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(8))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R6|r_STATE\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(8),
	datad => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(8),
	datae => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\);

-- Location: FF_X51_Y2_N17
\u_REGISTER_FILE|u_R12|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(8));

-- Location: FF_X51_Y2_N8
\u_REGISTER_FILE|u_R4|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(8));

-- Location: FF_X51_Y2_N38
\u_REGISTER_FILE|u_R8|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(8));

-- Location: FF_X52_Y2_N47
\u_REGISTER_FILE|u_R0|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(8));

-- Location: LABCELL_X51_Y2_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(8) & ( \u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RQ_addr[3]~input_o\ 
-- & (\u_REGISTER_FILE|u_R12|r_STATE\(8)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(8) & ( \u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(8))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- (((\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(8))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(8) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(8),
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(8),
	datad => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\);

-- Location: FF_X45_Y2_N31
\u_REGISTER_FILE|u_R13|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(8));

-- Location: FF_X47_Y2_N59
\u_REGISTER_FILE|u_R15|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(8));

-- Location: FF_X46_Y2_N8
\u_REGISTER_FILE|u_R11|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(8));

-- Location: FF_X45_Y2_N13
\u_REGISTER_FILE|u_R3|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(8));

-- Location: FF_X47_Y3_N2
\u_REGISTER_FILE|u_R5|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(8));

-- Location: FF_X46_Y2_N25
\u_REGISTER_FILE|u_R7|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(8));

-- Location: LABCELL_X43_Y2_N30
\u_REGISTER_FILE|u_R1|r_STATE[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R1|r_STATE[8]~feeder_combout\ = ( \u_MUX|o_Q[8]~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[8]~8_combout\,
	combout => \u_REGISTER_FILE|u_R1|r_STATE[8]~feeder_combout\);

-- Location: FF_X43_Y2_N31
\u_REGISTER_FILE|u_R1|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R1|r_STATE[8]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(8));

-- Location: LABCELL_X46_Y2_N24
\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(8) & ( \u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R5|r_STATE\(8))))) # (\i_RF_RQ_addr[1]~input_o\ 
-- & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R3|r_STATE\(8)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(8) & ( \u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(8))))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(8) & (!\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RQ_addr[1]~input_o\ & 
-- (((\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R5|r_STATE\(8))))) # (\i_RF_RQ_addr[1]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R3|r_STATE\(8)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(8) 
-- & ( (!\i_RF_RQ_addr[1]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R5|r_STATE\(8))))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(8) & (!\i_RF_RQ_addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(8),
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(8),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\);

-- Location: LABCELL_X46_Y2_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(8) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(8)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(8)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(8) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(8)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(8))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(8) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(8) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(8)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(8) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(8) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(8),
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(8),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~40_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\);

-- Location: LABCELL_X46_Y2_N36
\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~44_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\i_RF_RQ_addr[0]~input_o\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\ & \i_RF_RQ_addr[1]~input_o\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\))) ) ) ) # 
-- ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~43_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~41_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~42_combout\ & (!\i_RF_RQ_addr[0]~input_o\ & \i_RF_RQ_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111100000011000000001111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~42_combout\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~43_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[8]~41_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~44_combout\);

-- Location: FF_X46_Y2_N38
\u_REGISTER_FILE|u_RQ|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[8]~44_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(8));

-- Location: LABCELL_X45_Y1_N24
\u_ALU|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~33_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(8) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(8) ) + ( \u_ALU|Add0~30\ ))
-- \u_ALU|Add0~34\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(8) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(8) ) + ( \u_ALU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(8),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(8),
	cin => \u_ALU|Add0~30\,
	sumout => \u_ALU|Add0~33_sumout\,
	cout => \u_ALU|Add0~34\);

-- Location: FF_X45_Y1_N26
\u_ALU|w_o_ADD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~33_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(8));

-- Location: LABCELL_X45_Y2_N54
\u_MUX|o_Q[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[8]~8_combout\ = ( \u_ALU|w_o_ADD\(8) & ( (\i_R_DATA[8]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(8) & ( (!\i_RF_s~input_o\ & \i_R_DATA[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_s~input_o\,
	datab => \ALT_INV_i_R_DATA[8]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(8),
	combout => \u_MUX|o_Q[8]~8_combout\);

-- Location: FF_X46_Y4_N2
\u_REGISTER_FILE|u_R6|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[8]~8_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(8));

-- Location: LABCELL_X46_Y4_N42
\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\ = ( \u_REGISTER_FILE|u_R14|r_STATE\(8) & ( \u_REGISTER_FILE|u_R10|r_STATE\(8) & ( ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(8)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R6|r_STATE\(8)))) # (\i_RF_RP_addr[3]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(8) & ( \u_REGISTER_FILE|u_R10|r_STATE\(8) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R2|r_STATE\(8))) # 
-- (\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(8)))) ) ) ) # ( \u_REGISTER_FILE|u_R14|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(8) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(8))))) # (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R6|r_STATE\(8))) # (\i_RF_RP_addr[3]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(8) & ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(8) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(8)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(8),
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(8),
	datae => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\);

-- Location: LABCELL_X51_Y2_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\ = ( \i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(8))) 
-- ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R8|r_STATE\(8)) ) ) ) # ( \i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (!\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(8)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(8))) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R0|r_STATE\(8) & ( (\u_REGISTER_FILE|u_R8|r_STATE\(8) & \i_RF_RP_addr[3]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(8),
	datab => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(8),
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(8),
	datad => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datae => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\);

-- Location: LABCELL_X45_Y2_N12
\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(8) & ( \u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(8)))) # (\i_RF_RP_addr[1]~input_o\ 
-- & (\u_REGISTER_FILE|u_R7|r_STATE\(8)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(8) & ( \u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[1]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R5|r_STATE\(8)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(8))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(8) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((\i_RF_RP_addr[1]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(8)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(8))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(8) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(8) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(8)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(8),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(8),
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(8),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\);

-- Location: LABCELL_X45_Y2_N30
\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(8) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(8)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(8)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(8) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R15|r_STATE\(8)))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(8))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(8) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R15|r_STATE\(8)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(8))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(8) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~40_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(8)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(8),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(8),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(8),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~40_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\);

-- Location: LABCELL_X45_Y2_N6
\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~44_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\))) # (\i_RF_RP_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\))) # (\i_RF_RP_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~41_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~43_combout\))) # 
-- (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[8]~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~42_combout\,
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~43_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[8]~41_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~44_combout\);

-- Location: FF_X45_Y2_N8
\u_REGISTER_FILE|u_RP|r_STATE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[8]~44_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(8));

-- Location: IOIBUF_X60_Y0_N18
\i_R_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(9),
	o => \i_R_DATA[9]~input_o\);

-- Location: FF_X50_Y3_N44
\u_REGISTER_FILE|u_R4|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(9));

-- Location: FF_X50_Y3_N2
\u_REGISTER_FILE|u_R8|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(9));

-- Location: FF_X51_Y3_N2
\u_REGISTER_FILE|u_R0|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(9));

-- Location: LABCELL_X50_Y3_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(9) & ( \u_REGISTER_FILE|u_R0|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(9))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(9) & ( \u_REGISTER_FILE|u_R0|r_STATE\(9) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R4|r_STATE\(9)))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R12|r_STATE\(9))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(9) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(9) & 
-- (\i_RF_RQ_addr[2]~input_o\))) # (\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R12|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(9) & ( (\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(9))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(9),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\);

-- Location: FF_X46_Y4_N13
\u_REGISTER_FILE|u_R2|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(9));

-- Location: FF_X46_Y4_N38
\u_REGISTER_FILE|u_R14|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(9));

-- Location: FF_X47_Y4_N5
\u_REGISTER_FILE|u_R6|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(9));

-- Location: LABCELL_X48_Y4_N54
\u_REGISTER_FILE|u_R10|r_STATE[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[9]~feeder_combout\ = \u_MUX|o_Q[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_MUX|ALT_INV_o_Q[9]~9_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[9]~feeder_combout\);

-- Location: FF_X48_Y4_N56
\u_REGISTER_FILE|u_R10|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[9]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(9));

-- Location: LABCELL_X46_Y4_N0
\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(9) & ( \u_REGISTER_FILE|u_R10|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R2|r_STATE\(9)))) # (\i_RF_RQ_addr[2]~input_o\ 
-- & (((!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(9) & ( \u_REGISTER_FILE|u_R10|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R2|r_STATE\(9)))) # (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(9))))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R10|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ 
-- & (\u_REGISTER_FILE|u_R2|r_STATE\(9) & (!\i_RF_RQ_addr[3]~input_o\))) # (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(9) & ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R2|r_STATE\(9) & (!\i_RF_RQ_addr[3]~input_o\))) # (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(9),
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\);

-- Location: FF_X46_Y2_N50
\u_REGISTER_FILE|u_R11|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(9));

-- Location: LABCELL_X45_Y2_N0
\u_REGISTER_FILE|u_R13|r_STATE[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R13|r_STATE[9]~feeder_combout\ = ( \u_MUX|o_Q[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[9]~9_combout\,
	combout => \u_REGISTER_FILE|u_R13|r_STATE[9]~feeder_combout\);

-- Location: FF_X45_Y2_N2
\u_REGISTER_FILE|u_R13|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R13|r_STATE[9]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(9));

-- Location: FF_X47_Y2_N46
\u_REGISTER_FILE|u_R15|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(9));

-- Location: FF_X47_Y3_N44
\u_REGISTER_FILE|u_R7|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(9));

-- Location: FF_X47_Y3_N7
\u_REGISTER_FILE|u_R1|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(9));

-- Location: FF_X47_Y3_N5
\u_REGISTER_FILE|u_R5|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[9]~9_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(9));

-- Location: LABCELL_X43_Y3_N12
\u_REGISTER_FILE|u_R3|r_STATE[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R3|r_STATE[9]~feeder_combout\ = ( \u_MUX|o_Q[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[9]~9_combout\,
	combout => \u_REGISTER_FILE|u_R3|r_STATE[9]~feeder_combout\);

-- Location: FF_X43_Y3_N14
\u_REGISTER_FILE|u_R3|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R3|r_STATE[9]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(9));

-- Location: MLABCELL_X47_Y3_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ = ( \u_REGISTER_FILE|u_R5|r_STATE\(9) & ( \u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(9))) # (\i_RF_RQ_addr[1]~input_o\))) # (\i_RF_RQ_addr[2]~input_o\ 
-- & ((!\i_RF_RQ_addr[1]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(9) & ( \u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(9))) # 
-- (\i_RF_RQ_addr[1]~input_o\))) # (\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(9)))) ) ) ) # ( \u_REGISTER_FILE|u_R5|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & 
-- (!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(9))))) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(9) & ( 
-- !\u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(9))))) # (\i_RF_RQ_addr[2]~input_o\ & (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(9),
	datad => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\);

-- Location: MLABCELL_X47_Y2_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\ = ( \u_REGISTER_FILE|u_R15|r_STATE\(9) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(9)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(9)))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(9) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R13|r_STATE\(9))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(9) & 
-- ((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R15|r_STATE\(9) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(9) & 
-- \u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R11|r_STATE\(9)))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(9) & ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~45_combout\ & ( (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & ((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(9)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101110101010000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datab => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(9),
	datac => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(9),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~45_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\);

-- Location: LABCELL_X46_Y2_N42
\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~49_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\)) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\)))) # (\i_RF_RQ_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~46_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~48_combout\)) # 
-- (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~47_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~48_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~47_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[9]~46_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~49_combout\);

-- Location: FF_X46_Y2_N44
\u_REGISTER_FILE|u_RQ|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[9]~49_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(9));

-- Location: LABCELL_X45_Y1_N27
\u_ALU|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~37_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(9) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(9) ) + ( \u_ALU|Add0~34\ ))
-- \u_ALU|Add0~38\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(9) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(9) ) + ( \u_ALU|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(9),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(9),
	cin => \u_ALU|Add0~34\,
	sumout => \u_ALU|Add0~37_sumout\,
	cout => \u_ALU|Add0~38\);

-- Location: FF_X45_Y1_N28
\u_ALU|w_o_ADD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~37_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(9));

-- Location: LABCELL_X48_Y1_N54
\u_MUX|o_Q[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[9]~9_combout\ = ( \u_ALU|w_o_ADD\(9) & ( (\i_R_DATA[9]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(9) & ( (!\i_RF_s~input_o\ & \i_R_DATA[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_s~input_o\,
	datac => \ALT_INV_i_R_DATA[9]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(9),
	combout => \u_MUX|o_Q[9]~9_combout\);

-- Location: LABCELL_X50_Y3_N36
\u_REGISTER_FILE|u_R12|r_STATE[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R12|r_STATE[9]~feeder_combout\ = ( \u_MUX|o_Q[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[9]~9_combout\,
	combout => \u_REGISTER_FILE|u_R12|r_STATE[9]~feeder_combout\);

-- Location: FF_X50_Y3_N38
\u_REGISTER_FILE|u_R12|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R12|r_STATE[9]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(9));

-- Location: LABCELL_X50_Y3_N3
\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(9) & ( \u_REGISTER_FILE|u_R4|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R0|r_STATE\(9)) # (\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ 
-- & (((!\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R12|r_STATE\(9)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(9) & ( \u_REGISTER_FILE|u_R4|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\ & 
-- \u_REGISTER_FILE|u_R0|r_STATE\(9))))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R12|r_STATE\(9)))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R4|r_STATE\(9) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R0|r_STATE\(9)) # (\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(9) & (\i_RF_RP_addr[3]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(9) & ( 
-- !\u_REGISTER_FILE|u_R4|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R0|r_STATE\(9))))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(9) & (\i_RF_RP_addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(9),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\);

-- Location: MLABCELL_X47_Y4_N0
\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ = ( \i_RF_RP_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R14|r_STATE\(9) & ( (\u_REGISTER_FILE|u_R10|r_STATE\(9)) # (\i_RF_RP_addr[2]~input_o\) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R14|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(9)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(9))) ) ) ) # ( \i_RF_RP_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R14|r_STATE\(9) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & \u_REGISTER_FILE|u_R10|r_STATE\(9)) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( !\u_REGISTER_FILE|u_R14|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(9)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R6|r_STATE\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(9),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(9),
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(9),
	datae => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\);

-- Location: MLABCELL_X47_Y3_N9
\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ = ( \u_REGISTER_FILE|u_R5|r_STATE\(9) & ( \u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(9))) # (\i_RF_RP_addr[1]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ 
-- & ((!\i_RF_RP_addr[1]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(9) & ( \u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(9))) # 
-- (\i_RF_RP_addr[1]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(9)))) ) ) ) # ( \u_REGISTER_FILE|u_R5|r_STATE\(9) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(9))))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(9))))) ) ) ) # ( !\u_REGISTER_FILE|u_R5|r_STATE\(9) & ( 
-- !\u_REGISTER_FILE|u_R3|r_STATE\(9) & ( (!\i_RF_RP_addr[2]~input_o\ & (!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(9))))) # (\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(9),
	datad => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(9),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\);

-- Location: MLABCELL_X47_Y2_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(9) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # 
-- ((\u_REGISTER_FILE|u_R15|r_STATE\(9))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(9))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(9) & ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((\u_REGISTER_FILE|u_R15|r_STATE\(9))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(9))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(9) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(9)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(9))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(9) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~45_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(9)))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(9),
	datad => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(9),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(9),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~45_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\);

-- Location: LABCELL_X46_Y1_N3
\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~49_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ & ( ((\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\)) # (\i_RF_RP_addr[0]~input_o\) 
-- ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\ & !\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~47_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~46_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[9]~48_combout\ & !\i_RF_RP_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000101010101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datab => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~48_combout\,
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~47_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[9]~46_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~49_combout\);

-- Location: FF_X46_Y1_N5
\u_REGISTER_FILE|u_RP|r_STATE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[9]~49_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(9));

-- Location: IOIBUF_X58_Y0_N75
\i_R_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(10),
	o => \i_R_DATA[10]~input_o\);

-- Location: FF_X50_Y2_N26
\u_REGISTER_FILE|u_R12|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(10));

-- Location: FF_X50_Y2_N14
\u_REGISTER_FILE|u_R8|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(10));

-- Location: FF_X50_Y2_N56
\u_REGISTER_FILE|u_R4|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(10));

-- Location: FF_X52_Y2_N53
\u_REGISTER_FILE|u_R0|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(10));

-- Location: LABCELL_X50_Y2_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\ = ( \i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(10)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R12|r_STATE\(10))) ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R4|r_STATE\(10)) ) ) ) # ( \i_RF_RQ_addr[3]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(10)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(10))) ) ) ) # ( !\i_RF_RQ_addr[3]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(10),
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(10),
	datae => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\);

-- Location: FF_X48_Y4_N28
\u_REGISTER_FILE|u_R10|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(10));

-- Location: FF_X48_Y4_N14
\u_REGISTER_FILE|u_R6|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(10));

-- Location: FF_X50_Y4_N59
\u_REGISTER_FILE|u_R2|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(10));

-- Location: LABCELL_X48_Y4_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ = ( \i_RF_RQ_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(10))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R14|r_STATE\(10)))) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R10|r_STATE\(10)) ) ) ) # ( \i_RF_RQ_addr[2]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(10))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(10)))) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (\i_RF_RQ_addr[3]~input_o\ & \u_REGISTER_FILE|u_R10|r_STATE\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(10),
	datac => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(10),
	datae => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\);

-- Location: FF_X47_Y1_N56
\u_REGISTER_FILE|u_R13|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(10));

-- Location: MLABCELL_X47_Y2_N12
\u_REGISTER_FILE|u_R15|r_STATE[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[10]~feeder_combout\ = ( \u_MUX|o_Q[10]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[10]~10_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[10]~feeder_combout\);

-- Location: FF_X47_Y2_N14
\u_REGISTER_FILE|u_R15|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[10]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(10));

-- Location: FF_X48_Y1_N50
\u_REGISTER_FILE|u_R11|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(10));

-- Location: FF_X47_Y1_N8
\u_REGISTER_FILE|u_R3|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(10));

-- Location: FF_X47_Y3_N56
\u_REGISTER_FILE|u_R1|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(10));

-- Location: FF_X48_Y1_N7
\u_REGISTER_FILE|u_R7|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(10));

-- Location: FF_X47_Y3_N41
\u_REGISTER_FILE|u_R5|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(10));

-- Location: LABCELL_X48_Y1_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(10) & ( \u_REGISTER_FILE|u_R5|r_STATE\(10) & ( ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(10)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R3|r_STATE\(10)))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(10) & ( \u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R1|r_STATE\(10)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(10))))) # (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[1]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(10) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(10)))) # (\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(10))))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (((\i_RF_RQ_addr[1]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(10) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(10)))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R3|r_STATE\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(10),
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(10),
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(10),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\);

-- Location: LABCELL_X48_Y1_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(10) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(10)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(10))))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(10) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(10)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_R15|r_STATE\(10) & !\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(10) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(10) & ((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(10))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(10) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(10) & ((\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(10) & !\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(10),
	datac => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(10),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~50_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\);

-- Location: LABCELL_X48_Y3_N30
\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~54_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ & ( ((\i_RF_RQ_addr[0]~input_o\) # (\i_RF_RQ_addr[1]~input_o\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\ & !\i_RF_RQ_addr[1]~input_o\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\))) ) ) ) 
-- # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~52_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~51_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~53_combout\ & (!\i_RF_RQ_addr[1]~input_o\ & !\i_RF_RQ_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100000111000001001111010011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~53_combout\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~52_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[10]~51_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~54_combout\);

-- Location: FF_X48_Y3_N31
\u_REGISTER_FILE|u_RQ|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[10]~54_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(10));

-- Location: LABCELL_X45_Y1_N30
\u_ALU|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~41_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(10) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(10) ) + ( \u_ALU|Add0~38\ ))
-- \u_ALU|Add0~42\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(10) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(10) ) + ( \u_ALU|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(10),
	cin => \u_ALU|Add0~38\,
	sumout => \u_ALU|Add0~41_sumout\,
	cout => \u_ALU|Add0~42\);

-- Location: FF_X45_Y1_N31
\u_ALU|w_o_ADD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~41_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(10));

-- Location: MLABCELL_X47_Y1_N39
\u_MUX|o_Q[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[10]~10_combout\ = ( \u_ALU|w_o_ADD\(10) & ( (\i_RF_s~input_o\) # (\i_R_DATA[10]~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(10) & ( (\i_R_DATA[10]~input_o\ & !\i_RF_s~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_R_DATA[10]~input_o\,
	datad => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(10),
	combout => \u_MUX|o_Q[10]~10_combout\);

-- Location: FF_X48_Y4_N20
\u_REGISTER_FILE|u_R14|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[10]~10_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(10));

-- Location: LABCELL_X48_Y4_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\ = ( \i_RF_RP_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(10)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R14|r_STATE\(10))) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( \u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R6|r_STATE\(10)) ) ) ) # ( \i_RF_RP_addr[3]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(10)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(10))) ) ) ) # ( !\i_RF_RP_addr[3]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(10) & ( (\u_REGISTER_FILE|u_R6|r_STATE\(10) & \i_RF_RP_addr[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(10),
	datab => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(10),
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(10),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\);

-- Location: LABCELL_X50_Y2_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\ = ( \i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(10))) # (\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R12|r_STATE\(10)))) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RP_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R8|r_STATE\(10)) ) ) ) # ( \i_RF_RP_addr[2]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(10))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(10)))) ) ) ) # ( !\i_RF_RP_addr[2]~input_o\ & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(10) & ( (\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R8|r_STATE\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(10),
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(10),
	datae => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\);

-- Location: LABCELL_X48_Y1_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ = ( \u_REGISTER_FILE|u_R1|r_STATE\(10) & ( \u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RP_addr[1]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(10)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(10)))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(10) & ( \u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(10) & 
-- \i_RF_RP_addr[1]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[1]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(10)))) ) ) ) # ( \u_REGISTER_FILE|u_R1|r_STATE\(10) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (!\i_RF_RP_addr[2]~input_o\ & 
-- (((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_R3|r_STATE\(10))))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(10) & ((\i_RF_RP_addr[1]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(10) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(10) & ( (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(10)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(10),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(10),
	datad => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(10),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(10),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\);

-- Location: LABCELL_X48_Y1_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\ = ( \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(10))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(10)))) ) ) ) # ( !\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(10)) ) ) ) # ( \u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(10))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(10)))) ) ) ) # ( !\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~50_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- \u_REGISTER_FILE|u_R13|r_STATE\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(10),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datac => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(10),
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(10),
	datae => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~50_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\);

-- Location: LABCELL_X48_Y1_N0
\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~54_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\))) # (\i_RF_RP_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\))) # (\i_RF_RP_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~51_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~53_combout\))) # 
-- (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[10]~52_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~52_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~53_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[10]~51_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~54_combout\);

-- Location: FF_X48_Y1_N2
\u_REGISTER_FILE|u_RP|r_STATE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[10]~54_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(10));

-- Location: IOIBUF_X54_Y0_N52
\i_R_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(11),
	o => \i_R_DATA[11]~input_o\);

-- Location: FF_X48_Y4_N26
\u_REGISTER_FILE|u_R10|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(11));

-- Location: FF_X48_Y4_N32
\u_REGISTER_FILE|u_R14|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(11));

-- Location: FF_X48_Y4_N38
\u_REGISTER_FILE|u_R6|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(11));

-- Location: LABCELL_X50_Y4_N12
\u_REGISTER_FILE|u_R2|r_STATE[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[11]~feeder_combout\ = ( \u_MUX|o_Q[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[11]~11_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[11]~feeder_combout\);

-- Location: FF_X50_Y4_N14
\u_REGISTER_FILE|u_R2|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[11]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(11));

-- Location: LABCELL_X48_Y4_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(11) & ( \u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(11))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(11))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(11) & ( \u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(11)))) # (\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R14|r_STATE\(11) & \i_RF_RQ_addr[3]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(11) & ( 
-- (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(11) & ((\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(11))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(11))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(11),
	datab => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(11),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\);

-- Location: FF_X51_Y2_N47
\u_REGISTER_FILE|u_R8|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(11));

-- Location: FF_X51_Y2_N56
\u_REGISTER_FILE|u_R4|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(11));

-- Location: MLABCELL_X52_Y2_N30
\u_REGISTER_FILE|u_R0|r_STATE[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[11]~feeder_combout\ = ( \u_MUX|o_Q[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[11]~11_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[11]~feeder_combout\);

-- Location: FF_X52_Y2_N32
\u_REGISTER_FILE|u_R0|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[11]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(11));

-- Location: LABCELL_X51_Y2_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ = ( \u_REGISTER_FILE|u_R4|r_STATE\(11) & ( \u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(11)))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R4|r_STATE\(11) & ( \u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\) # 
-- (\u_REGISTER_FILE|u_R8|r_STATE\(11))))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11) & ((\i_RF_RQ_addr[3]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R4|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(11) & ( 
-- (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(11) & \i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R12|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R4|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(11)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(11),
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(11),
	datad => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\);

-- Location: FF_X48_Y2_N52
\u_REGISTER_FILE|u_R13|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(11));

-- Location: MLABCELL_X47_Y2_N15
\u_REGISTER_FILE|u_R15|r_STATE[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[11]~feeder_combout\ = ( \u_MUX|o_Q[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[11]~11_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[11]~feeder_combout\);

-- Location: FF_X47_Y2_N17
\u_REGISTER_FILE|u_R15|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[11]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(11));

-- Location: FF_X48_Y3_N7
\u_REGISTER_FILE|u_R11|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(11));

-- Location: FF_X47_Y3_N49
\u_REGISTER_FILE|u_R5|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(11));

-- Location: FF_X48_Y2_N55
\u_REGISTER_FILE|u_R3|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(11));

-- Location: FF_X48_Y3_N49
\u_REGISTER_FILE|u_R7|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(11));

-- Location: FF_X47_Y3_N19
\u_REGISTER_FILE|u_R1|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(11));

-- Location: LABCELL_X48_Y3_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(11) & ( \u_REGISTER_FILE|u_R1|r_STATE\(11) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_R3|r_STATE\(11))))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[1]~input_o\)) # (\u_REGISTER_FILE|u_R5|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(11) & ( \u_REGISTER_FILE|u_R1|r_STATE\(11) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[1]~input_o\) # 
-- (\u_REGISTER_FILE|u_R3|r_STATE\(11))))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(11) & ((!\i_RF_RQ_addr[1]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(11) & ( 
-- (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(11) & \i_RF_RQ_addr[1]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[1]~input_o\)) # (\u_REGISTER_FILE|u_R5|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(11) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(11) & \i_RF_RQ_addr[1]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(11) & ((!\i_RF_RQ_addr[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111110111011000010101011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(11),
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(11),
	datad => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\);

-- Location: LABCELL_X48_Y3_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(11) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(11))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(11) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(11))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(11) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(11) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(11))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(11)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(11) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~55_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(11))))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(11) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(11),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(11),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~55_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\);

-- Location: LABCELL_X48_Y3_N0
\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~59_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\i_RF_RQ_addr[0]~input_o\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\ & \i_RF_RQ_addr[1]~input_o\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\))) ) ) 
-- ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~58_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~56_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~57_combout\ & (\i_RF_RQ_addr[1]~input_o\ & !\i_RF_RQ_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110100001101000000011111000111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~57_combout\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~58_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[11]~56_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~59_combout\);

-- Location: FF_X48_Y3_N1
\u_REGISTER_FILE|u_RQ|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[11]~59_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(11));

-- Location: LABCELL_X45_Y1_N33
\u_ALU|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~45_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(11) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(11) ) + ( \u_ALU|Add0~42\ ))
-- \u_ALU|Add0~46\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(11) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(11) ) + ( \u_ALU|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(11),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(11),
	cin => \u_ALU|Add0~42\,
	sumout => \u_ALU|Add0~45_sumout\,
	cout => \u_ALU|Add0~46\);

-- Location: FF_X45_Y1_N34
\u_ALU|w_o_ADD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~45_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(11));

-- Location: LABCELL_X48_Y1_N57
\u_MUX|o_Q[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[11]~11_combout\ = ( \u_ALU|w_o_ADD\(11) & ( (\i_R_DATA[11]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(11) & ( (!\i_RF_s~input_o\ & \i_R_DATA[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_s~input_o\,
	datad => \ALT_INV_i_R_DATA[11]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(11),
	combout => \u_MUX|o_Q[11]~11_combout\);

-- Location: FF_X51_Y2_N20
\u_REGISTER_FILE|u_R12|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[11]~11_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(11));

-- Location: LABCELL_X51_Y2_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\ = ( \u_REGISTER_FILE|u_R4|r_STATE\(11) & ( \u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(11)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R4|r_STATE\(11) & ( \u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\) # 
-- (\u_REGISTER_FILE|u_R8|r_STATE\(11))))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11) & (\i_RF_RP_addr[3]~input_o\))) ) ) ) # ( \u_REGISTER_FILE|u_R4|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(11) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R8|r_STATE\(11))))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R12|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R4|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(11) & ( (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R8|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(11),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(11),
	datae => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\);

-- Location: LABCELL_X48_Y4_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(11) & ( \u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(11)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(11)))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(11) & ( \u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(11))))) # (\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(11)))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(11) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(11))))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\) # ((\u_REGISTER_FILE|u_R14|r_STATE\(11))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(11) & ( (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(11),
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(11),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\);

-- Location: LABCELL_X48_Y2_N54
\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(11) & ( \u_REGISTER_FILE|u_R7|r_STATE\(11) & ( ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(11)))) # (\i_RF_RP_addr[1]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(11) & ( \u_REGISTER_FILE|u_R7|r_STATE\(11) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R1|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(11))))) # (\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(11) & ( 
-- !\u_REGISTER_FILE|u_R7|r_STATE\(11) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(11))))) # (\i_RF_RP_addr[1]~input_o\ & 
-- (((!\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R7|r_STATE\(11) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R1|r_STATE\(11)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(11),
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(11),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\);

-- Location: LABCELL_X48_Y2_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(11) & ( \u_REGISTER_FILE|u_R11|r_STATE\(11) & ( ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(11)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(11) & ( \u_REGISTER_FILE|u_R11|r_STATE\(11) & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(11))))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R11|r_STATE\(11) & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(11))))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(11) & ( !\u_REGISTER_FILE|u_R11|r_STATE\(11) & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~55_combout\))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datab => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(11),
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~55_combout\,
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(11),
	dataf => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(11),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\);

-- Location: LABCELL_X45_Y2_N51
\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~59_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ & ( ((\i_RF_RP_addr[0]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\)) # 
-- (\i_RF_RP_addr[1]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # 
-- ( \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\) # (\i_RF_RP_addr[1]~input_o\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~57_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~56_combout\ & ( (!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[11]~58_combout\ & !\i_RF_RP_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001111110000000000001100111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~58_combout\,
	datad => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~57_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[11]~56_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~59_combout\);

-- Location: FF_X45_Y2_N53
\u_REGISTER_FILE|u_RP|r_STATE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[11]~59_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(11));

-- Location: IOIBUF_X40_Y81_N52
\i_R_DATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(12),
	o => \i_R_DATA[12]~input_o\);

-- Location: FF_X46_Y4_N8
\u_REGISTER_FILE|u_R6|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(12));

-- Location: FF_X46_Y4_N47
\u_REGISTER_FILE|u_R14|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(12));

-- Location: LABCELL_X45_Y4_N48
\u_REGISTER_FILE|u_R10|r_STATE[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[12]~feeder_combout\ = ( \u_MUX|o_Q[12]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[12]~12_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[12]~feeder_combout\);

-- Location: FF_X45_Y4_N49
\u_REGISTER_FILE|u_R10|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[12]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(12));

-- Location: FF_X46_Y4_N50
\u_REGISTER_FILE|u_R2|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(12));

-- Location: LABCELL_X46_Y4_N24
\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(12) & ( \u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(12) & ( \u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(12)))))) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(12) & ( 
-- (!\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(12)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(12)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(12),
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\);

-- Location: FF_X50_Y1_N26
\u_REGISTER_FILE|u_R12|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(12));

-- Location: FF_X50_Y1_N38
\u_REGISTER_FILE|u_R8|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(12));

-- Location: LABCELL_X51_Y1_N30
\u_REGISTER_FILE|u_R0|r_STATE[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[12]~feeder_combout\ = ( \u_MUX|o_Q[12]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[12]~12_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[12]~feeder_combout\);

-- Location: FF_X51_Y1_N32
\u_REGISTER_FILE|u_R0|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[12]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(12));

-- Location: LABCELL_X50_Y1_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(12) & ( \u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (!\i_RF_RQ_addr[2]~input_o\) # ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(12) & ( \u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (!\i_RF_RQ_addr[2]~input_o\ & (((!\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12)))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(12) & ( 
-- (!\i_RF_RQ_addr[2]~input_o\ & (((\i_RF_RQ_addr[3]~input_o\)))) # (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R8|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # (\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(12),
	datac => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\);

-- Location: FF_X46_Y3_N5
\u_REGISTER_FILE|u_R13|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(12));

-- Location: MLABCELL_X47_Y2_N9
\u_REGISTER_FILE|u_R15|r_STATE[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[12]~feeder_combout\ = ( \u_MUX|o_Q[12]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[12]~12_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[12]~feeder_combout\);

-- Location: FF_X47_Y2_N11
\u_REGISTER_FILE|u_R15|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[12]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(12));

-- Location: FF_X48_Y3_N26
\u_REGISTER_FILE|u_R11|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(12));

-- Location: MLABCELL_X47_Y3_N36
\u_REGISTER_FILE|u_R5|r_STATE[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[12]~feeder_combout\ = ( \u_MUX|o_Q[12]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[12]~12_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[12]~feeder_combout\);

-- Location: FF_X47_Y3_N37
\u_REGISTER_FILE|u_R5|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[12]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(12));

-- Location: FF_X46_Y3_N41
\u_REGISTER_FILE|u_R3|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(12));

-- Location: FF_X46_Y3_N56
\u_REGISTER_FILE|u_R7|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(12));

-- Location: LABCELL_X43_Y3_N33
\u_REGISTER_FILE|u_R1|r_STATE[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R1|r_STATE[12]~feeder_combout\ = ( \u_MUX|o_Q[12]~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[12]~12_combout\,
	combout => \u_REGISTER_FILE|u_R1|r_STATE[12]~feeder_combout\);

-- Location: FF_X43_Y3_N34
\u_REGISTER_FILE|u_R1|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R1|r_STATE[12]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(12));

-- Location: LABCELL_X46_Y3_N54
\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(12) & ( \u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R5|r_STATE\(12)))) # 
-- (\i_RF_RQ_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(12)) # (\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(12) & ( \u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R5|r_STATE\(12)))) # (\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R3|r_STATE\(12))))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(12) & ( 
-- (!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(12) & (\i_RF_RQ_addr[2]~input_o\))) # (\i_RF_RQ_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(12)) # (\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(12) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(12) & (\i_RF_RQ_addr[2]~input_o\))) # (\i_RF_RQ_addr[1]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R3|r_STATE\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(12),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\);

-- Location: LABCELL_X48_Y3_N24
\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(12) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(12)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(12) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(12))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(12) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(12) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(12)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(12) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(12) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(12),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~60_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\);

-- Location: LABCELL_X48_Y3_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~64_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ & ( ((\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # 
-- ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~63_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~61_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & (\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~62_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101001010101010111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datad => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~62_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~63_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[12]~61_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~64_combout\);

-- Location: FF_X48_Y3_N58
\u_REGISTER_FILE|u_RQ|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[12]~64_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(12));

-- Location: LABCELL_X45_Y1_N36
\u_ALU|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~49_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(12) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(12) ) + ( \u_ALU|Add0~46\ ))
-- \u_ALU|Add0~50\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(12) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(12) ) + ( \u_ALU|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(12),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(12),
	cin => \u_ALU|Add0~46\,
	sumout => \u_ALU|Add0~49_sumout\,
	cout => \u_ALU|Add0~50\);

-- Location: FF_X45_Y1_N37
\u_ALU|w_o_ADD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~49_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(12));

-- Location: LABCELL_X43_Y1_N48
\u_MUX|o_Q[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[12]~12_combout\ = ( \i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(12) ) ) # ( !\i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(12) & ( \i_R_DATA[12]~input_o\ ) ) ) # ( !\i_RF_s~input_o\ & ( !\u_ALU|w_o_ADD\(12) & ( \i_R_DATA[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_R_DATA[12]~input_o\,
	datae => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(12),
	combout => \u_MUX|o_Q[12]~12_combout\);

-- Location: FF_X50_Y1_N44
\u_REGISTER_FILE|u_R4|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[12]~12_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(12));

-- Location: LABCELL_X50_Y1_N33
\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(12) & ( \u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # 
-- (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(12) & ( \u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (!\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(12))))) # (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(12) & ( 
-- (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12)))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R12|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(12) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(12) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(12))) # (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(12),
	datad => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\);

-- Location: LABCELL_X46_Y4_N9
\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\ = ( \u_REGISTER_FILE|u_R14|r_STATE\(12) & ( \u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\) # ((\u_REGISTER_FILE|u_R10|r_STATE\(12))))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R6|r_STATE\(12))) # (\i_RF_RP_addr[3]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(12) & ( \u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R10|r_STATE\(12))))) # (\i_RF_RP_addr[2]~input_o\ & (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12)))) ) ) ) # ( \u_REGISTER_FILE|u_R14|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(12) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(12))))) # (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R6|r_STATE\(12))) # (\i_RF_RP_addr[3]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R14|r_STATE\(12) & ( 
-- !\u_REGISTER_FILE|u_R2|r_STATE\(12) & ( (!\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R10|r_STATE\(12))))) # (\i_RF_RP_addr[2]~input_o\ & (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R6|r_STATE\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(12),
	datad => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\);

-- Location: LABCELL_X46_Y3_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(12) & ( \u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(12))) # 
-- (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(12) & ( \u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (!\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R5|r_STATE\(12))))) # (\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(12))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(12) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(12) & ( 
-- (!\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(12)))) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R7|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(12) & ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(12) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R5|r_STATE\(12))) # (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(12),
	datad => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(12),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\);

-- Location: MLABCELL_X47_Y3_N57
\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\ = ( \u_REGISTER_FILE|u_R15|r_STATE\(12) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(12)))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(12) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(12))))) ) ) ) # ( \u_REGISTER_FILE|u_R15|r_STATE\(12) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R11|r_STATE\(12))))) ) ) ) # ( !\u_REGISTER_FILE|u_R15|r_STATE\(12) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~60_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- ((\u_REGISTER_FILE|u_R13|r_STATE\(12)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (\u_REGISTER_FILE|u_R11|r_STATE\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datab => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(12),
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datad => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(12),
	datae => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(12),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~60_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\);

-- Location: LABCELL_X48_Y2_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~64_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\)) # (\i_RF_RP_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\)))) # (\i_RF_RP_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~61_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~63_combout\)) # 
-- (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[12]~62_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~63_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~62_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[12]~61_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~64_combout\);

-- Location: FF_X48_Y2_N41
\u_REGISTER_FILE|u_RP|r_STATE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[12]~64_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(12));

-- Location: IOIBUF_X50_Y81_N75
\i_R_DATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(13),
	o => \i_R_DATA[13]~input_o\);

-- Location: FF_X50_Y2_N8
\u_REGISTER_FILE|u_R8|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(13));

-- Location: LABCELL_X50_Y2_N3
\u_REGISTER_FILE|u_R12|r_STATE[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R12|r_STATE[13]~feeder_combout\ = ( \u_MUX|o_Q[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[13]~13_combout\,
	combout => \u_REGISTER_FILE|u_R12|r_STATE[13]~feeder_combout\);

-- Location: FF_X50_Y2_N5
\u_REGISTER_FILE|u_R12|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R12|r_STATE[13]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(13));

-- Location: FF_X50_Y2_N50
\u_REGISTER_FILE|u_R4|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(13));

-- Location: MLABCELL_X52_Y2_N39
\u_REGISTER_FILE|u_R0|r_STATE[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[13]~feeder_combout\ = ( \u_MUX|o_Q[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[13]~13_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[13]~feeder_combout\);

-- Location: FF_X52_Y2_N41
\u_REGISTER_FILE|u_R0|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[13]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(13));

-- Location: LABCELL_X50_Y2_N48
\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\ = ( \u_REGISTER_FILE|u_R4|r_STATE\(13) & ( \u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(13))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(13))))) ) ) ) # ( !\u_REGISTER_FILE|u_R4|r_STATE\(13) & ( \u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(13)))))) ) ) ) # ( \u_REGISTER_FILE|u_R4|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(13) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(13)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R4|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R12|r_STATE\(13)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(13),
	datac => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(13),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\);

-- Location: FF_X45_Y4_N20
\u_REGISTER_FILE|u_R14|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(13));

-- Location: FF_X45_Y4_N38
\u_REGISTER_FILE|u_R6|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(13));

-- Location: FF_X46_Y4_N26
\u_REGISTER_FILE|u_R2|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(13));

-- Location: LABCELL_X45_Y4_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(13) & ( \u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (!\i_RF_RQ_addr[3]~input_o\) # ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # 
-- (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(13) & ( \u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (!\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\)) # (\i_RF_RQ_addr[3]~input_o\ & 
-- ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(13) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\)) # (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R6|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(13),
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(13),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\);

-- Location: FF_X48_Y2_N25
\u_REGISTER_FILE|u_R13|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(13));

-- Location: MLABCELL_X47_Y2_N30
\u_REGISTER_FILE|u_R15|r_STATE[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[13]~feeder_combout\ = ( \u_MUX|o_Q[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[13]~13_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[13]~feeder_combout\);

-- Location: FF_X47_Y2_N32
\u_REGISTER_FILE|u_R15|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[13]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(13));

-- Location: FF_X46_Y2_N31
\u_REGISTER_FILE|u_R11|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(13));

-- Location: MLABCELL_X47_Y2_N18
\u_REGISTER_FILE|u_R1|r_STATE[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R1|r_STATE[13]~feeder_combout\ = ( \u_MUX|o_Q[13]~13_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[13]~13_combout\,
	combout => \u_REGISTER_FILE|u_R1|r_STATE[13]~feeder_combout\);

-- Location: FF_X47_Y2_N20
\u_REGISTER_FILE|u_R1|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R1|r_STATE[13]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(13));

-- Location: FF_X48_Y2_N7
\u_REGISTER_FILE|u_R3|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(13));

-- Location: FF_X46_Y2_N14
\u_REGISTER_FILE|u_R7|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(13));

-- Location: FF_X47_Y3_N14
\u_REGISTER_FILE|u_R5|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(13));

-- Location: LABCELL_X46_Y2_N12
\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(13) & ( \u_REGISTER_FILE|u_R5|r_STATE\(13) & ( ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(13))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(13))))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(13) & ( \u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & 
-- (\u_REGISTER_FILE|u_R1|r_STATE\(13))) # (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(13)))))) # (\i_RF_RQ_addr[2]~input_o\ & (!\i_RF_RQ_addr[1]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(13) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(13))) # (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(13)))))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- (\i_RF_RQ_addr[1]~input_o\)) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(13))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(13),
	datad => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(13),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\);

-- Location: LABCELL_X46_Y2_N30
\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(13) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(13)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(13)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(13) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(13)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(13))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(13) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(13) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((\u_REGISTER_FILE|u_R15|r_STATE\(13)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(13) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(13) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(13),
	datab => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(13),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~65_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\);

-- Location: LABCELL_X46_Y2_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~69_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\)) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\)))) # (\i_RF_RQ_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~66_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~68_combout\)) # 
-- (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~67_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~68_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~67_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[13]~66_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~69_combout\);

-- Location: FF_X46_Y2_N46
\u_REGISTER_FILE|u_RQ|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[13]~69_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(13));

-- Location: LABCELL_X45_Y1_N39
\u_ALU|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~53_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(13) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(13) ) + ( \u_ALU|Add0~50\ ))
-- \u_ALU|Add0~54\ = CARRY(( \u_REGISTER_FILE|u_RQ|r_STATE\(13) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(13) ) + ( \u_ALU|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(13),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(13),
	cin => \u_ALU|Add0~50\,
	sumout => \u_ALU|Add0~53_sumout\,
	cout => \u_ALU|Add0~54\);

-- Location: FF_X45_Y1_N40
\u_ALU|w_o_ADD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~53_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(13));

-- Location: LABCELL_X45_Y2_N57
\u_MUX|o_Q[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[13]~13_combout\ = ( \u_ALU|w_o_ADD\(13) & ( (\i_R_DATA[13]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(13) & ( (!\i_RF_s~input_o\ & \i_R_DATA[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_s~input_o\,
	datad => \ALT_INV_i_R_DATA[13]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(13),
	combout => \u_MUX|o_Q[13]~13_combout\);

-- Location: FF_X45_Y4_N55
\u_REGISTER_FILE|u_R10|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[13]~13_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(13));

-- Location: LABCELL_X45_Y4_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(13) & ( \u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (!\i_RF_RP_addr[3]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # 
-- (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13))))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(13) & ( \u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (!\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\)) # (\i_RF_RP_addr[3]~input_o\ & 
-- ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(13) & ( 
-- (!\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\)) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R6|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R2|r_STATE\(13) & ( (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(13))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R14|r_STATE\(13)))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(13),
	datad => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(13),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\);

-- Location: LABCELL_X50_Y2_N6
\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ = ( \u_REGISTER_FILE|u_R8|r_STATE\(13) & ( \u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(13)))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(13)))) ) ) ) # ( !\u_REGISTER_FILE|u_R8|r_STATE\(13) & ( \u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(13)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(13))))) ) ) ) # ( \u_REGISTER_FILE|u_R8|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(13) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (((\i_RF_RP_addr[3]~input_o\)))) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(13)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(13))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R8|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(13) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(13)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R12|r_STATE\(13))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(13),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(13),
	datad => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datae => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\);

-- Location: LABCELL_X48_Y2_N6
\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(13) & ( \u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R1|r_STATE\(13))))) # 
-- (\i_RF_RP_addr[1]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(13)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(13) & ( \u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R1|r_STATE\(13))))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(13) & ((\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(13) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(13) & ( 
-- (!\i_RF_RP_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(13) & !\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R7|r_STATE\(13)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(13) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(13) & ( (!\i_RF_RP_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R1|r_STATE\(13) & !\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(13) & ((\i_RF_RP_addr[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(13),
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(13),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(13),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\);

-- Location: LABCELL_X48_Y2_N24
\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(13) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(13))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(13))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(13) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(13))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(13)))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(13) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(13))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(13)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(13) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~65_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(13))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(13),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(13),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(13),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~65_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\);

-- Location: LABCELL_X48_Y2_N45
\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~69_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\)) # 
-- (\i_RF_RP_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\ & \i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\) ) ) ) # 
-- ( \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~68_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~66_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[13]~67_combout\ & \i_RF_RP_addr[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001001010111010101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datab => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~67_combout\,
	datac => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~68_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[13]~66_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~69_combout\);

-- Location: FF_X48_Y2_N47
\u_REGISTER_FILE|u_RP|r_STATE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[13]~69_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(13));

-- Location: IOIBUF_X58_Y0_N41
\i_R_DATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(14),
	o => \i_R_DATA[14]~input_o\);

-- Location: FF_X50_Y2_N11
\u_REGISTER_FILE|u_R8|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(14));

-- Location: FF_X50_Y2_N20
\u_REGISTER_FILE|u_R4|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(14));

-- Location: FF_X50_Y2_N29
\u_REGISTER_FILE|u_R12|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(14));

-- Location: MLABCELL_X52_Y2_N57
\u_REGISTER_FILE|u_R0|r_STATE[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R0|r_STATE[14]~feeder_combout\ = ( \u_MUX|o_Q[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[14]~14_combout\,
	combout => \u_REGISTER_FILE|u_R0|r_STATE[14]~feeder_combout\);

-- Location: FF_X52_Y2_N59
\u_REGISTER_FILE|u_R0|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R0|r_STATE[14]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(14));

-- Location: LABCELL_X50_Y2_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(14) & ( \u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R4|r_STATE\(14))))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(14) & ( \u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\) # 
-- ((\u_REGISTER_FILE|u_R4|r_STATE\(14))))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(14)))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(14) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(14))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(14) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RQ_addr[3]~input_o\ & (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R4|r_STATE\(14))))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\);

-- Location: FF_X48_Y4_N55
\u_REGISTER_FILE|u_R10|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(14));

-- Location: LABCELL_X50_Y4_N30
\u_REGISTER_FILE|u_R2|r_STATE[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R2|r_STATE[14]~feeder_combout\ = ( \u_MUX|o_Q[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[14]~14_combout\,
	combout => \u_REGISTER_FILE|u_R2|r_STATE[14]~feeder_combout\);

-- Location: FF_X50_Y4_N32
\u_REGISTER_FILE|u_R2|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R2|r_STATE[14]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(14));

-- Location: FF_X48_Y4_N2
\u_REGISTER_FILE|u_R6|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(14));

-- Location: FF_X48_Y4_N8
\u_REGISTER_FILE|u_R14|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(14));

-- Location: LABCELL_X48_Y4_N9
\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(14) & ( \u_REGISTER_FILE|u_R14|r_STATE\(14) & ( ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(14)))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(14) & ( \u_REGISTER_FILE|u_R14|r_STATE\(14) & ( (!\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R2|r_STATE\(14))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R10|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(14) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R2|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\))) # (\i_RF_RQ_addr[3]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(14)))) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(14) & ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(14) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\);

-- Location: FF_X48_Y2_N13
\u_REGISTER_FILE|u_R13|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(14));

-- Location: FF_X48_Y3_N43
\u_REGISTER_FILE|u_R11|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(14));

-- Location: FF_X47_Y3_N28
\u_REGISTER_FILE|u_R1|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(14));

-- Location: FF_X47_Y3_N17
\u_REGISTER_FILE|u_R5|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(14));

-- Location: FF_X47_Y4_N19
\u_REGISTER_FILE|u_R7|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(14));

-- Location: FF_X48_Y2_N34
\u_REGISTER_FILE|u_R3|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[14]~14_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(14));

-- Location: MLABCELL_X47_Y4_N18
\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(14) & ( \u_REGISTER_FILE|u_R3|r_STATE\(14) & ( ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R5|r_STATE\(14))))) # (\i_RF_RQ_addr[1]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(14) & ( \u_REGISTER_FILE|u_R3|r_STATE\(14) & ( (!\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R1|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))))) # (\i_RF_RQ_addr[1]~input_o\ & (!\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(14) & ( 
-- !\u_REGISTER_FILE|u_R3|r_STATE\(14) & ( (!\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- (\i_RF_RQ_addr[2]~input_o\)) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R3|r_STATE\(14) & ( (!\i_RF_RQ_addr[1]~input_o\ & ((!\i_RF_RQ_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(14))) # (\i_RF_RQ_addr[2]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\);

-- Location: LABCELL_X48_Y3_N42
\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(14) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(14)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(14)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(14) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R15|r_STATE\(14)))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R13|r_STATE\(14))))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(14) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(14) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_R13|r_STATE\(14)) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(14) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(14) & (\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R13|r_STATE\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datab => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(14),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~70_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\);

-- Location: LABCELL_X48_Y3_N36
\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~74_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ & ( ((\i_RF_RQ_addr[0]~input_o\) # (\i_RF_RQ_addr[1]~input_o\)) # 
-- (\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ & ( ((\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\ & !\i_RF_RQ_addr[1]~input_o\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\))) ) ) ) 
-- # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~72_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~71_combout\ & ( (\u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~73_combout\ & (!\i_RF_RQ_addr[1]~input_o\ & !\i_RF_RQ_addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100000111000001001111010011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~73_combout\,
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~72_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[14]~71_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~74_combout\);

-- Location: FF_X48_Y3_N37
\u_REGISTER_FILE|u_RQ|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[14]~74_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(14));

-- Location: LABCELL_X45_Y1_N42
\u_ALU|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~57_sumout\ = SUM(( \u_REGISTER_FILE|u_RP|r_STATE\(14) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(14) ) + ( \u_ALU|Add0~54\ ))
-- \u_ALU|Add0~58\ = CARRY(( \u_REGISTER_FILE|u_RP|r_STATE\(14) ) + ( \u_REGISTER_FILE|u_RQ|r_STATE\(14) ) + ( \u_ALU|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(14),
	cin => \u_ALU|Add0~54\,
	sumout => \u_ALU|Add0~57_sumout\,
	cout => \u_ALU|Add0~58\);

-- Location: FF_X45_Y1_N43
\u_ALU|w_o_ADD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~57_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(14));

-- Location: MLABCELL_X47_Y1_N3
\u_MUX|o_Q[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[14]~14_combout\ = ( \u_ALU|w_o_ADD\(14) & ( (\i_R_DATA[14]~input_o\) # (\i_RF_s~input_o\) ) ) # ( !\u_ALU|w_o_ADD\(14) & ( (!\i_RF_s~input_o\ & \i_R_DATA[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_RF_s~input_o\,
	datad => \ALT_INV_i_R_DATA[14]~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(14),
	combout => \u_MUX|o_Q[14]~14_combout\);

-- Location: MLABCELL_X47_Y2_N33
\u_REGISTER_FILE|u_R15|r_STATE[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[14]~feeder_combout\ = ( \u_MUX|o_Q[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[14]~14_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[14]~feeder_combout\);

-- Location: FF_X47_Y2_N35
\u_REGISTER_FILE|u_R15|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[14]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(14));

-- Location: LABCELL_X48_Y2_N33
\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ = ( \u_REGISTER_FILE|u_R3|r_STATE\(14) & ( \u_REGISTER_FILE|u_R1|r_STATE\(14) & ( (!\i_RF_RP_addr[2]~input_o\) # ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))) # 
-- (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(14)))) ) ) ) # ( !\u_REGISTER_FILE|u_R3|r_STATE\(14) & ( \u_REGISTER_FILE|u_R1|r_STATE\(14) & ( (!\i_RF_RP_addr[2]~input_o\ & (!\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[2]~input_o\ & 
-- ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(14))))) ) ) ) # ( \u_REGISTER_FILE|u_R3|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(14) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(14))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R3|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R1|r_STATE\(14) & ( (\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R5|r_STATE\(14)))) # (\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R7|r_STATE\(14))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\);

-- Location: LABCELL_X48_Y2_N12
\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(14) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(14))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(14))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(14) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(14))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(14)))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(14) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(14))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(14)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(14) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~70_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(14))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(14),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~70_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\);

-- Location: LABCELL_X48_Y4_N3
\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ = ( \u_REGISTER_FILE|u_R6|r_STATE\(14) & ( \u_REGISTER_FILE|u_R14|r_STATE\(14) & ( ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(14)))) # (\i_RF_RP_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(14) & ( \u_REGISTER_FILE|u_R14|r_STATE\(14) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(14))))) # (\i_RF_RP_addr[2]~input_o\ & (\i_RF_RP_addr[3]~input_o\)) ) ) ) # ( \u_REGISTER_FILE|u_R6|r_STATE\(14) & ( 
-- !\u_REGISTER_FILE|u_R14|r_STATE\(14) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(14))))) # (\i_RF_RP_addr[2]~input_o\ & 
-- (!\i_RF_RP_addr[3]~input_o\)) ) ) ) # ( !\u_REGISTER_FILE|u_R6|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R14|r_STATE\(14) & ( (!\i_RF_RP_addr[2]~input_o\ & ((!\i_RF_RP_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(14)))) # (\i_RF_RP_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(14),
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(14),
	datae => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\);

-- Location: LABCELL_X50_Y2_N39
\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(14) & ( \u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R4|r_STATE\(14)))) # 
-- (\i_RF_RP_addr[3]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R8|r_STATE\(14))))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(14) & ( \u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RP_addr[3]~input_o\ & (((!\i_RF_RP_addr[2]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(14)))) # (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(14) & !\i_RF_RP_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(14) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(14) & ( 
-- (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(14) & ((\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[3]~input_o\ & (((\i_RF_RP_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R8|r_STATE\(14))))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(14) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(14) & ( (!\i_RF_RP_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R4|r_STATE\(14) & ((\i_RF_RP_addr[2]~input_o\)))) # (\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R8|r_STATE\(14) & !\i_RF_RP_addr[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(14),
	datab => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datac => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(14),
	datad => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(14),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(14),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\);

-- Location: LABCELL_X48_Y2_N0
\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~74_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ & ( (!\i_RF_RP_addr[0]~input_o\) # (\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (!\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\))) ) ) ) # ( 
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & (\i_RF_RP_addr[1]~input_o\)) # (\i_RF_RP_addr[0]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~72_combout\ & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[14]~73_combout\ & ( (\i_RF_RP_addr[0]~input_o\ & \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~71_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100000011111111000000110011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~71_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~72_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[14]~73_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~74_combout\);

-- Location: FF_X48_Y2_N2
\u_REGISTER_FILE|u_RP|r_STATE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[14]~74_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(14));

-- Location: IOIBUF_X62_Y0_N18
\i_R_DATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_R_DATA(15),
	o => \i_R_DATA[15]~input_o\);

-- Location: FF_X47_Y4_N44
\u_REGISTER_FILE|u_R14|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R14|r_STATE\(15));

-- Location: LABCELL_X48_Y4_N57
\u_REGISTER_FILE|u_R10|r_STATE[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R10|r_STATE[15]~feeder_combout\ = \u_MUX|o_Q[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_MUX|ALT_INV_o_Q[15]~15_combout\,
	combout => \u_REGISTER_FILE|u_R10|r_STATE[15]~feeder_combout\);

-- Location: FF_X48_Y4_N59
\u_REGISTER_FILE|u_R10|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R10|r_STATE[15]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R10|r_STATE\(15));

-- Location: FF_X46_Y4_N52
\u_REGISTER_FILE|u_R2|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R2|r_STATE\(15));

-- Location: FF_X47_Y4_N14
\u_REGISTER_FILE|u_R6|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R6|r_STATE\(15));

-- Location: MLABCELL_X47_Y4_N45
\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\ = ( \i_RF_RQ_addr[2]~input_o\ & ( \u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\) # (\u_REGISTER_FILE|u_R14|r_STATE\(15)) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( 
-- \u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(15)))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R10|r_STATE\(15))) ) ) ) # ( \i_RF_RQ_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R6|r_STATE\(15) 
-- & ( (\i_RF_RQ_addr[3]~input_o\ & \u_REGISTER_FILE|u_R14|r_STATE\(15)) ) ) ) # ( !\i_RF_RQ_addr[2]~input_o\ & ( !\u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(15)))) # (\i_RF_RQ_addr[3]~input_o\ & 
-- (\u_REGISTER_FILE|u_R10|r_STATE\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(15),
	datac => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(15),
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(15),
	datae => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\);

-- Location: FF_X50_Y3_N20
\u_REGISTER_FILE|u_R4|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R4|r_STATE\(15));

-- Location: FF_X50_Y3_N59
\u_REGISTER_FILE|u_R12|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R12|r_STATE\(15));

-- Location: FF_X51_Y3_N47
\u_REGISTER_FILE|u_R0|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R0|r_STATE\(15));

-- Location: LABCELL_X50_Y3_N57
\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(15) & ( \u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R4|r_STATE\(15))))) # 
-- (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R8|r_STATE\(15)))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(15) & ( \u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((!\i_RF_RQ_addr[2]~input_o\) # 
-- (\u_REGISTER_FILE|u_R4|r_STATE\(15))))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(15) & (!\i_RF_RQ_addr[2]~input_o\))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(15) & ( 
-- (!\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(15))))) # (\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # (\u_REGISTER_FILE|u_R8|r_STATE\(15)))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(15) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RQ_addr[3]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(15))))) # (\i_RF_RQ_addr[3]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(15) & (!\i_RF_RQ_addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[3]~input_o\,
	datab => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(15),
	datac => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\);

-- Location: FF_X48_Y2_N19
\u_REGISTER_FILE|u_R13|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R13|r_STATE\(15));

-- Location: MLABCELL_X47_Y2_N3
\u_REGISTER_FILE|u_R15|r_STATE[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R15|r_STATE[15]~feeder_combout\ = ( \u_MUX|o_Q[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[15]~15_combout\,
	combout => \u_REGISTER_FILE|u_R15|r_STATE[15]~feeder_combout\);

-- Location: FF_X47_Y2_N5
\u_REGISTER_FILE|u_R15|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R15|r_STATE[15]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R15|r_STATE\(15));

-- Location: FF_X48_Y3_N13
\u_REGISTER_FILE|u_R11|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R11|r_STATE\(15));

-- Location: LABCELL_X43_Y3_N54
\u_REGISTER_FILE|u_R1|r_STATE[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R1|r_STATE[15]~feeder_combout\ = ( \u_MUX|o_Q[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[15]~15_combout\,
	combout => \u_REGISTER_FILE|u_R1|r_STATE[15]~feeder_combout\);

-- Location: FF_X43_Y3_N56
\u_REGISTER_FILE|u_R1|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R1|r_STATE[15]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R1|r_STATE\(15));

-- Location: LABCELL_X43_Y3_N48
\u_REGISTER_FILE|u_R3|r_STATE[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R3|r_STATE[15]~feeder_combout\ = ( \u_MUX|o_Q[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[15]~15_combout\,
	combout => \u_REGISTER_FILE|u_R3|r_STATE[15]~feeder_combout\);

-- Location: FF_X43_Y3_N50
\u_REGISTER_FILE|u_R3|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R3|r_STATE[15]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R3|r_STATE\(15));

-- Location: FF_X43_Y3_N8
\u_REGISTER_FILE|u_R7|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R7|r_STATE\(15));

-- Location: LABCELL_X42_Y3_N9
\u_REGISTER_FILE|u_R5|r_STATE[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_R5|r_STATE[15]~feeder_combout\ = ( \u_MUX|o_Q[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_MUX|ALT_INV_o_Q[15]~15_combout\,
	combout => \u_REGISTER_FILE|u_R5|r_STATE[15]~feeder_combout\);

-- Location: FF_X42_Y3_N11
\u_REGISTER_FILE|u_R5|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_R5|r_STATE[15]~feeder_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R5|r_STATE\(15));

-- Location: LABCELL_X43_Y3_N6
\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ = ( \u_REGISTER_FILE|u_R7|r_STATE\(15) & ( \u_REGISTER_FILE|u_R5|r_STATE\(15) & ( ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(15))) # (\i_RF_RQ_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_R3|r_STATE\(15))))) # (\i_RF_RQ_addr[2]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(15) & ( \u_REGISTER_FILE|u_R5|r_STATE\(15) & ( (!\i_RF_RQ_addr[1]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R1|r_STATE\(15)))) # (\i_RF_RQ_addr[1]~input_o\ & (((\u_REGISTER_FILE|u_R3|r_STATE\(15) & !\i_RF_RQ_addr[2]~input_o\)))) ) ) ) # ( \u_REGISTER_FILE|u_R7|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(15) & ( 
-- (!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(15) & ((!\i_RF_RQ_addr[2]~input_o\)))) # (\i_RF_RQ_addr[1]~input_o\ & (((\i_RF_RQ_addr[2]~input_o\) # (\u_REGISTER_FILE|u_R3|r_STATE\(15))))) ) ) ) # ( !\u_REGISTER_FILE|u_R7|r_STATE\(15) & ( 
-- !\u_REGISTER_FILE|u_R5|r_STATE\(15) & ( (!\i_RF_RQ_addr[2]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\ & (\u_REGISTER_FILE|u_R1|r_STATE\(15))) # (\i_RF_RQ_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_R3|r_STATE\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(15),
	datab => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(15),
	datad => \ALT_INV_i_RF_RQ_addr[2]~input_o\,
	datae => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\);

-- Location: LABCELL_X48_Y3_N12
\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ = ( \u_REGISTER_FILE|u_R11|r_STATE\(15) & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(15))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(15)))) ) ) ) # ( !\u_REGISTER_FILE|u_R11|r_STATE\(15) & ( 
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\) # (\u_REGISTER_FILE|u_R15|r_STATE\(15))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R13|r_STATE\(15) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) ) # ( \u_REGISTER_FILE|u_R11|r_STATE\(15) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & 
-- (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(15))))) # (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\)) # (\u_REGISTER_FILE|u_R13|r_STATE\(15)))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R11|r_STATE\(15) & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (((\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\ & \u_REGISTER_FILE|u_R15|r_STATE\(15))))) # 
-- (\u_REGISTER_FILE|u_RQ|r_STATE[15]~1_combout\ & (\u_REGISTER_FILE|u_R13|r_STATE\(15) & (!\u_REGISTER_FILE|u_RQ|r_STATE[15]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~1_combout\,
	datab => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(15),
	datac => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE[15]~0_combout\,
	datad => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~75_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\);

-- Location: LABCELL_X48_Y3_N21
\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~79_combout\ = ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ & ( ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\)) # 
-- (\i_RF_RQ_addr[0]~input_o\) ) ) ) # ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ & ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ & ( ((\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\)) # (\i_RF_RQ_addr[0]~input_o\) ) ) ) # 
-- ( \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & ((!\i_RF_RQ_addr[1]~input_o\) # (\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~78_combout\ & ( !\u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~76_combout\ & ( (!\i_RF_RQ_addr[0]~input_o\ & (\i_RF_RQ_addr[1]~input_o\ & \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~77_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101001010101010111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RQ_addr[0]~input_o\,
	datac => \ALT_INV_i_RF_RQ_addr[1]~input_o\,
	datad => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~77_combout\,
	datae => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~78_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RQ|ALT_INV_o_Q[15]~76_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~79_combout\);

-- Location: FF_X48_Y3_N22
\u_REGISTER_FILE|u_RQ|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RQ|o_Q[15]~79_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RQ_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RQ|r_STATE\(15));

-- Location: LABCELL_X45_Y1_N45
\u_ALU|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ALU|Add0~61_sumout\ = SUM(( \u_REGISTER_FILE|u_RQ|r_STATE\(15) ) + ( \u_REGISTER_FILE|u_RP|r_STATE\(15) ) + ( \u_ALU|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE\(15),
	datad => \u_REGISTER_FILE|u_RQ|ALT_INV_r_STATE\(15),
	cin => \u_ALU|Add0~58\,
	sumout => \u_ALU|Add0~61_sumout\);

-- Location: FF_X45_Y1_N47
\u_ALU|w_o_ADD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_ALU|Add0~61_sumout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_ALU_s0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ALU|w_o_ADD\(15));

-- Location: LABCELL_X50_Y3_N21
\u_MUX|o_Q[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_MUX|o_Q[15]~15_combout\ = ( \i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(15) ) ) # ( !\i_RF_s~input_o\ & ( \u_ALU|w_o_ADD\(15) & ( \i_R_DATA[15]~input_o\ ) ) ) # ( !\i_RF_s~input_o\ & ( !\u_ALU|w_o_ADD\(15) & ( \i_R_DATA[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_R_DATA[15]~input_o\,
	datae => \ALT_INV_i_RF_s~input_o\,
	dataf => \u_ALU|ALT_INV_w_o_ADD\(15),
	combout => \u_MUX|o_Q[15]~15_combout\);

-- Location: FF_X50_Y3_N26
\u_REGISTER_FILE|u_R8|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	asdata => \u_MUX|o_Q[15]~15_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \u_REGISTER_FILE|u_DEMUX|o_S8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_R8|r_STATE\(15));

-- Location: LABCELL_X50_Y3_N27
\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\ = ( \u_REGISTER_FILE|u_R12|r_STATE\(15) & ( \u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # (\u_REGISTER_FILE|u_R8|r_STATE\(15)))) # 
-- (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R4|r_STATE\(15)) # (\i_RF_RP_addr[3]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(15) & ( \u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\)) # 
-- (\u_REGISTER_FILE|u_R8|r_STATE\(15)))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(15))))) ) ) ) # ( \u_REGISTER_FILE|u_R12|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R0|r_STATE\(15) & ( 
-- (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(15) & (\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((\u_REGISTER_FILE|u_R4|r_STATE\(15)) # (\i_RF_RP_addr[3]~input_o\)))) ) ) ) # ( !\u_REGISTER_FILE|u_R12|r_STATE\(15) & ( 
-- !\u_REGISTER_FILE|u_R0|r_STATE\(15) & ( (!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R8|r_STATE\(15) & (\i_RF_RP_addr[3]~input_o\))) # (\i_RF_RP_addr[2]~input_o\ & (((!\i_RF_RP_addr[3]~input_o\ & \u_REGISTER_FILE|u_R4|r_STATE\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R8|ALT_INV_r_STATE\(15),
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datad => \u_REGISTER_FILE|u_R4|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R12|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_R0|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\);

-- Location: MLABCELL_X47_Y4_N15
\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\ = ( \u_REGISTER_FILE|u_R10|r_STATE\(15) & ( \u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RP_addr[3]~input_o\ & (((\u_REGISTER_FILE|u_R2|r_STATE\(15))) # (\i_RF_RP_addr[2]~input_o\))) # 
-- (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R14|r_STATE\(15))))) ) ) ) # ( !\u_REGISTER_FILE|u_R10|r_STATE\(15) & ( \u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RP_addr[3]~input_o\ & 
-- (((\u_REGISTER_FILE|u_R2|r_STATE\(15))) # (\i_RF_RP_addr[2]~input_o\))) # (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R14|r_STATE\(15)))) ) ) ) # ( \u_REGISTER_FILE|u_R10|r_STATE\(15) & ( 
-- !\u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(15))))) # (\i_RF_RP_addr[3]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\) # ((\u_REGISTER_FILE|u_R14|r_STATE\(15))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R10|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R6|r_STATE\(15) & ( (!\i_RF_RP_addr[3]~input_o\ & (!\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R2|r_STATE\(15))))) # (\i_RF_RP_addr[3]~input_o\ & (\i_RF_RP_addr[2]~input_o\ & 
-- (\u_REGISTER_FILE|u_R14|r_STATE\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[3]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R14|ALT_INV_r_STATE\(15),
	datad => \u_REGISTER_FILE|u_R2|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R10|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_R6|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\);

-- Location: LABCELL_X43_Y3_N0
\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ = ( \u_REGISTER_FILE|u_R1|r_STATE\(15) & ( \u_REGISTER_FILE|u_R5|r_STATE\(15) & ( (!\i_RF_RP_addr[1]~input_o\) # ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(15))) # 
-- (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(15))))) ) ) ) # ( !\u_REGISTER_FILE|u_R1|r_STATE\(15) & ( \u_REGISTER_FILE|u_R5|r_STATE\(15) & ( (!\i_RF_RP_addr[1]~input_o\ & (\i_RF_RP_addr[2]~input_o\)) # (\i_RF_RP_addr[1]~input_o\ & 
-- ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(15))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(15)))))) ) ) ) # ( \u_REGISTER_FILE|u_R1|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(15) & ( 
-- (!\i_RF_RP_addr[1]~input_o\ & (!\i_RF_RP_addr[2]~input_o\)) # (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(15))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(15)))))) ) ) ) # ( 
-- !\u_REGISTER_FILE|u_R1|r_STATE\(15) & ( !\u_REGISTER_FILE|u_R5|r_STATE\(15) & ( (\i_RF_RP_addr[1]~input_o\ & ((!\i_RF_RP_addr[2]~input_o\ & (\u_REGISTER_FILE|u_R3|r_STATE\(15))) # (\i_RF_RP_addr[2]~input_o\ & ((\u_REGISTER_FILE|u_R7|r_STATE\(15)))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[2]~input_o\,
	datac => \u_REGISTER_FILE|u_R3|ALT_INV_r_STATE\(15),
	datad => \u_REGISTER_FILE|u_R7|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R1|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_R5|ALT_INV_r_STATE\(15),
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\);

-- Location: LABCELL_X48_Y2_N18
\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\ = ( \u_REGISTER_FILE|u_R13|r_STATE\(15) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\) # ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(15))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(15))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(15) & ( \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ & ( 
-- (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & (((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(15))) # 
-- (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(15)))))) ) ) ) # ( \u_REGISTER_FILE|u_R13|r_STATE\(15) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ & ( (!\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & 
-- (((\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\)))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & (\u_REGISTER_FILE|u_R15|r_STATE\(15))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- ((\u_REGISTER_FILE|u_R11|r_STATE\(15)))))) ) ) ) # ( !\u_REGISTER_FILE|u_R13|r_STATE\(15) & ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~75_combout\ & ( (\u_REGISTER_FILE|u_RP|r_STATE[0]~0_combout\ & ((!\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & 
-- (\u_REGISTER_FILE|u_R15|r_STATE\(15))) # (\u_REGISTER_FILE|u_RP|r_STATE[0]~1_combout\ & ((\u_REGISTER_FILE|u_R11|r_STATE\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_REGISTER_FILE|u_R15|ALT_INV_r_STATE\(15),
	datab => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~0_combout\,
	datac => \u_REGISTER_FILE|u_RP|ALT_INV_r_STATE[0]~1_combout\,
	datad => \u_REGISTER_FILE|u_R11|ALT_INV_r_STATE\(15),
	datae => \u_REGISTER_FILE|u_R13|ALT_INV_r_STATE\(15),
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~75_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\);

-- Location: LABCELL_X48_Y2_N36
\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~79_combout\ = ( \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\ & ( ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\)) # (\i_RF_RP_addr[1]~input_o\ & 
-- ((\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\)))) # (\i_RF_RP_addr[0]~input_o\) ) ) # ( !\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~76_combout\ & ( (!\i_RF_RP_addr[0]~input_o\ & ((!\i_RF_RP_addr[1]~input_o\ & (\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~78_combout\)) # 
-- (\i_RF_RP_addr[1]~input_o\ & ((\u_REGISTER_FILE|u_MUX_RP|o_Q[15]~77_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_RF_RP_addr[0]~input_o\,
	datab => \ALT_INV_i_RF_RP_addr[1]~input_o\,
	datac => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~78_combout\,
	datad => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~77_combout\,
	dataf => \u_REGISTER_FILE|u_MUX_RP|ALT_INV_o_Q[15]~76_combout\,
	combout => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~79_combout\);

-- Location: FF_X48_Y2_N38
\u_REGISTER_FILE|u_RP|r_STATE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \u_REGISTER_FILE|u_MUX_RP|o_Q[15]~79_combout\,
	clrn => \i_CLR_N~inputCLKENA0_outclk\,
	ena => \i_RF_RP_rd~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_REGISTER_FILE|u_RP|r_STATE\(15));

-- Location: LABCELL_X40_Y17_N0
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


