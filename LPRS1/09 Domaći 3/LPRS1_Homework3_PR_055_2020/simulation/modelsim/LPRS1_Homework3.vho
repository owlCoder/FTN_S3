-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/02/2021 12:14:10"

-- 
-- Device: Altera 10M16SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lprs1_homework3 IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_base : IN std_logic_vector(1 DOWNTO 0);
	i_sequence : IN std_logic_vector(63 DOWNTO 0);
	i_load_sequence : IN std_logic;
	i_base_src_sel : IN std_logic;
	i_cnt_subseq_sel : IN std_logic_vector(1 DOWNTO 0);
	o_cnt_subseq : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END lprs1_homework3;

-- Design Ports Information
-- o_cnt_subseq[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_cnt_subseq[1]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_cnt_subseq[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- o_cnt_subseq[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- i_sequence[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[2]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[3]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[5]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[6]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[7]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[8]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[9]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[10]	=>  Location: PIN_M13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[11]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[12]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[13]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[14]	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[15]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[16]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[17]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[18]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[19]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[20]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[21]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[22]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[23]	=>  Location: PIN_L11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[24]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[25]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[26]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[27]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[28]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[29]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[30]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[31]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[32]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[33]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[34]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[35]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[36]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[37]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[38]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[39]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[40]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[41]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[42]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[43]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[44]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[45]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[46]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[47]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[48]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[49]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[50]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[51]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[52]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[53]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[54]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[55]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[56]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[57]	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[58]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[59]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[60]	=>  Location: PIN_M12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[61]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_cnt_subseq_sel[1]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_cnt_subseq_sel[0]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_clk	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_rst	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_base[1]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_base_src_sel	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_base[0]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[63]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_load_sequence	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_sequence[62]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF lprs1_homework3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_base : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_sequence : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_i_load_sequence : std_logic;
SIGNAL ww_i_base_src_sel : std_logic;
SIGNAL ww_i_cnt_subseq_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_cnt_subseq : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_sequence[0]~input_o\ : std_logic;
SIGNAL \i_sequence[1]~input_o\ : std_logic;
SIGNAL \i_sequence[2]~input_o\ : std_logic;
SIGNAL \i_sequence[3]~input_o\ : std_logic;
SIGNAL \i_sequence[4]~input_o\ : std_logic;
SIGNAL \i_sequence[5]~input_o\ : std_logic;
SIGNAL \i_sequence[6]~input_o\ : std_logic;
SIGNAL \i_sequence[7]~input_o\ : std_logic;
SIGNAL \i_sequence[8]~input_o\ : std_logic;
SIGNAL \i_sequence[9]~input_o\ : std_logic;
SIGNAL \i_sequence[10]~input_o\ : std_logic;
SIGNAL \i_sequence[11]~input_o\ : std_logic;
SIGNAL \i_sequence[12]~input_o\ : std_logic;
SIGNAL \i_sequence[13]~input_o\ : std_logic;
SIGNAL \i_sequence[14]~input_o\ : std_logic;
SIGNAL \i_sequence[15]~input_o\ : std_logic;
SIGNAL \i_sequence[16]~input_o\ : std_logic;
SIGNAL \i_sequence[17]~input_o\ : std_logic;
SIGNAL \i_sequence[18]~input_o\ : std_logic;
SIGNAL \i_sequence[19]~input_o\ : std_logic;
SIGNAL \i_sequence[20]~input_o\ : std_logic;
SIGNAL \i_sequence[21]~input_o\ : std_logic;
SIGNAL \i_sequence[22]~input_o\ : std_logic;
SIGNAL \i_sequence[23]~input_o\ : std_logic;
SIGNAL \i_sequence[24]~input_o\ : std_logic;
SIGNAL \i_sequence[25]~input_o\ : std_logic;
SIGNAL \i_sequence[26]~input_o\ : std_logic;
SIGNAL \i_sequence[27]~input_o\ : std_logic;
SIGNAL \i_sequence[28]~input_o\ : std_logic;
SIGNAL \i_sequence[29]~input_o\ : std_logic;
SIGNAL \i_sequence[30]~input_o\ : std_logic;
SIGNAL \i_sequence[31]~input_o\ : std_logic;
SIGNAL \i_sequence[32]~input_o\ : std_logic;
SIGNAL \i_sequence[33]~input_o\ : std_logic;
SIGNAL \i_sequence[34]~input_o\ : std_logic;
SIGNAL \i_sequence[35]~input_o\ : std_logic;
SIGNAL \i_sequence[36]~input_o\ : std_logic;
SIGNAL \i_sequence[37]~input_o\ : std_logic;
SIGNAL \i_sequence[38]~input_o\ : std_logic;
SIGNAL \i_sequence[39]~input_o\ : std_logic;
SIGNAL \i_sequence[40]~input_o\ : std_logic;
SIGNAL \i_sequence[41]~input_o\ : std_logic;
SIGNAL \i_sequence[42]~input_o\ : std_logic;
SIGNAL \i_sequence[43]~input_o\ : std_logic;
SIGNAL \i_sequence[44]~input_o\ : std_logic;
SIGNAL \i_sequence[45]~input_o\ : std_logic;
SIGNAL \i_sequence[46]~input_o\ : std_logic;
SIGNAL \i_sequence[47]~input_o\ : std_logic;
SIGNAL \i_sequence[48]~input_o\ : std_logic;
SIGNAL \i_sequence[49]~input_o\ : std_logic;
SIGNAL \i_sequence[50]~input_o\ : std_logic;
SIGNAL \i_sequence[51]~input_o\ : std_logic;
SIGNAL \i_sequence[52]~input_o\ : std_logic;
SIGNAL \i_sequence[53]~input_o\ : std_logic;
SIGNAL \i_sequence[54]~input_o\ : std_logic;
SIGNAL \i_sequence[55]~input_o\ : std_logic;
SIGNAL \i_sequence[56]~input_o\ : std_logic;
SIGNAL \i_sequence[57]~input_o\ : std_logic;
SIGNAL \i_sequence[58]~input_o\ : std_logic;
SIGNAL \i_sequence[59]~input_o\ : std_logic;
SIGNAL \i_sequence[60]~input_o\ : std_logic;
SIGNAL \i_sequence[61]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \o_cnt_subseq[0]~output_o\ : std_logic;
SIGNAL \o_cnt_subseq[1]~output_o\ : std_logic;
SIGNAL \o_cnt_subseq[2]~output_o\ : std_logic;
SIGNAL \o_cnt_subseq[3]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_cnt_subseq1~1_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_base[0]~input_o\ : std_logic;
SIGNAL \i_load_sequence~input_o\ : std_logic;
SIGNAL \i_sequence[62]~input_o\ : std_logic;
SIGNAL \s_sh_reg[62]~0_combout\ : std_logic;
SIGNAL \i_base_src_sel~input_o\ : std_logic;
SIGNAL \s_base[0]~1_combout\ : std_logic;
SIGNAL \i_base[1]~input_o\ : std_logic;
SIGNAL \i_sequence[63]~input_o\ : std_logic;
SIGNAL \s_n_sh_reg[63]~0_combout\ : std_logic;
SIGNAL \s_base[1]~0_combout\ : std_logic;
SIGNAL \s_next_state.C0T1~0_combout\ : std_logic;
SIGNAL \s_state.C0T1~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \s_state.C0S012~q\ : std_logic;
SIGNAL \s_next_state.C0A1~0_combout\ : std_logic;
SIGNAL \s_state.C0A1~q\ : std_logic;
SIGNAL \s_next_state.C0A1T2~0_combout\ : std_logic;
SIGNAL \s_state.C0A1T2~q\ : std_logic;
SIGNAL \s_cnt_subseq1~2_combout\ : std_logic;
SIGNAL \s_cnt_subseq1~3_combout\ : std_logic;
SIGNAL \s_cnt_subseq1~0_combout\ : std_logic;
SIGNAL \i_cnt_subseq_sel[1]~input_o\ : std_logic;
SIGNAL \s_cnt_subseq2[0]~1_combout\ : std_logic;
SIGNAL \s_next_state.C0T1T2~0_combout\ : std_logic;
SIGNAL \s_state.C0T1T2~q\ : std_logic;
SIGNAL \i_cnt_subseq_sel[0]~input_o\ : std_logic;
SIGNAL \s_cnt_subseq0~3_combout\ : std_logic;
SIGNAL \s_cnt_subseq0~2_combout\ : std_logic;
SIGNAL \s_next_state.C0A1C2~0_combout\ : std_logic;
SIGNAL \s_state.C0A1C2~q\ : std_logic;
SIGNAL \s_cnt_subseq0[0]~1_combout\ : std_logic;
SIGNAL \s_cnt_subseq0~4_combout\ : std_logic;
SIGNAL \s_cnt_subseq0~5_combout\ : std_logic;
SIGNAL \s_cnt_subseq0~0_combout\ : std_logic;
SIGNAL \o_cnt_subseq~0_combout\ : std_logic;
SIGNAL \o_cnt_subseq~1_combout\ : std_logic;
SIGNAL \s_cnt_subseq2~0_combout\ : std_logic;
SIGNAL \o_cnt_subseq~2_combout\ : std_logic;
SIGNAL \o_cnt_subseq~3_combout\ : std_logic;
SIGNAL \o_cnt_subseq~4_combout\ : std_logic;
SIGNAL \o_cnt_subseq~5_combout\ : std_logic;
SIGNAL s_sh_base : std_logic_vector(1 DOWNTO 0);
SIGNAL s_cnt_subseq2 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_cnt_subseq0 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_cnt_subseq1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_base <= i_base;
ww_i_sequence <= i_sequence;
ww_i_load_sequence <= i_load_sequence;
ww_i_base_src_sel <= i_base_src_sel;
ww_i_cnt_subseq_sel <= i_cnt_subseq_sel;
o_cnt_subseq <= ww_o_cnt_subseq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

\i_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rst~input_o\);
\ALT_INV_i_rst~inputclkctrl_outclk\ <= NOT \i_rst~inputclkctrl_outclk\;
\ALT_INV_i_clk~inputclkctrl_outclk\ <= NOT \i_clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y19_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y17_N2
\o_cnt_subseq[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_cnt_subseq~1_combout\,
	devoe => ww_devoe,
	o => \o_cnt_subseq[0]~output_o\);

-- Location: IOOBUF_X8_Y17_N2
\o_cnt_subseq[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_cnt_subseq~3_combout\,
	devoe => ww_devoe,
	o => \o_cnt_subseq[1]~output_o\);

-- Location: IOOBUF_X8_Y17_N16
\o_cnt_subseq[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_cnt_subseq~4_combout\,
	devoe => ww_devoe,
	o => \o_cnt_subseq[2]~output_o\);

-- Location: IOOBUF_X14_Y17_N23
\o_cnt_subseq[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_cnt_subseq~5_combout\,
	devoe => ww_devoe,
	o => \o_cnt_subseq[3]~output_o\);

-- Location: IOIBUF_X0_Y9_N22
\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
\i_clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y16_N28
\s_cnt_subseq1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq1~1_combout\ = (!s_cnt_subseq1(3) & (s_cnt_subseq1(0) $ (s_cnt_subseq1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq1(0),
	datac => s_cnt_subseq1(1),
	datad => s_cnt_subseq1(3),
	combout => \s_cnt_subseq1~1_combout\);

-- Location: IOIBUF_X0_Y8_N15
\i_rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: CLKCTRL_G3
\i_rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X12_Y17_N8
\i_base[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_base(0),
	o => \i_base[0]~input_o\);

-- Location: IOIBUF_X12_Y17_N22
\i_load_sequence~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_load_sequence,
	o => \i_load_sequence~input_o\);

-- Location: IOIBUF_X16_Y17_N1
\i_sequence[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(62),
	o => \i_sequence[62]~input_o\);

-- Location: LCCOMB_X11_Y16_N4
\s_sh_reg[62]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_sh_reg[62]~0_combout\ = (\i_load_sequence~input_o\ & \i_sequence[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_load_sequence~input_o\,
	datad => \i_sequence[62]~input_o\,
	combout => \s_sh_reg[62]~0_combout\);

-- Location: FF_X11_Y16_N13
\s_sh_base[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	asdata => \s_sh_reg[62]~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sh_base(0));

-- Location: IOIBUF_X12_Y17_N15
\i_base_src_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_base_src_sel,
	o => \i_base_src_sel~input_o\);

-- Location: LCCOMB_X11_Y16_N12
\s_base[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_base[0]~1_combout\ = (\i_base_src_sel~input_o\ & ((s_sh_base(0)))) # (!\i_base_src_sel~input_o\ & (\i_base[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_base[0]~input_o\,
	datac => s_sh_base(0),
	datad => \i_base_src_sel~input_o\,
	combout => \s_base[0]~1_combout\);

-- Location: IOIBUF_X12_Y17_N1
\i_base[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_base(1),
	o => \i_base[1]~input_o\);

-- Location: IOIBUF_X12_Y17_N29
\i_sequence[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(63),
	o => \i_sequence[63]~input_o\);

-- Location: LCCOMB_X11_Y16_N26
\s_n_sh_reg[63]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_n_sh_reg[63]~0_combout\ = (\i_load_sequence~input_o\ & \i_sequence[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_load_sequence~input_o\,
	datad => \i_sequence[63]~input_o\,
	combout => \s_n_sh_reg[63]~0_combout\);

-- Location: FF_X11_Y16_N17
\s_sh_base[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	asdata => \s_n_sh_reg[63]~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sh_base(1));

-- Location: LCCOMB_X11_Y16_N16
\s_base[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_base[1]~0_combout\ = (\i_base_src_sel~input_o\ & ((s_sh_base(1)))) # (!\i_base_src_sel~input_o\ & (\i_base[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_base[1]~input_o\,
	datac => s_sh_base(1),
	datad => \i_base_src_sel~input_o\,
	combout => \s_base[1]~0_combout\);

-- Location: LCCOMB_X11_Y16_N6
\s_next_state.C0T1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_next_state.C0T1~0_combout\ = (\s_base[0]~1_combout\ & (\s_base[1]~0_combout\ & \s_state.C0S012~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_base[0]~1_combout\,
	datab => \s_base[1]~0_combout\,
	datac => \s_state.C0S012~q\,
	combout => \s_next_state.C0T1~0_combout\);

-- Location: FF_X11_Y16_N7
\s_state.C0T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_next_state.C0T1~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0T1~q\);

-- Location: LCCOMB_X11_Y16_N8
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\s_state.C0T1~q\ & (!\s_state.C0S012~q\ & !\s_state.C0A1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.C0T1~q\,
	datac => \s_state.C0S012~q\,
	datad => \s_state.C0A1~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X11_Y16_N22
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\s_base[1]~0_combout\ & (\Selector1~0_combout\ & \s_base[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_base[1]~0_combout\,
	datac => \Selector1~0_combout\,
	datad => \s_base[0]~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X11_Y16_N23
\s_state.C0S012\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0S012~q\);

-- Location: LCCOMB_X11_Y16_N0
\s_next_state.C0A1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_next_state.C0A1~0_combout\ = (!\s_base[0]~1_combout\ & (!\s_base[1]~0_combout\ & \s_state.C0S012~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_base[0]~1_combout\,
	datab => \s_base[1]~0_combout\,
	datac => \s_state.C0S012~q\,
	combout => \s_next_state.C0A1~0_combout\);

-- Location: FF_X11_Y16_N1
\s_state.C0A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_next_state.C0A1~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0A1~q\);

-- Location: LCCOMB_X11_Y16_N10
\s_next_state.C0A1T2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_next_state.C0A1T2~0_combout\ = (\s_base[0]~1_combout\ & (\s_base[1]~0_combout\ & \s_state.C0A1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_base[0]~1_combout\,
	datab => \s_base[1]~0_combout\,
	datad => \s_state.C0A1~q\,
	combout => \s_next_state.C0A1T2~0_combout\);

-- Location: FF_X11_Y16_N11
\s_state.C0A1T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_next_state.C0A1T2~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0A1T2~q\);

-- Location: FF_X10_Y16_N29
\s_cnt_subseq1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq1~1_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0A1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq1(1));

-- Location: LCCOMB_X10_Y16_N24
\s_cnt_subseq1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq1~2_combout\ = (!s_cnt_subseq1(3) & (s_cnt_subseq1(2) $ (((s_cnt_subseq1(0) & s_cnt_subseq1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq1(0),
	datab => s_cnt_subseq1(1),
	datac => s_cnt_subseq1(2),
	datad => s_cnt_subseq1(3),
	combout => \s_cnt_subseq1~2_combout\);

-- Location: FF_X10_Y16_N25
\s_cnt_subseq1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq1~2_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0A1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq1(2));

-- Location: LCCOMB_X10_Y16_N6
\s_cnt_subseq1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq1~3_combout\ = (s_cnt_subseq1(0) & (s_cnt_subseq1(1) & (!s_cnt_subseq1(3) & s_cnt_subseq1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq1(0),
	datab => s_cnt_subseq1(1),
	datac => s_cnt_subseq1(3),
	datad => s_cnt_subseq1(2),
	combout => \s_cnt_subseq1~3_combout\);

-- Location: FF_X10_Y16_N7
\s_cnt_subseq1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq1~3_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0A1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq1(3));

-- Location: LCCOMB_X10_Y16_N12
\s_cnt_subseq1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq1~0_combout\ = (!s_cnt_subseq1(0) & !s_cnt_subseq1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_cnt_subseq1(0),
	datad => s_cnt_subseq1(3),
	combout => \s_cnt_subseq1~0_combout\);

-- Location: FF_X10_Y16_N13
\s_cnt_subseq1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq1~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0A1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq1(0));

-- Location: IOIBUF_X14_Y17_N1
\i_cnt_subseq_sel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_cnt_subseq_sel(1),
	o => \i_cnt_subseq_sel[1]~input_o\);

-- Location: LCCOMB_X11_Y16_N18
\s_cnt_subseq2[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq2[0]~1_combout\ = !s_cnt_subseq2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_cnt_subseq2(0),
	combout => \s_cnt_subseq2[0]~1_combout\);

-- Location: LCCOMB_X11_Y16_N30
\s_next_state.C0T1T2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_next_state.C0T1T2~0_combout\ = (\s_base[0]~1_combout\ & (\s_base[1]~0_combout\ & \s_state.C0T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_base[0]~1_combout\,
	datab => \s_base[1]~0_combout\,
	datad => \s_state.C0T1~q\,
	combout => \s_next_state.C0T1T2~0_combout\);

-- Location: FF_X11_Y16_N31
\s_state.C0T1T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_next_state.C0T1T2~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0T1T2~q\);

-- Location: FF_X11_Y16_N19
\s_cnt_subseq2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq2[0]~1_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0T1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq2(0));

-- Location: IOIBUF_X10_Y17_N15
\i_cnt_subseq_sel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_cnt_subseq_sel(0),
	o => \i_cnt_subseq_sel[0]~input_o\);

-- Location: LCCOMB_X10_Y16_N22
\s_cnt_subseq0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0~3_combout\ = (!s_cnt_subseq0(3) & !\i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_cnt_subseq0(3),
	datac => \i_rst~input_o\,
	combout => \s_cnt_subseq0~3_combout\);

-- Location: LCCOMB_X10_Y16_N16
\s_cnt_subseq0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0~2_combout\ = (!\i_rst~input_o\ & (!s_cnt_subseq0(3) & (s_cnt_subseq0(1) $ (s_cnt_subseq0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => s_cnt_subseq0(3),
	datac => s_cnt_subseq0(1),
	datad => s_cnt_subseq0(0),
	combout => \s_cnt_subseq0~2_combout\);

-- Location: LCCOMB_X11_Y16_N24
\s_next_state.C0A1C2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_next_state.C0A1C2~0_combout\ = (\s_base[0]~1_combout\ & (!\s_base[1]~0_combout\ & \s_state.C0A1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_base[0]~1_combout\,
	datab => \s_base[1]~0_combout\,
	datad => \s_state.C0A1~q\,
	combout => \s_next_state.C0A1C2~0_combout\);

-- Location: FF_X11_Y16_N25
\s_state.C0A1C2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_next_state.C0A1C2~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.C0A1C2~q\);

-- Location: LCCOMB_X10_Y16_N20
\s_cnt_subseq0[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0[0]~1_combout\ = (\i_rst~input_o\) # (\s_state.C0A1C2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst~input_o\,
	datad => \s_state.C0A1C2~q\,
	combout => \s_cnt_subseq0[0]~1_combout\);

-- Location: FF_X10_Y16_N17
\s_cnt_subseq0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq0~2_combout\,
	ena => \s_cnt_subseq0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq0(1));

-- Location: LCCOMB_X10_Y16_N10
\s_cnt_subseq0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0~4_combout\ = (\s_cnt_subseq0~3_combout\ & (s_cnt_subseq0(2) $ (((s_cnt_subseq0(1) & s_cnt_subseq0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cnt_subseq0~3_combout\,
	datab => s_cnt_subseq0(1),
	datac => s_cnt_subseq0(2),
	datad => s_cnt_subseq0(0),
	combout => \s_cnt_subseq0~4_combout\);

-- Location: FF_X10_Y16_N11
\s_cnt_subseq0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq0~4_combout\,
	ena => \s_cnt_subseq0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq0(2));

-- Location: LCCOMB_X10_Y16_N8
\s_cnt_subseq0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0~5_combout\ = (s_cnt_subseq0(2) & (s_cnt_subseq0(0) & (\s_cnt_subseq0~3_combout\ & s_cnt_subseq0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq0(2),
	datab => s_cnt_subseq0(0),
	datac => \s_cnt_subseq0~3_combout\,
	datad => s_cnt_subseq0(1),
	combout => \s_cnt_subseq0~5_combout\);

-- Location: FF_X10_Y16_N9
\s_cnt_subseq0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq0~5_combout\,
	ena => \s_cnt_subseq0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq0(3));

-- Location: LCCOMB_X10_Y16_N0
\s_cnt_subseq0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq0~0_combout\ = (!\i_rst~input_o\ & (!s_cnt_subseq0(3) & !s_cnt_subseq0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => s_cnt_subseq0(3),
	datac => s_cnt_subseq0(0),
	combout => \s_cnt_subseq0~0_combout\);

-- Location: FF_X10_Y16_N1
\s_cnt_subseq0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq0~0_combout\,
	ena => \s_cnt_subseq0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq0(0));

-- Location: LCCOMB_X10_Y16_N18
\o_cnt_subseq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~0_combout\ = (!\i_cnt_subseq_sel[0]~input_o\ & ((\i_cnt_subseq_sel[1]~input_o\ & (s_cnt_subseq2(0))) # (!\i_cnt_subseq_sel[1]~input_o\ & ((s_cnt_subseq0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cnt_subseq_sel[1]~input_o\,
	datab => s_cnt_subseq2(0),
	datac => \i_cnt_subseq_sel[0]~input_o\,
	datad => s_cnt_subseq0(0),
	combout => \o_cnt_subseq~0_combout\);

-- Location: LCCOMB_X10_Y16_N14
\o_cnt_subseq~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~1_combout\ = (\o_cnt_subseq~0_combout\) # ((s_cnt_subseq1(0) & (\i_cnt_subseq_sel[0]~input_o\ & !\i_cnt_subseq_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq1(0),
	datab => \o_cnt_subseq~0_combout\,
	datac => \i_cnt_subseq_sel[0]~input_o\,
	datad => \i_cnt_subseq_sel[1]~input_o\,
	combout => \o_cnt_subseq~1_combout\);

-- Location: LCCOMB_X11_Y16_N20
\s_cnt_subseq2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_cnt_subseq2~0_combout\ = s_cnt_subseq2(1) $ (s_cnt_subseq2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_cnt_subseq2(1),
	datad => s_cnt_subseq2(0),
	combout => \s_cnt_subseq2~0_combout\);

-- Location: FF_X11_Y16_N21
\s_cnt_subseq2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_clk~inputclkctrl_outclk\,
	d => \s_cnt_subseq2~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \s_state.C0T1T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_cnt_subseq2(1));

-- Location: LCCOMB_X10_Y16_N26
\o_cnt_subseq~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~2_combout\ = (!\i_cnt_subseq_sel[0]~input_o\ & ((\i_cnt_subseq_sel[1]~input_o\ & (s_cnt_subseq2(1))) # (!\i_cnt_subseq_sel[1]~input_o\ & ((s_cnt_subseq0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq2(1),
	datab => s_cnt_subseq0(1),
	datac => \i_cnt_subseq_sel[0]~input_o\,
	datad => \i_cnt_subseq_sel[1]~input_o\,
	combout => \o_cnt_subseq~2_combout\);

-- Location: LCCOMB_X10_Y16_N30
\o_cnt_subseq~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~3_combout\ = (\o_cnt_subseq~2_combout\) # ((\i_cnt_subseq_sel[0]~input_o\ & (s_cnt_subseq1(1) & !\i_cnt_subseq_sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_cnt_subseq_sel[0]~input_o\,
	datab => s_cnt_subseq1(1),
	datac => \o_cnt_subseq~2_combout\,
	datad => \i_cnt_subseq_sel[1]~input_o\,
	combout => \o_cnt_subseq~3_combout\);

-- Location: LCCOMB_X10_Y16_N4
\o_cnt_subseq~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~4_combout\ = (!\i_cnt_subseq_sel[1]~input_o\ & ((\i_cnt_subseq_sel[0]~input_o\ & ((s_cnt_subseq1(2)))) # (!\i_cnt_subseq_sel[0]~input_o\ & (s_cnt_subseq0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq0(2),
	datab => s_cnt_subseq1(2),
	datac => \i_cnt_subseq_sel[0]~input_o\,
	datad => \i_cnt_subseq_sel[1]~input_o\,
	combout => \o_cnt_subseq~4_combout\);

-- Location: LCCOMB_X10_Y16_N2
\o_cnt_subseq~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_cnt_subseq~5_combout\ = (!\i_cnt_subseq_sel[1]~input_o\ & ((\i_cnt_subseq_sel[0]~input_o\ & (s_cnt_subseq1(3))) # (!\i_cnt_subseq_sel[0]~input_o\ & ((s_cnt_subseq0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_cnt_subseq1(3),
	datab => s_cnt_subseq0(3),
	datac => \i_cnt_subseq_sel[0]~input_o\,
	datad => \i_cnt_subseq_sel[1]~input_o\,
	combout => \o_cnt_subseq~5_combout\);

-- Location: IOIBUF_X0_Y9_N1
\i_sequence[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(0),
	o => \i_sequence[0]~input_o\);

-- Location: IOIBUF_X50_Y11_N1
\i_sequence[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(1),
	o => \i_sequence[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_sequence[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(2),
	o => \i_sequence[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N29
\i_sequence[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(3),
	o => \i_sequence[3]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\i_sequence[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(4),
	o => \i_sequence[4]~input_o\);

-- Location: IOIBUF_X25_Y23_N15
\i_sequence[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(5),
	o => \i_sequence[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\i_sequence[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(6),
	o => \i_sequence[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_sequence[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(7),
	o => \i_sequence[7]~input_o\);

-- Location: IOIBUF_X50_Y2_N22
\i_sequence[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(8),
	o => \i_sequence[8]~input_o\);

-- Location: IOIBUF_X50_Y2_N15
\i_sequence[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(9),
	o => \i_sequence[9]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_sequence[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(10),
	o => \i_sequence[10]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\i_sequence[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(11),
	o => \i_sequence[11]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\i_sequence[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(12),
	o => \i_sequence[12]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_sequence[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(13),
	o => \i_sequence[13]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\i_sequence[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(14),
	o => \i_sequence[14]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\i_sequence[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(15),
	o => \i_sequence[15]~input_o\);

-- Location: IOIBUF_X19_Y17_N29
\i_sequence[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(16),
	o => \i_sequence[16]~input_o\);

-- Location: IOIBUF_X50_Y8_N22
\i_sequence[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(17),
	o => \i_sequence[17]~input_o\);

-- Location: IOIBUF_X16_Y17_N22
\i_sequence[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(18),
	o => \i_sequence[18]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\i_sequence[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(19),
	o => \i_sequence[19]~input_o\);

-- Location: IOIBUF_X50_Y26_N22
\i_sequence[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(20),
	o => \i_sequence[20]~input_o\);

-- Location: IOIBUF_X25_Y25_N15
\i_sequence[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(21),
	o => \i_sequence[21]~input_o\);

-- Location: IOIBUF_X50_Y24_N8
\i_sequence[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(22),
	o => \i_sequence[22]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\i_sequence[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(23),
	o => \i_sequence[23]~input_o\);

-- Location: IOIBUF_X6_Y0_N8
\i_sequence[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(24),
	o => \i_sequence[24]~input_o\);

-- Location: IOIBUF_X16_Y17_N15
\i_sequence[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(25),
	o => \i_sequence[25]~input_o\);

-- Location: IOIBUF_X50_Y24_N15
\i_sequence[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(26),
	o => \i_sequence[26]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\i_sequence[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(27),
	o => \i_sequence[27]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\i_sequence[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(28),
	o => \i_sequence[28]~input_o\);

-- Location: IOIBUF_X50_Y11_N23
\i_sequence[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(29),
	o => \i_sequence[29]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\i_sequence[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(30),
	o => \i_sequence[30]~input_o\);

-- Location: IOIBUF_X50_Y26_N15
\i_sequence[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(31),
	o => \i_sequence[31]~input_o\);

-- Location: IOIBUF_X50_Y11_N15
\i_sequence[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(32),
	o => \i_sequence[32]~input_o\);

-- Location: IOIBUF_X50_Y21_N1
\i_sequence[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(33),
	o => \i_sequence[33]~input_o\);

-- Location: IOIBUF_X50_Y10_N22
\i_sequence[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(34),
	o => \i_sequence[34]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\i_sequence[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(35),
	o => \i_sequence[35]~input_o\);

-- Location: IOIBUF_X50_Y14_N22
\i_sequence[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(36),
	o => \i_sequence[36]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\i_sequence[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(37),
	o => \i_sequence[37]~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\i_sequence[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(38),
	o => \i_sequence[38]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\i_sequence[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(39),
	o => \i_sequence[39]~input_o\);

-- Location: IOIBUF_X19_Y17_N22
\i_sequence[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(40),
	o => \i_sequence[40]~input_o\);

-- Location: IOIBUF_X50_Y22_N8
\i_sequence[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(41),
	o => \i_sequence[41]~input_o\);

-- Location: IOIBUF_X50_Y11_N8
\i_sequence[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(42),
	o => \i_sequence[42]~input_o\);

-- Location: IOIBUF_X14_Y17_N29
\i_sequence[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(43),
	o => \i_sequence[43]~input_o\);

-- Location: IOIBUF_X50_Y14_N15
\i_sequence[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(44),
	o => \i_sequence[44]~input_o\);

-- Location: IOIBUF_X50_Y25_N22
\i_sequence[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(45),
	o => \i_sequence[45]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\i_sequence[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(46),
	o => \i_sequence[46]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\i_sequence[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(47),
	o => \i_sequence[47]~input_o\);

-- Location: IOIBUF_X16_Y17_N8
\i_sequence[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(48),
	o => \i_sequence[48]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\i_sequence[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(49),
	o => \i_sequence[49]~input_o\);

-- Location: IOIBUF_X50_Y22_N1
\i_sequence[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(50),
	o => \i_sequence[50]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\i_sequence[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(51),
	o => \i_sequence[51]~input_o\);

-- Location: IOIBUF_X50_Y10_N15
\i_sequence[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(52),
	o => \i_sequence[52]~input_o\);

-- Location: IOIBUF_X19_Y17_N15
\i_sequence[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(53),
	o => \i_sequence[53]~input_o\);

-- Location: IOIBUF_X50_Y21_N8
\i_sequence[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(54),
	o => \i_sequence[54]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_sequence[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(55),
	o => \i_sequence[55]~input_o\);

-- Location: IOIBUF_X50_Y2_N8
\i_sequence[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(56),
	o => \i_sequence[56]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\i_sequence[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(57),
	o => \i_sequence[57]~input_o\);

-- Location: IOIBUF_X19_Y17_N1
\i_sequence[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(58),
	o => \i_sequence[58]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\i_sequence[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(59),
	o => \i_sequence[59]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\i_sequence[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(60),
	o => \i_sequence[60]~input_o\);

-- Location: IOIBUF_X50_Y24_N1
\i_sequence[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sequence(61),
	o => \i_sequence[61]~input_o\);

-- Location: UNVM_X0_Y18_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y28_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_o_cnt_subseq(0) <= \o_cnt_subseq[0]~output_o\;

ww_o_cnt_subseq(1) <= \o_cnt_subseq[1]~output_o\;

ww_o_cnt_subseq(2) <= \o_cnt_subseq[2]~output_o\;

ww_o_cnt_subseq(3) <= \o_cnt_subseq[3]~output_o\;
END structure;


