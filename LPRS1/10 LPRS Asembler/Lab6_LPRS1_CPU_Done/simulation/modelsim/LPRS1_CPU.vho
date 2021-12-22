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

-- DATE "12/21/2021 12:01:38"

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

ENTITY 	top IS
    PORT (
	iCLK : IN std_logic;
	inRST : IN std_logic;
	oLED : OUT std_logic_vector(15 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- oLED[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[1]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[4]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[8]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[9]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[10]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[11]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[12]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[13]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[14]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- oLED[15]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- inRST	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_inRST : std_logic;
SIGNAL ww_oLED : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oLED[0]~output_o\ : std_logic;
SIGNAL \oLED[1]~output_o\ : std_logic;
SIGNAL \oLED[2]~output_o\ : std_logic;
SIGNAL \oLED[3]~output_o\ : std_logic;
SIGNAL \oLED[4]~output_o\ : std_logic;
SIGNAL \oLED[5]~output_o\ : std_logic;
SIGNAL \oLED[6]~output_o\ : std_logic;
SIGNAL \oLED[7]~output_o\ : std_logic;
SIGNAL \oLED[8]~output_o\ : std_logic;
SIGNAL \oLED[9]~output_o\ : std_logic;
SIGNAL \oLED[10]~output_o\ : std_logic;
SIGNAL \oLED[11]~output_o\ : std_logic;
SIGNAL \oLED[12]~output_o\ : std_logic;
SIGNAL \oLED[13]~output_o\ : std_logic;
SIGNAL \oLED[14]~output_o\ : std_logic;
SIGNAL \oLED[15]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[0]~5_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[0]~14_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[0]~41_combout\ : std_logic;
SIGNAL \inRST~input_o\ : std_logic;
SIGNAL \inRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \instr_rom_i|oQ[2]~18_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[1]~19_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[4]~15_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[13]~30_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[14]~31_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|Equal10~0_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[11]~26_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[11]~27_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[10]~44_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[10]~45_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[5]~10_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[5]~48_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[7]~17_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~0_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[10]~16_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~2_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~3_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[1]~47_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[8]~25_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~29_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~30_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~427_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~428_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[7]~24_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[7]~50_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[10]~35_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[6]~36_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[10]~37_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[6]~38_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[4]~44_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[7]~39_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[7]~43_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[8]~34_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[8]~42_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[0]~46_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~397_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[2]~38_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[2]~52_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[15]~3_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[15]~2_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[0]~5_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~62_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~33_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~63_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~86_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~5_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[15]~53_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~137_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[3]~14_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[3]~49_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|Equal10~1_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[1]~20_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[1]~21_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~35_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~36_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[4]~32_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[4]~51_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][1]~feeder_combout\ : std_logic;
SIGNAL \cpu_top_i|r2_i|sREG[3]~feeder_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~99_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~24_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oREG_WE[6]~45_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[4]~0_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[4]~1_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[3]~15_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[3]~16_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[3]~19_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~58_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~52_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~22_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~53_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~18_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~54_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~107_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~108_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~28_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~40_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~26_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~43_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~16_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~41_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~20_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~42_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~100_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~101_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~59_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~48_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~51_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~49_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~50_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~104_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~105_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~44_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~47_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~45_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~46_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~102_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~103_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~106_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~109_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~37_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~39_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][3]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~36_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][3]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~96_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~97_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~23_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~17_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][3]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~19_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~21_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~89_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~90_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][3]~15_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~57_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~31_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~27_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~25_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~29_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~91_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~92_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][3]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~32_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][3]~q\ : std_logic;
SIGNAL \data_ram_i|Decoder0~34_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][3]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][3]~16_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~35_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][3]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][3]~17_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~33_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][3]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~93_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~94_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~95_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~98_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~110_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~111_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~112_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~113_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[3]~114_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[3]~15_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[0]~7_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[9]~28_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[9]~29_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~11_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~8_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~5_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~4_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~1_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~31_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~18_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~19_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][0]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~25_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~26_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][0]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~22_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~23_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~20_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~21_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~24_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~27_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][0]~0_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][0]~1_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~7_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~8_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~14_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~15_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][0]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][0]~4_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~11_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~12_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][0]~2_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][0]~3_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][0]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][0]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~9_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~10_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~13_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~16_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~17_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~28_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~32_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[0]~34_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|Equal11~0_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~2_cout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~4\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~7\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~10\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~12_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[3]~16_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[3]~17_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[3]~17_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[3]~18_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~56_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~38_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][1]~5_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~37_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~38_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][1]~10_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~44_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~45_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][1]~8_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][1]~9_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~41_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~42_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][1]~6_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][1]~7_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~39_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~40_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~43_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~46_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~47_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~48_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~49_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~55_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~56_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~50_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~51_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][1]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][1]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][1]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~52_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~53_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~54_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~57_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~58_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~59_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~60_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[1]~61_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[1]~10_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[1]~9_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~6_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[1]~11_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[1]~7_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[1]~8_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[1]~5_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[1]~6_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[1]~9_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~30_combout\ : std_logic;
SIGNAL \data_ram_i|Decoder0~55_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~133_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~134_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~126_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~127_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~130_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~131_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~128_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~129_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~132_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~135_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~115_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~116_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~122_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~123_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~117_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~118_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][4]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][4]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][4]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~119_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~120_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~121_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~124_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~125_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~136_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~138_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~139_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[4]~140_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[4]~18_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~14_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~13\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~15_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[4]~19_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[4]~20_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[4]~2_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[4]~3_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[4]~4_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~6_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][2]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][2]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~82_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~83_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~75_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~76_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~77_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~78_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][2]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][2]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~79_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~80_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~81_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~84_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~64_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~65_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][2]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~71_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~72_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][2]~14_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][2]~12_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][2]~13_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~68_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~69_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][2]~11_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][2]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][2]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~66_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~67_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~70_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~73_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~74_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~85_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~87_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[2]~88_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[2]~13_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[2]~12_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~9_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[2]~14_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[2]~20_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[2]~21_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[2]~22_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[2]~23_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[2]~24_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~393_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~394_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~386_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~387_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~390_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~391_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~388_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~389_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~392_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~395_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~375_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~376_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~382_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~383_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~379_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~380_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][14]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][14]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][14]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~377_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~378_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~381_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~384_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~385_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~396_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~398_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~399_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[14]~400_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[14]~70_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[14]~71_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[14]~72_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[14]~73_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[14]~74_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[14]~49_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[14]~48_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~44_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~359_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~360_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~361_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~367_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~368_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~364_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~365_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~362_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~363_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~366_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~369_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~349_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~350_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~356_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~357_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~351_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~352_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][13]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][13]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][13]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~353_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~354_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~355_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~358_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~370_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~371_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~372_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~373_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[13]~374_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[13]~45_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[13]~46_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[12]~42_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[12]~62_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[12]~63_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[12]~60_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[12]~61_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[12]~64_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~38_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~307_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~297_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~298_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~301_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~302_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~299_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~300_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~303_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~304_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~305_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~306_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~315_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~316_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~308_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~309_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~310_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~311_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][11]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][11]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][11]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~312_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~313_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~314_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~317_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~318_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~319_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~320_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~321_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[11]~322_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[11]~39_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[10]~50_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[10]~51_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[10]~52_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[10]~53_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[10]~54_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~32_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~245_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~246_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~252_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~253_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~249_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~250_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~247_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~248_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~251_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~254_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~255_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~263_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~264_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~256_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~257_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~260_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~261_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][9]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][9]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][9]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~258_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~259_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~262_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~265_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~266_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~267_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~268_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~269_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[9]~270_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[9]~47_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[9]~48_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[9]~33_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[8]~42_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[8]~43_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[8]~40_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[8]~41_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[8]~30_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[8]~44_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~26_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[7]~37_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[7]~38_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[7]~35_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[7]~36_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[7]~27_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[7]~39_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~23_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~189_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~178_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~179_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~185_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~186_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~182_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~183_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~180_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~181_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~184_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~187_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~174_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~175_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~167_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~168_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~171_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~172_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][6]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][6]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][6]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~169_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~170_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~173_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~176_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~177_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~188_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~190_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~191_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[6]~192_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[6]~30_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[6]~31_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[6]~24_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[5]~25_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[5]~26_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[5]~27_combout\ : std_logic;
SIGNAL \cpu_top_i|r3_i|sREG[5]~feeder_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[5]~28_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[5]~21_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[5]~29_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~17_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~16\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~18_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[5]~22_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[5]~23_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~151_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~141_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~142_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~145_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~146_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~143_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~144_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~147_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~148_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~149_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~150_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~152_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~153_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~159_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~160_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~156_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~157_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][5]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][5]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][5]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~154_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~155_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~158_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~161_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~162_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~163_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~164_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~165_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[5]~166_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~19\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~21_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[6]~25_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[6]~26_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[6]~32_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[6]~33_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[6]~34_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~20_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~22\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~24_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[7]~28_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[7]~29_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~203_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~193_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~194_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~200_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~201_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~197_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~198_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~195_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~196_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~199_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~202_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~211_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~212_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~204_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~205_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~208_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~209_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][7]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][7]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][7]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~206_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~207_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~210_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~213_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~214_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~215_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~216_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~217_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[7]~218_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~25\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~27_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[8]~31_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[8]~32_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~241_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~226_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~227_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~221_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~222_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~223_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~224_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~225_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~219_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~220_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~228_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~229_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~230_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~231_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~237_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~238_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~234_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~235_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][8]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][8]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][8]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~232_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~233_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~236_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~239_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~240_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~242_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~243_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[8]~244_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~28\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~30_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[9]~34_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[9]~35_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[9]~45_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[9]~46_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[9]~49_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~29_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~31\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~33_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[10]~36_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[10]~37_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[10]~38_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~293_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~278_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~279_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~273_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~274_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~275_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~276_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~277_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~271_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~272_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~280_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~281_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~289_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~290_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~284_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~285_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~286_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~287_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~288_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][10]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][10]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][10]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~282_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~283_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~291_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~292_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~294_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~295_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[10]~296_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~34\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~36_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[11]~40_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[11]~41_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[11]~55_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[11]~56_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[11]~57_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[11]~58_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[11]~59_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~35_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~37\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~39_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[12]~43_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[12]~44_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~345_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~330_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~331_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~323_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~324_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~327_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~328_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~325_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~326_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~329_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~332_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~333_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~334_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~335_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~341_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~342_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~336_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~337_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][12]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][12]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][12]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~338_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~339_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~340_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~343_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~344_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~346_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~347_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[12]~348_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~40\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~42_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[13]~47_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[13]~67_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[13]~68_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[13]~65_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[13]~66_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[13]~69_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~41_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~43\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~45_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[14]~50_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[15]~77_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[15]~78_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[15]~75_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[15]~76_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[15]~79_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~411_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[9][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[8][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~401_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[11][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[10][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~402_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[13][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[15][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[14][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[12][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~408_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~409_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[2][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[3][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[1][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[0][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~405_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~406_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[5][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[7][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[6][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[4][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~403_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~404_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~407_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~410_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[22][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[30][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[18][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[26][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~412_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~413_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[27][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[31][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[23][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[19][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~419_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~420_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[20][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[28][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[24][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[16][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~416_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~417_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[25][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[29][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][15]~feeder_combout\ : std_logic;
SIGNAL \data_ram_i|rMEM[21][15]~q\ : std_logic;
SIGNAL \data_ram_i|rMEM[17][15]~q\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~414_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~415_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~418_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~421_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~422_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~423_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~424_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~425_combout\ : std_logic;
SIGNAL \cpu_top_i|muxa_i|oQ[15]~426_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[15]~51_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~47_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~46\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~48_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[15]~52_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Equal12~0_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Equal12~1_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Equal12~2_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Equal12~3_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Equal12~4_combout\ : std_logic;
SIGNAL \cpu_top_i|sZERO~q\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oCARRY~0_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oCARRY~1_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oCARRY~2_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~50_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~49\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~51_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oCARRY~3_combout\ : std_logic;
SIGNAL \cpu_top_i|sCARRY~q\ : std_logic;
SIGNAL \cpu_top_i|sSIGN~q\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oPC_LOAD~0_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oPC_LOAD~1_combout\ : std_logic;
SIGNAL \cpu_top_i|cu_i|oPC_LOAD~2_combout\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[0]~6\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[1]~7_combout\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[1]~8\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[2]~9_combout\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[2]~10\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[3]~11_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[3]~10_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[3]~11_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[3]~40_combout\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[3]~12\ : std_logic;
SIGNAL \cpu_top_i|pc_i|sCNT[4]~13_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[4]~32_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[4]~33_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[2]~23_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[2]~22_combout\ : std_logic;
SIGNAL \instr_rom_i|oQ[2]~24_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[0]~10_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[0]~11_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[0]~12_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[0]~13_combout\ : std_logic;
SIGNAL \cpu_top_i|mubx_i|oQ[0]~14_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~0_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|Add1~3_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[0]~6_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[0]~4_combout\ : std_logic;
SIGNAL \cpu_top_i|alu_i|oC[0]~8_combout\ : std_logic;
SIGNAL \cpu_top_i|r4_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|pc_i|sCNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r5_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r1_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r3_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r6_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r7_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r0_i|sREG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \cpu_top_i|r2_i|sREG\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iCLK <= iCLK;
ww_inRST <= inRST;
oLED <= ww_oLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inRST~input_o\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N20
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

-- Location: IOOBUF_X19_Y17_N16
\oLED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[0]~8_combout\,
	devoe => ww_devoe,
	o => \oLED[0]~output_o\);

-- Location: IOOBUF_X50_Y11_N24
\oLED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[1]~11_combout\,
	devoe => ww_devoe,
	o => \oLED[1]~output_o\);

-- Location: IOOBUF_X50_Y10_N2
\oLED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[2]~14_combout\,
	devoe => ww_devoe,
	o => \oLED[2]~output_o\);

-- Location: IOOBUF_X25_Y23_N16
\oLED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[3]~17_combout\,
	devoe => ww_devoe,
	o => \oLED[3]~output_o\);

-- Location: IOOBUF_X25_Y23_N23
\oLED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[4]~20_combout\,
	devoe => ww_devoe,
	o => \oLED[4]~output_o\);

-- Location: IOOBUF_X19_Y17_N23
\oLED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[5]~23_combout\,
	devoe => ww_devoe,
	o => \oLED[5]~output_o\);

-- Location: IOOBUF_X50_Y15_N23
\oLED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[6]~26_combout\,
	devoe => ww_devoe,
	o => \oLED[6]~output_o\);

-- Location: IOOBUF_X25_Y22_N16
\oLED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[7]~29_combout\,
	devoe => ww_devoe,
	o => \oLED[7]~output_o\);

-- Location: IOOBUF_X25_Y22_N23
\oLED[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[8]~32_combout\,
	devoe => ww_devoe,
	o => \oLED[8]~output_o\);

-- Location: IOOBUF_X21_Y17_N30
\oLED[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[9]~35_combout\,
	devoe => ww_devoe,
	o => \oLED[9]~output_o\);

-- Location: IOOBUF_X16_Y17_N16
\oLED[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[10]~38_combout\,
	devoe => ww_devoe,
	o => \oLED[10]~output_o\);

-- Location: IOOBUF_X19_Y17_N2
\oLED[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[11]~41_combout\,
	devoe => ww_devoe,
	o => \oLED[11]~output_o\);

-- Location: IOOBUF_X50_Y16_N16
\oLED[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[12]~44_combout\,
	devoe => ww_devoe,
	o => \oLED[12]~output_o\);

-- Location: IOOBUF_X19_Y17_N9
\oLED[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[13]~47_combout\,
	devoe => ww_devoe,
	o => \oLED[13]~output_o\);

-- Location: IOOBUF_X19_Y17_N30
\oLED[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[14]~50_combout\,
	devoe => ww_devoe,
	o => \oLED[14]~output_o\);

-- Location: IOOBUF_X16_Y17_N9
\oLED[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu_top_i|alu_i|oC[15]~52_combout\,
	devoe => ww_devoe,
	o => \oLED[15]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\iCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G3
\iCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y12_N18
\cpu_top_i|pc_i|sCNT[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|pc_i|sCNT[0]~5_combout\ = \cpu_top_i|pc_i|sCNT\(0) $ (VCC)
-- \cpu_top_i|pc_i|sCNT[0]~6\ = CARRY(\cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(0),
	datad => VCC,
	combout => \cpu_top_i|pc_i|sCNT[0]~5_combout\,
	cout => \cpu_top_i|pc_i|sCNT[0]~6\);

-- Location: LCCOMB_X28_Y12_N0
\instr_rom_i|oQ[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[0]~14_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (\cpu_top_i|pc_i|sCNT\(0) & ((!\cpu_top_i|pc_i|sCNT\(2)) # (!\cpu_top_i|pc_i|sCNT\(4))))) # (!\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(4)) # 
-- (!\cpu_top_i|pc_i|sCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[0]~14_combout\);

-- Location: LCCOMB_X28_Y12_N10
\instr_rom_i|oQ[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[0]~41_combout\ = (!\cpu_top_i|pc_i|sCNT\(3) & \instr_rom_i|oQ[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \instr_rom_i|oQ[0]~14_combout\,
	combout => \instr_rom_i|oQ[0]~41_combout\);

-- Location: IOIBUF_X0_Y8_N22
\inRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inRST,
	o => \inRST~input_o\);

-- Location: CLKCTRL_G4
\inRST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inRST~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y12_N12
\instr_rom_i|oQ[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[2]~18_combout\ = (\cpu_top_i|pc_i|sCNT\(4) & !\cpu_top_i|pc_i|sCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[2]~18_combout\);

-- Location: LCCOMB_X28_Y12_N6
\instr_rom_i|oQ[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[1]~19_combout\ = (\instr_rom_i|oQ[2]~18_combout\ & ((\cpu_top_i|pc_i|sCNT\(2) $ (\cpu_top_i|pc_i|sCNT\(0))) # (!\cpu_top_i|pc_i|sCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(2),
	datab => \cpu_top_i|pc_i|sCNT\(0),
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \instr_rom_i|oQ[2]~18_combout\,
	combout => \instr_rom_i|oQ[1]~19_combout\);

-- Location: LCCOMB_X26_Y11_N12
\instr_rom_i|oQ[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[4]~15_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|pc_i|sCNT\(2) & \cpu_top_i|pc_i|sCNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[4]~15_combout\);

-- Location: LCCOMB_X24_Y12_N26
\instr_rom_i|oQ[13]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[13]~30_combout\ = (\instr_rom_i|oQ[1]~19_combout\) # ((\cpu_top_i|pc_i|sCNT\(0) & (!\cpu_top_i|pc_i|sCNT\(1) & \instr_rom_i|oQ[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \instr_rom_i|oQ[1]~19_combout\,
	datad => \instr_rom_i|oQ[4]~15_combout\,
	combout => \instr_rom_i|oQ[13]~30_combout\);

-- Location: LCCOMB_X25_Y14_N16
\instr_rom_i|oQ[14]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[14]~31_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (((!\cpu_top_i|pc_i|sCNT\(4) & \cpu_top_i|pc_i|sCNT\(3))))) # (!\cpu_top_i|pc_i|sCNT\(1) & (\cpu_top_i|pc_i|sCNT\(2) & ((!\cpu_top_i|pc_i|sCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(2),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[14]~31_combout\);

-- Location: LCCOMB_X24_Y12_N20
\cpu_top_i|cu_i|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|Equal10~0_combout\ = ((!\cpu_top_i|pc_i|sCNT\(0) & \instr_rom_i|oQ[14]~31_combout\)) # (!\instr_rom_i|oQ[13]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[13]~30_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \instr_rom_i|oQ[14]~31_combout\,
	combout => \cpu_top_i|cu_i|Equal10~0_combout\);

-- Location: LCCOMB_X26_Y11_N16
\instr_rom_i|oQ[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[11]~26_combout\ = (\cpu_top_i|pc_i|sCNT\(0) & (!\cpu_top_i|pc_i|sCNT\(3) & !\cpu_top_i|pc_i|sCNT\(1))) # (!\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[11]~26_combout\);

-- Location: LCCOMB_X26_Y11_N26
\instr_rom_i|oQ[11]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[11]~27_combout\ = (\instr_rom_i|oQ[11]~26_combout\ & (!\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(4) $ (\cpu_top_i|pc_i|sCNT\(2))))) # (!\instr_rom_i|oQ[11]~26_combout\ & (!\cpu_top_i|pc_i|sCNT\(4) & (!\cpu_top_i|pc_i|sCNT\(2) & 
-- \cpu_top_i|pc_i|sCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \instr_rom_i|oQ[11]~26_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[11]~27_combout\);

-- Location: LCCOMB_X30_Y10_N20
\instr_rom_i|oQ[10]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[10]~44_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & ((\cpu_top_i|pc_i|sCNT\(3) $ (!\cpu_top_i|pc_i|sCNT\(0))))) # (!\cpu_top_i|pc_i|sCNT\(1) & ((\cpu_top_i|pc_i|sCNT\(3)) # ((\cpu_top_i|pc_i|sCNT\(2) & \cpu_top_i|pc_i|sCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[10]~44_combout\);

-- Location: LCCOMB_X30_Y10_N22
\instr_rom_i|oQ[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[10]~45_combout\ = (\cpu_top_i|pc_i|sCNT\(4) & (!\cpu_top_i|pc_i|sCNT\(2) & (!\cpu_top_i|pc_i|sCNT\(3) & \instr_rom_i|oQ[10]~44_combout\))) # (!\cpu_top_i|pc_i|sCNT\(4) & ((\instr_rom_i|oQ[10]~44_combout\) # ((!\cpu_top_i|pc_i|sCNT\(2) & 
-- !\cpu_top_i|pc_i|sCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \instr_rom_i|oQ[10]~44_combout\,
	combout => \instr_rom_i|oQ[10]~45_combout\);

-- Location: LCCOMB_X25_Y14_N28
\cpu_top_i|cu_i|oREG_WE[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[5]~10_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (!\cpu_top_i|pc_i|sCNT\(3) & ((\cpu_top_i|pc_i|sCNT\(1)) # (\cpu_top_i|pc_i|sCNT\(0))))) # (!\cpu_top_i|pc_i|sCNT\(2) & (((!\cpu_top_i|pc_i|sCNT\(1) & !\cpu_top_i|pc_i|sCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|cu_i|oREG_WE[5]~10_combout\);

-- Location: LCCOMB_X25_Y14_N30
\cpu_top_i|cu_i|oREG_WE[5]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[5]~48_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & \cpu_top_i|cu_i|oREG_WE[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|cu_i|oREG_WE[5]~10_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\);

-- Location: FF_X25_Y14_N21
\cpu_top_i|r5_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(14));

-- Location: LCCOMB_X25_Y14_N24
\instr_rom_i|oQ[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[7]~17_combout\ = (!\cpu_top_i|pc_i|sCNT\(1) & !\cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[7]~17_combout\);

-- Location: LCCOMB_X25_Y14_N26
\cpu_top_i|muxa_i|oQ[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~0_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (!\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(4) $ (!\instr_rom_i|oQ[7]~17_combout\)))) # (!\cpu_top_i|pc_i|sCNT\(2) & (((!\cpu_top_i|pc_i|sCNT\(4) & \instr_rom_i|oQ[7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \instr_rom_i|oQ[7]~17_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\instr_rom_i|oQ[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[10]~16_combout\ = (!\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(4) & !\cpu_top_i|pc_i|sCNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[10]~16_combout\);

-- Location: LCCOMB_X30_Y13_N16
\cpu_top_i|muxa_i|oQ[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~2_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(1) & \cpu_top_i|pc_i|sCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|muxa_i|oQ[7]~2_combout\);

-- Location: LCCOMB_X30_Y13_N10
\cpu_top_i|muxa_i|oQ[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~3_combout\ = (\cpu_top_i|muxa_i|oQ[7]~2_combout\) # ((\instr_rom_i|oQ[10]~16_combout\ & (\cpu_top_i|pc_i|sCNT\(1) $ (!\cpu_top_i|pc_i|sCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~16_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~2_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|muxa_i|oQ[7]~3_combout\);

-- Location: LCCOMB_X25_Y14_N2
\cpu_top_i|cu_i|oREG_WE[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[1]~47_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(4) & \cpu_top_i|pc_i|sCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(2),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\);

-- Location: FF_X29_Y14_N3
\cpu_top_i|r1_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(14));

-- Location: LCCOMB_X24_Y12_N6
\instr_rom_i|oQ[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[8]~25_combout\ = (!\cpu_top_i|pc_i|sCNT\(0) & !\cpu_top_i|pc_i|sCNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(2),
	combout => \instr_rom_i|oQ[8]~25_combout\);

-- Location: LCCOMB_X24_Y12_N24
\cpu_top_i|muxa_i|oQ[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~29_combout\ = (\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(2)) # (\cpu_top_i|pc_i|sCNT\(3) $ (!\cpu_top_i|pc_i|sCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \cpu_top_i|muxa_i|oQ[7]~29_combout\);

-- Location: LCCOMB_X24_Y12_N12
\cpu_top_i|muxa_i|oQ[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~30_combout\ = (\cpu_top_i|pc_i|sCNT\(4) & (((\cpu_top_i|pc_i|sCNT\(3))) # (!\instr_rom_i|oQ[8]~25_combout\))) # (!\cpu_top_i|pc_i|sCNT\(4) & (((\cpu_top_i|muxa_i|oQ[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[8]~25_combout\,
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|muxa_i|oQ[7]~29_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~30_combout\);

-- Location: LCCOMB_X27_Y11_N24
\cpu_top_i|muxa_i|oQ[7]~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~427_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (((!\cpu_top_i|pc_i|sCNT\(1)) # (!\cpu_top_i|pc_i|sCNT\(0))) # (!\cpu_top_i|pc_i|sCNT\(4)))) # (!\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(4) $ ((!\cpu_top_i|pc_i|sCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \cpu_top_i|muxa_i|oQ[7]~427_combout\);

-- Location: LCCOMB_X27_Y11_N26
\cpu_top_i|muxa_i|oQ[7]~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~428_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT\(4) & ((\cpu_top_i|muxa_i|oQ[7]~427_combout\) # (!\cpu_top_i|pc_i|sCNT\(1))))) # (!\cpu_top_i|pc_i|sCNT\(3) & (((\cpu_top_i|muxa_i|oQ[7]~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|muxa_i|oQ[7]~427_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~428_combout\);

-- Location: LCCOMB_X26_Y11_N18
\cpu_top_i|cu_i|oREG_WE[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[7]~24_combout\ = \cpu_top_i|pc_i|sCNT\(4) $ (!\cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|cu_i|oREG_WE[7]~24_combout\);

-- Location: LCCOMB_X26_Y11_N4
\cpu_top_i|cu_i|oREG_WE[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[7]~50_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT\(2) & !\cpu_top_i|cu_i|oREG_WE[7]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|cu_i|oREG_WE[7]~24_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\);

-- Location: FF_X28_Y14_N13
\cpu_top_i|r7_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(14));

-- Location: LCCOMB_X24_Y12_N8
\instr_rom_i|oQ[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[10]~35_combout\ = (!\cpu_top_i|pc_i|sCNT\(0) & (\cpu_top_i|pc_i|sCNT\(1) & (\instr_rom_i|oQ[2]~18_combout\ & !\cpu_top_i|pc_i|sCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \instr_rom_i|oQ[2]~18_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(2),
	combout => \instr_rom_i|oQ[10]~35_combout\);

-- Location: LCCOMB_X26_Y11_N14
\instr_rom_i|oQ[6]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[6]~36_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(2))) # (!\cpu_top_i|pc_i|sCNT\(3) & ((\cpu_top_i|pc_i|sCNT\(2) & ((\cpu_top_i|pc_i|sCNT\(0)) # (\cpu_top_i|pc_i|sCNT\(1)))) # (!\cpu_top_i|pc_i|sCNT\(2) & 
-- (\cpu_top_i|pc_i|sCNT\(0) $ (!\cpu_top_i|pc_i|sCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[6]~36_combout\);

-- Location: LCCOMB_X24_Y12_N10
\instr_rom_i|oQ[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[10]~37_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & ((\instr_rom_i|oQ[4]~15_combout\) # (!\cpu_top_i|pc_i|sCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \instr_rom_i|oQ[4]~15_combout\,
	combout => \instr_rom_i|oQ[10]~37_combout\);

-- Location: LCCOMB_X24_Y12_N0
\instr_rom_i|oQ[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[6]~38_combout\ = (\instr_rom_i|oQ[6]~36_combout\ & (((\instr_rom_i|oQ[10]~37_combout\) # (!\cpu_top_i|pc_i|sCNT\(3))))) # (!\instr_rom_i|oQ[6]~36_combout\ & (!\cpu_top_i|pc_i|sCNT\(0) & (\cpu_top_i|pc_i|sCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \instr_rom_i|oQ[6]~36_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \instr_rom_i|oQ[10]~37_combout\,
	combout => \instr_rom_i|oQ[6]~38_combout\);

-- Location: LCCOMB_X24_Y12_N30
\cpu_top_i|cu_i|oREG_WE[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[4]~44_combout\ = (!\instr_rom_i|oQ[13]~30_combout\ & (!\instr_rom_i|oQ[10]~35_combout\ & ((\cpu_top_i|pc_i|sCNT\(4)) # (!\instr_rom_i|oQ[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[13]~30_combout\,
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \instr_rom_i|oQ[10]~35_combout\,
	datad => \instr_rom_i|oQ[6]~38_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[4]~44_combout\);

-- Location: LCCOMB_X26_Y11_N24
\instr_rom_i|oQ[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[7]~39_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT\(0) & (\cpu_top_i|pc_i|sCNT\(2) $ (\cpu_top_i|pc_i|sCNT\(1))))) # (!\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(0) & 
-- \cpu_top_i|pc_i|sCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[7]~39_combout\);

-- Location: LCCOMB_X25_Y12_N10
\instr_rom_i|oQ[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[7]~43_combout\ = (\instr_rom_i|oQ[10]~35_combout\) # ((\instr_rom_i|oQ[7]~39_combout\ & !\cpu_top_i|pc_i|sCNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~35_combout\,
	datab => \instr_rom_i|oQ[7]~39_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(4),
	combout => \instr_rom_i|oQ[7]~43_combout\);

-- Location: LCCOMB_X24_Y12_N2
\instr_rom_i|oQ[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[8]~34_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (((\cpu_top_i|pc_i|sCNT\(3))))) # (!\cpu_top_i|pc_i|sCNT\(1) & (\cpu_top_i|pc_i|sCNT\(2) $ (((\cpu_top_i|pc_i|sCNT\(0) & !\cpu_top_i|pc_i|sCNT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[8]~34_combout\);

-- Location: LCCOMB_X24_Y12_N22
\instr_rom_i|oQ[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[8]~42_combout\ = (!\instr_rom_i|oQ[8]~34_combout\ & (((\instr_rom_i|oQ[8]~25_combout\ & \cpu_top_i|pc_i|sCNT\(1))) # (!\cpu_top_i|pc_i|sCNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[8]~25_combout\,
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \instr_rom_i|oQ[8]~34_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[8]~42_combout\);

-- Location: LCCOMB_X24_Y12_N14
\cpu_top_i|cu_i|oREG_WE[0]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[0]~46_combout\ = (\cpu_top_i|cu_i|oREG_WE[4]~44_combout\ & (!\instr_rom_i|oQ[7]~43_combout\ & !\instr_rom_i|oQ[8]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|cu_i|oREG_WE[4]~44_combout\,
	datab => \instr_rom_i|oQ[7]~43_combout\,
	datac => \instr_rom_i|oQ[8]~42_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\);

-- Location: FF_X28_Y16_N21
\cpu_top_i|r0_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(14));

-- Location: LCCOMB_X28_Y14_N12
\cpu_top_i|muxa_i|oQ[14]~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~397_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\) # ((\cpu_top_i|r0_i|sREG\(14))))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- (\cpu_top_i|r7_i|sREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(14),
	datad => \cpu_top_i|r0_i|sREG\(14),
	combout => \cpu_top_i|muxa_i|oQ[14]~397_combout\);

-- Location: LCCOMB_X27_Y11_N20
\cpu_top_i|cu_i|oREG_WE[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[2]~38_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & !\cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|cu_i|oREG_WE[2]~38_combout\);

-- Location: LCCOMB_X27_Y11_N10
\cpu_top_i|cu_i|oREG_WE[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[2]~52_combout\ = (!\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|pc_i|sCNT\(3) & \cpu_top_i|cu_i|oREG_WE[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(4),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|cu_i|oREG_WE[2]~38_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\);

-- Location: FF_X28_Y14_N31
\cpu_top_i|r2_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(14));

-- Location: LCCOMB_X30_Y13_N28
\cpu_top_i|alu_i|oC[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[15]~3_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & ((\cpu_top_i|pc_i|sCNT\(0)) # (\cpu_top_i|pc_i|sCNT\(3) $ (\cpu_top_i|pc_i|sCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|alu_i|oC[15]~3_combout\);

-- Location: LCCOMB_X30_Y13_N14
\cpu_top_i|alu_i|oC[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[15]~2_combout\ = (\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(1) & (\instr_rom_i|oQ[4]~15_combout\)) # (!\cpu_top_i|pc_i|sCNT\(1) & ((\instr_rom_i|oQ[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \instr_rom_i|oQ[4]~15_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \instr_rom_i|oQ[10]~16_combout\,
	combout => \cpu_top_i|alu_i|oC[15]~2_combout\);

-- Location: LCCOMB_X30_Y13_N22
\cpu_top_i|alu_i|oC[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[0]~5_combout\ = (\cpu_top_i|alu_i|oC[15]~2_combout\ & ((\cpu_top_i|alu_i|oC[15]~3_combout\) # ((!\cpu_top_i|pc_i|sCNT\(3) & \instr_rom_i|oQ[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|alu_i|oC[15]~3_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datad => \instr_rom_i|oQ[8]~25_combout\,
	combout => \cpu_top_i|alu_i|oC[0]~5_combout\);

-- Location: LCCOMB_X26_Y15_N6
\cpu_top_i|muxa_i|oQ[2]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~62_combout\ = (\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(2),
	combout => \cpu_top_i|muxa_i|oQ[2]~62_combout\);

-- Location: LCCOMB_X30_Y15_N8
\cpu_top_i|muxa_i|oQ[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~33_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & !\cpu_top_i|muxa_i|oQ[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~33_combout\);

-- Location: FF_X29_Y14_N7
\cpu_top_i|r1_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(2));

-- Location: LCCOMB_X29_Y14_N6
\cpu_top_i|muxa_i|oQ[2]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~63_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & (\cpu_top_i|r1_i|sREG\(2) & \cpu_top_i|muxa_i|oQ[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(2),
	datad => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~63_combout\);

-- Location: FF_X28_Y14_N5
\cpu_top_i|r7_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(2));

-- Location: FF_X30_Y12_N25
\cpu_top_i|r0_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(2));

-- Location: LCCOMB_X28_Y14_N6
\cpu_top_i|muxa_i|oQ[2]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~86_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|r0_i|sREG\(2)) # (\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|r7_i|sREG\(2) & 
-- ((!\cpu_top_i|muxa_i|oQ[7]~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r7_i|sREG\(2),
	datac => \cpu_top_i|r0_i|sREG\(2),
	datad => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~86_combout\);

-- Location: FF_X30_Y15_N15
\cpu_top_i|r2_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(2));

-- Location: LCCOMB_X27_Y12_N4
\cpu_top_i|muxa_i|oQ[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~5_combout\ = (!\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(3) & ((\cpu_top_i|pc_i|sCNT\(1)))) # (!\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(2) & !\cpu_top_i|pc_i|sCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(2),
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|muxa_i|oQ[7]~5_combout\);

-- Location: LCCOMB_X30_Y13_N6
\cpu_top_i|alu_i|oC[15]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[15]~53_combout\ = (\cpu_top_i|alu_i|oC[15]~3_combout\) # ((!\cpu_top_i|pc_i|sCNT\(0) & (!\cpu_top_i|pc_i|sCNT\(3) & !\cpu_top_i|pc_i|sCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|alu_i|oC[15]~3_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(2),
	combout => \cpu_top_i|alu_i|oC[15]~53_combout\);

-- Location: FF_X31_Y15_N5
\cpu_top_i|r5_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(4));

-- Location: FF_X30_Y15_N19
\cpu_top_i|r1_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(4));

-- Location: FF_X32_Y12_N5
\cpu_top_i|r7_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(4));

-- Location: FF_X30_Y12_N21
\cpu_top_i|r0_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(4));

-- Location: LCCOMB_X29_Y16_N16
\cpu_top_i|muxa_i|oQ[4]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~137_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\) # ((\cpu_top_i|r0_i|sREG\(4))))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- (\cpu_top_i|r7_i|sREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(4),
	datad => \cpu_top_i|r0_i|sREG\(4),
	combout => \cpu_top_i|muxa_i|oQ[4]~137_combout\);

-- Location: LCCOMB_X27_Y11_N28
\cpu_top_i|cu_i|oREG_WE[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[3]~14_combout\ = (!\cpu_top_i|pc_i|sCNT\(2) & !\cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|cu_i|oREG_WE[3]~14_combout\);

-- Location: LCCOMB_X27_Y11_N18
\cpu_top_i|cu_i|oREG_WE[3]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[3]~49_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (\cpu_top_i|cu_i|oREG_WE[3]~14_combout\ & (\cpu_top_i|pc_i|sCNT\(3) & !\cpu_top_i|pc_i|sCNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|cu_i|oREG_WE[3]~14_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(4),
	combout => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\);

-- Location: FF_X30_Y12_N7
\cpu_top_i|r3_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(4));

-- Location: LCCOMB_X24_Y12_N28
\cpu_top_i|cu_i|Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|Equal10~1_combout\ = (\instr_rom_i|oQ[13]~30_combout\ & (!\cpu_top_i|pc_i|sCNT\(0) & \instr_rom_i|oQ[14]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[13]~30_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \instr_rom_i|oQ[14]~31_combout\,
	combout => \cpu_top_i|cu_i|Equal10~1_combout\);

-- Location: LCCOMB_X28_Y12_N8
\instr_rom_i|oQ[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[1]~20_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(2) & \cpu_top_i|pc_i|sCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[1]~20_combout\);

-- Location: LCCOMB_X28_Y12_N14
\instr_rom_i|oQ[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[1]~21_combout\ = (\instr_rom_i|oQ[1]~19_combout\) # ((!\cpu_top_i|pc_i|sCNT\(3) & \instr_rom_i|oQ[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \instr_rom_i|oQ[1]~20_combout\,
	datad => \instr_rom_i|oQ[1]~19_combout\,
	combout => \instr_rom_i|oQ[1]~21_combout\);

-- Location: FF_X26_Y15_N21
\cpu_top_i|r5_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(1));

-- Location: LCCOMB_X26_Y15_N20
\cpu_top_i|muxa_i|oQ[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~35_combout\ = (\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(1),
	combout => \cpu_top_i|muxa_i|oQ[1]~35_combout\);

-- Location: FF_X30_Y15_N9
\cpu_top_i|r1_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(1));

-- Location: LCCOMB_X30_Y15_N14
\cpu_top_i|muxa_i|oQ[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~36_combout\ = (\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r1_i|sREG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|r1_i|sREG\(1),
	combout => \cpu_top_i|muxa_i|oQ[1]~36_combout\);

-- Location: FF_X29_Y12_N7
\cpu_top_i|r0_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(1));

-- Location: FF_X32_Y12_N15
\cpu_top_i|r7_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(1));

-- Location: LCCOMB_X30_Y10_N0
\cpu_top_i|cu_i|oREG_WE[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[4]~32_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(3) & !\cpu_top_i|pc_i|sCNT\(0))) # (!\cpu_top_i|pc_i|sCNT\(1) & (\cpu_top_i|pc_i|sCNT\(3) & \cpu_top_i|pc_i|sCNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|cu_i|oREG_WE[4]~32_combout\);

-- Location: LCCOMB_X30_Y10_N10
\cpu_top_i|cu_i|oREG_WE[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[4]~51_combout\ = (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|cu_i|oREG_WE[4]~32_combout\ & !\cpu_top_i|pc_i|sCNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|cu_i|oREG_WE[4]~32_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(2),
	combout => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\);

-- Location: FF_X27_Y12_N15
\cpu_top_i|r4_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(1));

-- Location: LCCOMB_X29_Y11_N18
\data_ram_i|rMEM[12][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[12][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[12][1]~feeder_combout\);

-- Location: FF_X31_Y15_N3
\cpu_top_i|r5_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(3));

-- Location: FF_X31_Y15_N1
\cpu_top_i|r1_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(3));

-- Location: FF_X28_Y16_N25
\cpu_top_i|r0_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(3));

-- Location: LCCOMB_X31_Y12_N8
\cpu_top_i|r2_i|sREG[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|r2_i|sREG[3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \cpu_top_i|r2_i|sREG[3]~feeder_combout\);

-- Location: FF_X31_Y12_N9
\cpu_top_i|r2_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|r2_i|sREG[3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(3));

-- Location: FF_X32_Y12_N9
\cpu_top_i|r7_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(3));

-- Location: FF_X27_Y12_N9
\cpu_top_i|r4_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(3));

-- Location: LCCOMB_X27_Y12_N8
\cpu_top_i|muxa_i|oQ[3]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~99_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\) # ((\cpu_top_i|r3_i|sREG\(3))))) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(3),
	datad => \cpu_top_i|r3_i|sREG\(3),
	combout => \cpu_top_i|muxa_i|oQ[3]~99_combout\);

-- Location: FF_X30_Y14_N5
\data_ram_i|rMEM[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][3]~q\);

-- Location: LCCOMB_X28_Y11_N6
\data_ram_i|Decoder0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~24_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & !\cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~24_combout\);

-- Location: FF_X27_Y12_N11
\cpu_top_i|r4_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(4));

-- Location: LCCOMB_X24_Y12_N4
\cpu_top_i|cu_i|oREG_WE[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oREG_WE[6]~45_combout\ = (\cpu_top_i|cu_i|oREG_WE[4]~44_combout\ & (\instr_rom_i|oQ[7]~43_combout\ & \instr_rom_i|oQ[8]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|cu_i|oREG_WE[4]~44_combout\,
	datab => \instr_rom_i|oQ[7]~43_combout\,
	datac => \instr_rom_i|oQ[8]~42_combout\,
	combout => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\);

-- Location: FF_X27_Y12_N21
\cpu_top_i|r6_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(4));

-- Location: LCCOMB_X27_Y12_N20
\cpu_top_i|mubx_i|oQ[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[4]~0_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|r6_i|sREG\(4)))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (\cpu_top_i|r4_i|sREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(4),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(4),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[4]~0_combout\);

-- Location: LCCOMB_X32_Y12_N4
\cpu_top_i|mubx_i|oQ[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[4]~1_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~0_combout\ & ((\cpu_top_i|r7_i|sREG\(4)))) # (!\cpu_top_i|mubx_i|oQ[4]~0_combout\ & (\cpu_top_i|r5_i|sREG\(4))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(4),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r7_i|sREG\(4),
	datad => \cpu_top_i|mubx_i|oQ[4]~0_combout\,
	combout => \cpu_top_i|mubx_i|oQ[4]~1_combout\);

-- Location: FF_X27_Y12_N19
\cpu_top_i|r6_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(3));

-- Location: LCCOMB_X27_Y12_N18
\cpu_top_i|mubx_i|oQ[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[3]~15_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|r6_i|sREG\(3)))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (\cpu_top_i|r4_i|sREG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(3),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(3),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[3]~15_combout\);

-- Location: LCCOMB_X32_Y12_N6
\cpu_top_i|mubx_i|oQ[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[3]~16_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~15_combout\ & ((\cpu_top_i|r7_i|sREG\(3)))) # (!\cpu_top_i|mubx_i|oQ[3]~15_combout\ & (\cpu_top_i|r5_i|sREG\(3))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(3),
	datab => \cpu_top_i|r7_i|sREG\(3),
	datac => \instr_rom_i|oQ[0]~41_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~15_combout\,
	combout => \cpu_top_i|mubx_i|oQ[3]~16_combout\);

-- Location: LCCOMB_X32_Y12_N0
\cpu_top_i|mubx_i|oQ[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[3]~19_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[3]~16_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~16_combout\,
	datac => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~18_combout\,
	combout => \cpu_top_i|mubx_i|oQ[3]~19_combout\);

-- Location: LCCOMB_X34_Y15_N26
\data_ram_i|Decoder0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~58_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~1_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[4]~3_combout\,
	datac => \cpu_top_i|mubx_i|oQ[4]~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \data_ram_i|Decoder0~58_combout\);

-- Location: LCCOMB_X32_Y17_N28
\data_ram_i|Decoder0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~52_combout\ = (\data_ram_i|Decoder0~24_combout\ & \data_ram_i|Decoder0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~24_combout\,
	datad => \data_ram_i|Decoder0~58_combout\,
	combout => \data_ram_i|Decoder0~52_combout\);

-- Location: FF_X30_Y16_N13
\data_ram_i|rMEM[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][3]~q\);

-- Location: LCCOMB_X28_Y11_N8
\data_ram_i|Decoder0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~22_combout\ = (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & \cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~22_combout\);

-- Location: LCCOMB_X30_Y11_N26
\data_ram_i|Decoder0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~53_combout\ = (\data_ram_i|Decoder0~58_combout\ & \data_ram_i|Decoder0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~58_combout\,
	datad => \data_ram_i|Decoder0~22_combout\,
	combout => \data_ram_i|Decoder0~53_combout\);

-- Location: FF_X30_Y11_N11
\data_ram_i|rMEM[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][3]~q\);

-- Location: LCCOMB_X26_Y13_N14
\data_ram_i|Decoder0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~18_combout\ = (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & \cpu_top_i|cu_i|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datad => \cpu_top_i|cu_i|Equal10~1_combout\,
	combout => \data_ram_i|Decoder0~18_combout\);

-- Location: LCCOMB_X31_Y17_N14
\data_ram_i|Decoder0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~54_combout\ = (\data_ram_i|Decoder0~58_combout\ & \data_ram_i|Decoder0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~58_combout\,
	datad => \data_ram_i|Decoder0~18_combout\,
	combout => \data_ram_i|Decoder0~54_combout\);

-- Location: FF_X30_Y16_N7
\data_ram_i|rMEM[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][3]~q\);

-- Location: LCCOMB_X30_Y16_N6
\cpu_top_i|muxa_i|oQ[3]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~107_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[27][3]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[25][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[25][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~107_combout\);

-- Location: LCCOMB_X30_Y16_N12
\cpu_top_i|muxa_i|oQ[3]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~108_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~107_combout\ & (\data_ram_i|rMEM[31][3]~q\)) # (!\cpu_top_i|muxa_i|oQ[3]~107_combout\ & ((\data_ram_i|rMEM[29][3]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[31][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[29][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~107_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~108_combout\);

-- Location: LCCOMB_X28_Y11_N0
\data_ram_i|Decoder0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~28_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & !\cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~28_combout\);

-- Location: LCCOMB_X31_Y13_N4
\data_ram_i|Decoder0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~40_combout\ = (\data_ram_i|Decoder0~28_combout\ & \data_ram_i|Decoder0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~28_combout\,
	datad => \data_ram_i|Decoder0~58_combout\,
	combout => \data_ram_i|Decoder0~40_combout\);

-- Location: FF_X31_Y13_N5
\data_ram_i|rMEM[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][3]~q\);

-- Location: LCCOMB_X28_Y11_N20
\data_ram_i|Decoder0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~26_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & \cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~26_combout\);

-- Location: LCCOMB_X30_Y11_N8
\data_ram_i|Decoder0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~43_combout\ = (\data_ram_i|Decoder0~58_combout\ & \data_ram_i|Decoder0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~58_combout\,
	datad => \data_ram_i|Decoder0~26_combout\,
	combout => \data_ram_i|Decoder0~43_combout\);

-- Location: FF_X30_Y11_N13
\data_ram_i|rMEM[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][3]~q\);

-- Location: LCCOMB_X28_Y11_N16
\data_ram_i|Decoder0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~16_combout\ = (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & \cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~16_combout\);

-- Location: LCCOMB_X31_Y11_N4
\data_ram_i|Decoder0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~41_combout\ = (\data_ram_i|Decoder0~16_combout\ & \data_ram_i|Decoder0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~16_combout\,
	datad => \data_ram_i|Decoder0~58_combout\,
	combout => \data_ram_i|Decoder0~41_combout\);

-- Location: FF_X31_Y11_N23
\data_ram_i|rMEM[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][3]~q\);

-- Location: LCCOMB_X28_Y11_N18
\data_ram_i|Decoder0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~20_combout\ = (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & !\cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~20_combout\);

-- Location: LCCOMB_X30_Y11_N30
\data_ram_i|Decoder0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~42_combout\ = (\data_ram_i|Decoder0~58_combout\ & \data_ram_i|Decoder0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~58_combout\,
	datac => \data_ram_i|Decoder0~20_combout\,
	combout => \data_ram_i|Decoder0~42_combout\);

-- Location: FF_X33_Y11_N5
\data_ram_i|rMEM[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][3]~q\);

-- Location: LCCOMB_X33_Y11_N4
\cpu_top_i|muxa_i|oQ[3]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~100_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[26][3]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[24][3]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[26][3]~q\,
	datac => \data_ram_i|rMEM[24][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~100_combout\);

-- Location: LCCOMB_X30_Y11_N12
\cpu_top_i|muxa_i|oQ[3]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~101_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~100_combout\ & ((\data_ram_i|rMEM[30][3]~q\))) # (!\cpu_top_i|muxa_i|oQ[3]~100_combout\ & (\data_ram_i|rMEM[28][3]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[28][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[30][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~100_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~101_combout\);

-- Location: LCCOMB_X35_Y14_N22
\data_ram_i|rMEM[20][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[20][3]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N28
\data_ram_i|Decoder0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~59_combout\ = (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~1_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[4]~3_combout\,
	datac => \cpu_top_i|mubx_i|oQ[4]~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \data_ram_i|Decoder0~59_combout\);

-- Location: LCCOMB_X35_Y14_N6
\data_ram_i|Decoder0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~48_combout\ = (\data_ram_i|Decoder0~28_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~28_combout\,
	datac => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~48_combout\);

-- Location: FF_X35_Y14_N23
\data_ram_i|rMEM[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][3]~q\);

-- Location: LCCOMB_X31_Y11_N14
\data_ram_i|Decoder0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~51_combout\ = (\data_ram_i|Decoder0~26_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~26_combout\,
	datad => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~51_combout\);

-- Location: FF_X33_Y12_N23
\data_ram_i|rMEM[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][3]~q\);

-- Location: LCCOMB_X33_Y12_N4
\data_ram_i|Decoder0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~49_combout\ = (\data_ram_i|Decoder0~16_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~16_combout\,
	datad => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~49_combout\);

-- Location: FF_X32_Y11_N25
\data_ram_i|rMEM[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][3]~q\);

-- Location: LCCOMB_X33_Y12_N18
\data_ram_i|Decoder0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~50_combout\ = (\data_ram_i|Decoder0~20_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~20_combout\,
	datad => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~50_combout\);

-- Location: FF_X33_Y12_N25
\data_ram_i|rMEM[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][3]~q\);

-- Location: LCCOMB_X33_Y12_N24
\cpu_top_i|muxa_i|oQ[3]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~104_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[18][3]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[18][3]~q\,
	datac => \data_ram_i|rMEM[16][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~104_combout\);

-- Location: LCCOMB_X33_Y12_N22
\cpu_top_i|muxa_i|oQ[3]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~105_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~104_combout\ & ((\data_ram_i|rMEM[22][3]~q\))) # (!\cpu_top_i|muxa_i|oQ[3]~104_combout\ & (\data_ram_i|rMEM[20][3]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][3]~q\,
	datac => \data_ram_i|rMEM[22][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~104_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~105_combout\);

-- Location: LCCOMB_X34_Y15_N24
\data_ram_i|rMEM[21][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[21][3]~feeder_combout\);

-- Location: LCCOMB_X34_Y15_N30
\data_ram_i|Decoder0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~44_combout\ = (\data_ram_i|Decoder0~24_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~24_combout\,
	datad => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~44_combout\);

-- Location: FF_X34_Y15_N25
\data_ram_i|rMEM[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][3]~q\);

-- Location: LCCOMB_X32_Y17_N2
\data_ram_i|Decoder0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~47_combout\ = (\data_ram_i|Decoder0~59_combout\ & \data_ram_i|Decoder0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~59_combout\,
	datad => \data_ram_i|Decoder0~30_combout\,
	combout => \data_ram_i|Decoder0~47_combout\);

-- Location: FF_X33_Y16_N17
\data_ram_i|rMEM[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][3]~q\);

-- Location: LCCOMB_X33_Y13_N18
\data_ram_i|Decoder0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~45_combout\ = (\data_ram_i|Decoder0~22_combout\ & \data_ram_i|Decoder0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~22_combout\,
	datad => \data_ram_i|Decoder0~59_combout\,
	combout => \data_ram_i|Decoder0~45_combout\);

-- Location: FF_X33_Y11_N7
\data_ram_i|rMEM[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][3]~q\);

-- Location: LCCOMB_X31_Y17_N12
\data_ram_i|Decoder0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~46_combout\ = (\data_ram_i|Decoder0~59_combout\ & \data_ram_i|Decoder0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~59_combout\,
	datad => \data_ram_i|Decoder0~18_combout\,
	combout => \data_ram_i|Decoder0~46_combout\);

-- Location: FF_X33_Y16_N11
\data_ram_i|rMEM[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][3]~q\);

-- Location: LCCOMB_X33_Y16_N10
\cpu_top_i|muxa_i|oQ[3]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~102_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[19][3]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[17][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[19][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[17][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~102_combout\);

-- Location: LCCOMB_X33_Y16_N16
\cpu_top_i|muxa_i|oQ[3]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~103_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~102_combout\ & ((\data_ram_i|rMEM[23][3]~q\))) # (!\cpu_top_i|muxa_i|oQ[3]~102_combout\ & (\data_ram_i|rMEM[21][3]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[21][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[23][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~102_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~103_combout\);

-- Location: LCCOMB_X32_Y12_N22
\cpu_top_i|muxa_i|oQ[3]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~106_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[3]~103_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[3]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~105_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~103_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~106_combout\);

-- Location: LCCOMB_X31_Y12_N4
\cpu_top_i|muxa_i|oQ[3]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~109_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~106_combout\ & (\cpu_top_i|muxa_i|oQ[3]~108_combout\)) # (!\cpu_top_i|muxa_i|oQ[3]~106_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~101_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[3]~108_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~101_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~106_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~109_combout\);

-- Location: LCCOMB_X29_Y13_N22
\data_ram_i|rMEM[14][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[14][3]~feeder_combout\);

-- Location: LCCOMB_X30_Y11_N22
\data_ram_i|Decoder0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~37_combout\ = (\data_ram_i|Decoder0~56_combout\ & \data_ram_i|Decoder0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~56_combout\,
	datad => \data_ram_i|Decoder0~26_combout\,
	combout => \data_ram_i|Decoder0~37_combout\);

-- Location: FF_X29_Y13_N23
\data_ram_i|rMEM[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][3]~q\);

-- Location: LCCOMB_X29_Y13_N12
\data_ram_i|Decoder0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~39_combout\ = (\data_ram_i|Decoder0~30_combout\ & \data_ram_i|Decoder0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~30_combout\,
	datad => \data_ram_i|Decoder0~56_combout\,
	combout => \data_ram_i|Decoder0~39_combout\);

-- Location: FF_X29_Y13_N1
\data_ram_i|rMEM[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][3]~q\);

-- Location: LCCOMB_X26_Y14_N16
\data_ram_i|rMEM[13][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[13][3]~feeder_combout\);

-- Location: LCCOMB_X28_Y11_N12
\data_ram_i|Decoder0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~36_combout\ = (\data_ram_i|Decoder0~24_combout\ & \data_ram_i|Decoder0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~24_combout\,
	datad => \data_ram_i|Decoder0~56_combout\,
	combout => \data_ram_i|Decoder0~36_combout\);

-- Location: FF_X26_Y14_N17
\data_ram_i|rMEM[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][3]~q\);

-- Location: FF_X29_Y11_N17
\data_ram_i|rMEM[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][3]~q\);

-- Location: LCCOMB_X29_Y11_N16
\cpu_top_i|muxa_i|oQ[3]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~96_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[13][3]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[13][3]~q\,
	datac => \data_ram_i|rMEM[12][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~96_combout\);

-- Location: LCCOMB_X29_Y13_N0
\cpu_top_i|muxa_i|oQ[3]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~97_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~96_combout\ & ((\data_ram_i|rMEM[15][3]~q\))) # (!\cpu_top_i|muxa_i|oQ[3]~96_combout\ & (\data_ram_i|rMEM[14][3]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[14][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[15][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~96_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~97_combout\);

-- Location: LCCOMB_X35_Y12_N18
\data_ram_i|Decoder0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~23_combout\ = (\data_ram_i|Decoder0~56_combout\ & \data_ram_i|Decoder0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~56_combout\,
	datad => \data_ram_i|Decoder0~22_combout\,
	combout => \data_ram_i|Decoder0~23_combout\);

-- Location: FF_X35_Y12_N21
\data_ram_i|rMEM[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][3]~q\);

-- Location: LCCOMB_X35_Y12_N24
\data_ram_i|Decoder0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~17_combout\ = (\data_ram_i|Decoder0~56_combout\ & \data_ram_i|Decoder0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~56_combout\,
	datad => \data_ram_i|Decoder0~16_combout\,
	combout => \data_ram_i|Decoder0~17_combout\);

-- Location: FF_X35_Y12_N7
\data_ram_i|rMEM[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][3]~q\);

-- Location: LCCOMB_X36_Y12_N12
\data_ram_i|rMEM[9][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[9][3]~feeder_combout\);

-- Location: LCCOMB_X33_Y13_N26
\data_ram_i|Decoder0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~19_combout\ = (\data_ram_i|Decoder0~18_combout\ & \data_ram_i|Decoder0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~18_combout\,
	datad => \data_ram_i|Decoder0~56_combout\,
	combout => \data_ram_i|Decoder0~19_combout\);

-- Location: FF_X36_Y12_N13
\data_ram_i|rMEM[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][3]~q\);

-- Location: LCCOMB_X34_Y12_N8
\data_ram_i|Decoder0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~21_combout\ = (\data_ram_i|Decoder0~56_combout\ & \data_ram_i|Decoder0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~56_combout\,
	datac => \data_ram_i|Decoder0~20_combout\,
	combout => \data_ram_i|Decoder0~21_combout\);

-- Location: FF_X35_Y14_N9
\data_ram_i|rMEM[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][3]~q\);

-- Location: LCCOMB_X35_Y14_N8
\cpu_top_i|muxa_i|oQ[3]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~89_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][3]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][3]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][3]~q\,
	datac => \data_ram_i|rMEM[8][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~89_combout\);

-- Location: LCCOMB_X35_Y12_N6
\cpu_top_i|muxa_i|oQ[3]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~90_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~89_combout\ & (\data_ram_i|rMEM[11][3]~q\)) # (!\cpu_top_i|muxa_i|oQ[3]~89_combout\ & ((\data_ram_i|rMEM[10][3]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[11][3]~q\,
	datac => \data_ram_i|rMEM[10][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~89_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~90_combout\);

-- Location: LCCOMB_X27_Y13_N22
\data_ram_i|rMEM[7][3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[7][3]~15_combout\ = !\cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[7][3]~15_combout\);

-- Location: LCCOMB_X34_Y15_N12
\data_ram_i|Decoder0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~57_combout\ = (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((!\cpu_top_i|mubx_i|oQ[4]~1_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[4]~3_combout\,
	datac => \cpu_top_i|mubx_i|oQ[4]~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \data_ram_i|Decoder0~57_combout\);

-- Location: LCCOMB_X28_Y11_N4
\data_ram_i|Decoder0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~31_combout\ = (\data_ram_i|Decoder0~30_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~30_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~31_combout\);

-- Location: FF_X27_Y13_N23
\data_ram_i|rMEM[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[7][3]~15_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][3]~q\);

-- Location: LCCOMB_X28_Y11_N14
\data_ram_i|Decoder0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~27_combout\ = (\data_ram_i|Decoder0~26_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~26_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~27_combout\);

-- Location: FF_X27_Y16_N7
\data_ram_i|rMEM[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][3]~q\);

-- Location: LCCOMB_X32_Y17_N16
\data_ram_i|Decoder0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~25_combout\ = (\data_ram_i|Decoder0~24_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~24_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~25_combout\);

-- Location: FF_X27_Y13_N25
\data_ram_i|rMEM[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][3]~q\);

-- Location: LCCOMB_X30_Y16_N14
\data_ram_i|Decoder0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~29_combout\ = (\data_ram_i|Decoder0~28_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~28_combout\,
	datac => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~29_combout\);

-- Location: FF_X27_Y16_N25
\data_ram_i|rMEM[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][3]~q\);

-- Location: LCCOMB_X27_Y16_N24
\cpu_top_i|muxa_i|oQ[3]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~91_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][3]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][3]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][3]~q\,
	datac => \data_ram_i|rMEM[4][3]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~91_combout\);

-- Location: LCCOMB_X27_Y16_N6
\cpu_top_i|muxa_i|oQ[3]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~92_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~91_combout\ & (!\data_ram_i|rMEM[7][3]~q\)) # (!\cpu_top_i|muxa_i|oQ[3]~91_combout\ & ((\data_ram_i|rMEM[6][3]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[7][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[6][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~91_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~92_combout\);

-- Location: LCCOMB_X26_Y12_N12
\data_ram_i|rMEM[2][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][3]~feeder_combout\ = \cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[2][3]~feeder_combout\);

-- Location: LCCOMB_X28_Y11_N22
\data_ram_i|Decoder0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~32_combout\ = (\data_ram_i|Decoder0~16_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~16_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~32_combout\);

-- Location: FF_X26_Y12_N13
\data_ram_i|rMEM[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][3]~q\);

-- Location: LCCOMB_X31_Y13_N24
\data_ram_i|Decoder0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~34_combout\ = (\data_ram_i|Decoder0~22_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~22_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~34_combout\);

-- Location: FF_X26_Y12_N11
\data_ram_i|rMEM[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][3]~q\);

-- Location: LCCOMB_X27_Y11_N14
\data_ram_i|rMEM[1][3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][3]~16_combout\ = !\cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[1][3]~16_combout\);

-- Location: LCCOMB_X28_Y15_N18
\data_ram_i|Decoder0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~35_combout\ = (\data_ram_i|Decoder0~57_combout\ & \data_ram_i|Decoder0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~57_combout\,
	datad => \data_ram_i|Decoder0~18_combout\,
	combout => \data_ram_i|Decoder0~35_combout\);

-- Location: FF_X27_Y11_N15
\data_ram_i|rMEM[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][3]~16_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][3]~q\);

-- Location: LCCOMB_X28_Y12_N16
\data_ram_i|rMEM[0][3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[0][3]~17_combout\ = !\cpu_top_i|alu_i|oC[3]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \data_ram_i|rMEM[0][3]~17_combout\);

-- Location: LCCOMB_X28_Y11_N24
\data_ram_i|Decoder0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~33_combout\ = (\data_ram_i|Decoder0~20_combout\ & \data_ram_i|Decoder0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_ram_i|Decoder0~20_combout\,
	datad => \data_ram_i|Decoder0~57_combout\,
	combout => \data_ram_i|Decoder0~33_combout\);

-- Location: FF_X28_Y12_N17
\data_ram_i|rMEM[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[0][3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][3]~q\);

-- Location: LCCOMB_X29_Y12_N30
\cpu_top_i|muxa_i|oQ[3]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~93_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (!\data_ram_i|rMEM[1][3]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((!\data_ram_i|rMEM[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][3]~q\,
	datab => \data_ram_i|rMEM[0][3]~q\,
	datac => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~93_combout\);

-- Location: LCCOMB_X26_Y12_N10
\cpu_top_i|muxa_i|oQ[3]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~94_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~93_combout\ & ((\data_ram_i|rMEM[3][3]~q\))) # (!\cpu_top_i|muxa_i|oQ[3]~93_combout\ & (\data_ram_i|rMEM[2][3]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][3]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][3]~q\,
	datad => \cpu_top_i|muxa_i|oQ[3]~93_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~94_combout\);

-- Location: LCCOMB_X31_Y12_N28
\cpu_top_i|muxa_i|oQ[3]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~95_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[3]~92_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[3]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~92_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~94_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~95_combout\);

-- Location: LCCOMB_X31_Y12_N10
\cpu_top_i|muxa_i|oQ[3]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~98_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~95_combout\ & (\cpu_top_i|muxa_i|oQ[3]~97_combout\)) # (!\cpu_top_i|muxa_i|oQ[3]~95_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~90_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[3]~97_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~90_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~95_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~98_combout\);

-- Location: LCCOMB_X31_Y12_N18
\cpu_top_i|muxa_i|oQ[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~110_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~99_combout\ & (\cpu_top_i|muxa_i|oQ[3]~109_combout\)) # (!\cpu_top_i|muxa_i|oQ[3]~99_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~98_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|muxa_i|oQ[3]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datab => \cpu_top_i|muxa_i|oQ[3]~99_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~109_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~98_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~110_combout\);

-- Location: LCCOMB_X31_Y12_N20
\cpu_top_i|muxa_i|oQ[3]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~111_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~110_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r7_i|sREG\(3),
	datac => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~110_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~111_combout\);

-- Location: LCCOMB_X31_Y12_N6
\cpu_top_i|muxa_i|oQ[3]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~112_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~111_combout\ & ((\cpu_top_i|r2_i|sREG\(3)))) # (!\cpu_top_i|muxa_i|oQ[3]~111_combout\ & (\cpu_top_i|r0_i|sREG\(3))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[3]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r0_i|sREG\(3),
	datab => \cpu_top_i|r2_i|sREG\(3),
	datac => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datad => \cpu_top_i|muxa_i|oQ[3]~111_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~112_combout\);

-- Location: LCCOMB_X31_Y15_N0
\cpu_top_i|muxa_i|oQ[3]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~113_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(3))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datac => \cpu_top_i|r1_i|sREG\(3),
	datad => \cpu_top_i|muxa_i|oQ[3]~112_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~113_combout\);

-- Location: LCCOMB_X31_Y15_N2
\cpu_top_i|muxa_i|oQ[3]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[3]~114_combout\ = (\cpu_top_i|muxa_i|oQ[3]~113_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(3),
	datad => \cpu_top_i|muxa_i|oQ[3]~113_combout\,
	combout => \cpu_top_i|muxa_i|oQ[3]~114_combout\);

-- Location: LCCOMB_X30_Y14_N30
\cpu_top_i|alu_i|oC[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[3]~15_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[3]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datac => \cpu_top_i|muxa_i|oQ[3]~114_combout\,
	datad => \cpu_top_i|alu_i|oC[15]~53_combout\,
	combout => \cpu_top_i|alu_i|oC[3]~15_combout\);

-- Location: LCCOMB_X30_Y13_N24
\cpu_top_i|alu_i|oC[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[0]~7_combout\ = (!\cpu_top_i|alu_i|oC[15]~2_combout\ & ((\cpu_top_i|alu_i|oC[15]~3_combout\) # ((!\cpu_top_i|pc_i|sCNT\(3) & \instr_rom_i|oQ[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|alu_i|oC[15]~3_combout\,
	datac => \instr_rom_i|oQ[8]~25_combout\,
	datad => \cpu_top_i|alu_i|oC[15]~2_combout\,
	combout => \cpu_top_i|alu_i|oC[0]~7_combout\);

-- Location: LCCOMB_X26_Y11_N8
\instr_rom_i|oQ[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[9]~28_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(0) & (!\cpu_top_i|pc_i|sCNT\(4)))) # (!\cpu_top_i|pc_i|sCNT\(2) & ((\cpu_top_i|pc_i|sCNT\(4) & ((!\cpu_top_i|pc_i|sCNT\(3)))) # (!\cpu_top_i|pc_i|sCNT\(4) & 
-- (!\cpu_top_i|pc_i|sCNT\(0) & \cpu_top_i|pc_i|sCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \cpu_top_i|pc_i|sCNT\(3),
	combout => \instr_rom_i|oQ[9]~28_combout\);

-- Location: LCCOMB_X26_Y11_N6
\instr_rom_i|oQ[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[9]~29_combout\ = (\instr_rom_i|oQ[9]~28_combout\ & (\cpu_top_i|pc_i|sCNT\(2) $ (!\cpu_top_i|pc_i|sCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \instr_rom_i|oQ[9]~28_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[9]~29_combout\);

-- Location: LCCOMB_X26_Y15_N18
\cpu_top_i|alu_i|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~11_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & !\instr_rom_i|oQ[11]~27_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\instr_rom_i|oQ[11]~27_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datac => \instr_rom_i|oQ[11]~27_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~11_combout\);

-- Location: LCCOMB_X28_Y15_N16
\cpu_top_i|alu_i|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~8_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\instr_rom_i|oQ[11]~27_combout\) # ((\instr_rom_i|oQ[10]~45_combout\) # (\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & 
-- (((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[2]~24_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[9]~29_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|alu_i|Add1~8_combout\);

-- Location: LCCOMB_X26_Y15_N28
\cpu_top_i|alu_i|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~5_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\instr_rom_i|oQ[10]~45_combout\) # ((\instr_rom_i|oQ[11]~27_combout\) # (\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & (((!\instr_rom_i|oQ[11]~27_combout\ 
-- & !\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[9]~29_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datac => \instr_rom_i|oQ[11]~27_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|alu_i|Add1~5_combout\);

-- Location: FF_X29_Y14_N21
\cpu_top_i|r1_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(0));

-- Location: LCCOMB_X29_Y14_N20
\cpu_top_i|muxa_i|oQ[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~4_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & (\cpu_top_i|r1_i|sREG\(0) & \cpu_top_i|muxa_i|oQ[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(0),
	datad => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~4_combout\);

-- Location: FF_X29_Y15_N29
\cpu_top_i|r5_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(0));

-- Location: LCCOMB_X29_Y15_N28
\cpu_top_i|muxa_i|oQ[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~1_combout\ = (\cpu_top_i|r5_i|sREG\(0) & \cpu_top_i|muxa_i|oQ[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|r5_i|sREG\(0),
	datad => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~1_combout\);

-- Location: FF_X29_Y12_N1
\cpu_top_i|r0_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(0));

-- Location: FF_X29_Y15_N27
\cpu_top_i|r7_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(0));

-- Location: LCCOMB_X29_Y15_N26
\cpu_top_i|muxa_i|oQ[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~31_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|r0_i|sREG\(0)) # ((\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|r7_i|sREG\(0) & 
-- !\cpu_top_i|muxa_i|oQ[7]~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r0_i|sREG\(0),
	datab => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datac => \cpu_top_i|r7_i|sREG\(0),
	datad => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~31_combout\);

-- Location: FF_X32_Y15_N23
\cpu_top_i|r2_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(0));

-- Location: FF_X29_Y12_N25
\cpu_top_i|r3_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(0));

-- Location: FF_X31_Y13_N21
\data_ram_i|rMEM[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][0]~q\);

-- Location: FF_X32_Y13_N5
\data_ram_i|rMEM[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][0]~q\);

-- Location: FF_X34_Y15_N1
\data_ram_i|rMEM[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][0]~q\);

-- Location: FF_X31_Y13_N19
\data_ram_i|rMEM[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][0]~q\);

-- Location: LCCOMB_X31_Y13_N18
\cpu_top_i|muxa_i|oQ[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~18_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[26][0]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[24][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[26][0]~q\,
	datac => \data_ram_i|rMEM[24][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~18_combout\);

-- Location: LCCOMB_X32_Y13_N4
\cpu_top_i|muxa_i|oQ[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~19_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~18_combout\ & ((\data_ram_i|rMEM[30][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~18_combout\ & (\data_ram_i|rMEM[28][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[28][0]~q\,
	datac => \data_ram_i|rMEM[30][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~18_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~19_combout\);

-- Location: FF_X32_Y15_N17
\data_ram_i|rMEM[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][0]~q\);

-- Location: FF_X30_Y16_N5
\data_ram_i|rMEM[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][0]~q\);

-- Location: LCCOMB_X34_Y13_N20
\data_ram_i|rMEM[27][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][0]~feeder_combout\ = \cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[27][0]~feeder_combout\);

-- Location: FF_X34_Y13_N21
\data_ram_i|rMEM[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][0]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][0]~q\);

-- Location: FF_X30_Y16_N3
\data_ram_i|rMEM[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][0]~q\);

-- Location: LCCOMB_X30_Y16_N2
\cpu_top_i|muxa_i|oQ[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~25_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[27][0]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[25][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[25][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~25_combout\);

-- Location: LCCOMB_X30_Y16_N4
\cpu_top_i|muxa_i|oQ[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~26_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~25_combout\ & (\data_ram_i|rMEM[31][0]~q\)) # (!\cpu_top_i|muxa_i|oQ[0]~25_combout\ & ((\data_ram_i|rMEM[29][0]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[31][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[29][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~25_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~26_combout\);

-- Location: LCCOMB_X35_Y14_N20
\data_ram_i|rMEM[20][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][0]~feeder_combout\ = \cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[20][0]~feeder_combout\);

-- Location: FF_X35_Y14_N21
\data_ram_i|rMEM[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][0]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][0]~q\);

-- Location: FF_X33_Y12_N11
\data_ram_i|rMEM[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][0]~q\);

-- Location: FF_X32_Y11_N17
\data_ram_i|rMEM[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][0]~q\);

-- Location: FF_X33_Y12_N13
\data_ram_i|rMEM[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][0]~q\);

-- Location: LCCOMB_X33_Y12_N12
\cpu_top_i|muxa_i|oQ[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~22_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[18][0]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[18][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[16][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~22_combout\);

-- Location: LCCOMB_X33_Y12_N10
\cpu_top_i|muxa_i|oQ[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~23_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~22_combout\ & ((\data_ram_i|rMEM[22][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~22_combout\ & (\data_ram_i|rMEM[20][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[20][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[22][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~22_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~23_combout\);

-- Location: FF_X34_Y15_N23
\data_ram_i|rMEM[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][0]~q\);

-- Location: FF_X33_Y16_N31
\data_ram_i|rMEM[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][0]~q\);

-- Location: FF_X33_Y11_N9
\data_ram_i|rMEM[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][0]~q\);

-- Location: FF_X33_Y16_N1
\data_ram_i|rMEM[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][0]~q\);

-- Location: LCCOMB_X33_Y16_N0
\cpu_top_i|muxa_i|oQ[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~20_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[19][0]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[17][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[19][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[17][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~20_combout\);

-- Location: LCCOMB_X33_Y16_N30
\cpu_top_i|muxa_i|oQ[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~21_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~20_combout\ & ((\data_ram_i|rMEM[23][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~20_combout\ & (\data_ram_i|rMEM[21][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][0]~q\,
	datac => \data_ram_i|rMEM[23][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~20_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~21_combout\);

-- Location: LCCOMB_X32_Y15_N18
\cpu_top_i|muxa_i|oQ[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~24_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # (\cpu_top_i|muxa_i|oQ[0]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[0]~23_combout\ & 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~23_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~21_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~24_combout\);

-- Location: LCCOMB_X32_Y15_N30
\cpu_top_i|muxa_i|oQ[0]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~27_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~26_combout\))) # (!\cpu_top_i|muxa_i|oQ[0]~24_combout\ & (\cpu_top_i|muxa_i|oQ[0]~19_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[0]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~26_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~27_combout\);

-- Location: FF_X27_Y12_N7
\cpu_top_i|r4_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(0));

-- Location: LCCOMB_X33_Y14_N20
\data_ram_i|rMEM[10][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][0]~0_combout\ = !\cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[10][0]~0_combout\);

-- Location: FF_X33_Y14_N21
\data_ram_i|rMEM[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][0]~0_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][0]~q\);

-- Location: FF_X33_Y14_N3
\data_ram_i|rMEM[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][0]~q\);

-- Location: LCCOMB_X36_Y12_N16
\data_ram_i|rMEM[9][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][0]~1_combout\ = !\cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[9][0]~1_combout\);

-- Location: FF_X36_Y12_N17
\data_ram_i|rMEM[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][0]~1_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][0]~q\);

-- Location: FF_X34_Y12_N21
\data_ram_i|rMEM[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][0]~q\);

-- Location: LCCOMB_X34_Y12_N20
\cpu_top_i|muxa_i|oQ[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~7_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\data_ram_i|rMEM[9][0]~q\))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][0]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[9][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~7_combout\);

-- Location: LCCOMB_X33_Y14_N2
\cpu_top_i|muxa_i|oQ[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~8_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~7_combout\ & ((\data_ram_i|rMEM[11][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~7_combout\ & (!\data_ram_i|rMEM[10][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[10][0]~q\,
	datac => \data_ram_i|rMEM[11][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~7_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~8_combout\);

-- Location: FF_X36_Y13_N13
\data_ram_i|rMEM[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][0]~q\);

-- Location: FF_X29_Y13_N19
\data_ram_i|rMEM[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][0]~q\);

-- Location: FF_X29_Y13_N29
\data_ram_i|rMEM[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][0]~q\);

-- Location: FF_X29_Y11_N1
\data_ram_i|rMEM[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][0]~q\);

-- Location: LCCOMB_X29_Y11_N0
\cpu_top_i|muxa_i|oQ[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~14_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][0]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[12][0]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][0]~q\,
	datac => \data_ram_i|rMEM[12][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~14_combout\);

-- Location: LCCOMB_X29_Y13_N18
\cpu_top_i|muxa_i|oQ[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~15_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[15][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[13][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~15_combout\);

-- Location: LCCOMB_X26_Y12_N0
\data_ram_i|rMEM[2][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][0]~feeder_combout\ = \cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[2][0]~feeder_combout\);

-- Location: FF_X26_Y12_N1
\data_ram_i|rMEM[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][0]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][0]~q\);

-- Location: FF_X27_Y11_N17
\data_ram_i|rMEM[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][0]~q\);

-- Location: LCCOMB_X26_Y11_N10
\data_ram_i|rMEM[3][0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[3][0]~4_combout\ = !\cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[3][0]~4_combout\);

-- Location: FF_X26_Y11_N11
\data_ram_i|rMEM[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[3][0]~4_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][0]~q\);

-- Location: FF_X27_Y11_N3
\data_ram_i|rMEM[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][0]~q\);

-- Location: LCCOMB_X27_Y11_N2
\cpu_top_i|muxa_i|oQ[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~11_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((!\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\data_ram_i|rMEM[3][0]~q\))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[1][0]~q\ & 
-- \cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[3][0]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[1][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~11_combout\);

-- Location: LCCOMB_X27_Y11_N16
\cpu_top_i|muxa_i|oQ[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~12_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~11_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~11_combout\ & (\data_ram_i|rMEM[2][0]~q\)) # 
-- (!\cpu_top_i|muxa_i|oQ[0]~11_combout\ & ((\data_ram_i|rMEM[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[2][0]~q\,
	datac => \data_ram_i|rMEM[0][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~11_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~12_combout\);

-- Location: LCCOMB_X27_Y13_N8
\data_ram_i|rMEM[5][0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][0]~2_combout\ = !\cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[5][0]~2_combout\);

-- Location: FF_X27_Y13_N9
\data_ram_i|rMEM[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][0]~2_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][0]~q\);

-- Location: FF_X27_Y13_N7
\data_ram_i|rMEM[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][0]~q\);

-- Location: LCCOMB_X27_Y16_N10
\data_ram_i|rMEM[4][0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][0]~3_combout\ = !\cpu_top_i|alu_i|oC[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[0]~8_combout\,
	combout => \data_ram_i|rMEM[4][0]~3_combout\);

-- Location: FF_X27_Y16_N11
\data_ram_i|rMEM[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][0]~3_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][0]~q\);

-- Location: FF_X27_Y16_N13
\data_ram_i|rMEM[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][0]~q\);

-- Location: LCCOMB_X27_Y16_N12
\cpu_top_i|muxa_i|oQ[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~9_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[6][0]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\data_ram_i|rMEM[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[4][0]~q\,
	datac => \data_ram_i|rMEM[6][0]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~9_combout\);

-- Location: LCCOMB_X27_Y13_N6
\cpu_top_i|muxa_i|oQ[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~10_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~9_combout\ & ((\data_ram_i|rMEM[7][0]~q\))) # (!\cpu_top_i|muxa_i|oQ[0]~9_combout\ & (!\data_ram_i|rMEM[5][0]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][0]~q\,
	datac => \data_ram_i|rMEM[7][0]~q\,
	datad => \cpu_top_i|muxa_i|oQ[0]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~10_combout\);

-- Location: LCCOMB_X32_Y15_N12
\cpu_top_i|muxa_i|oQ[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~13_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~10_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[0]~12_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~10_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~13_combout\);

-- Location: LCCOMB_X32_Y15_N6
\cpu_top_i|muxa_i|oQ[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~16_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~13_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~15_combout\))) # (!\cpu_top_i|muxa_i|oQ[0]~13_combout\ & (\cpu_top_i|muxa_i|oQ[0]~8_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~8_combout\,
	datac => \cpu_top_i|muxa_i|oQ[0]~15_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~13_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~16_combout\);

-- Location: LCCOMB_X32_Y15_N20
\cpu_top_i|muxa_i|oQ[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~17_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~5_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~16_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|r4_i|sREG\(0),
	datac => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~16_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~17_combout\);

-- Location: LCCOMB_X32_Y15_N0
\cpu_top_i|muxa_i|oQ[0]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~28_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~17_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~27_combout\))) # (!\cpu_top_i|muxa_i|oQ[0]~17_combout\ & (\cpu_top_i|r3_i|sREG\(0))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|r3_i|sREG\(0),
	datac => \cpu_top_i|muxa_i|oQ[0]~27_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~17_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~28_combout\);

-- Location: LCCOMB_X32_Y15_N10
\cpu_top_i|muxa_i|oQ[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~32_combout\ = (\cpu_top_i|muxa_i|oQ[0]~31_combout\ & ((\cpu_top_i|r2_i|sREG\(0)) # ((!\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[0]~31_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- \cpu_top_i|muxa_i|oQ[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[0]~31_combout\,
	datab => \cpu_top_i|r2_i|sREG\(0),
	datac => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~28_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~32_combout\);

-- Location: LCCOMB_X32_Y15_N24
\cpu_top_i|muxa_i|oQ[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[0]~34_combout\ = (\cpu_top_i|muxa_i|oQ[0]~4_combout\) # ((\cpu_top_i|muxa_i|oQ[0]~1_combout\) # ((\cpu_top_i|muxa_i|oQ[0]~33_combout\ & \cpu_top_i|muxa_i|oQ[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[0]~4_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~1_combout\,
	datac => \cpu_top_i|muxa_i|oQ[0]~33_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~32_combout\,
	combout => \cpu_top_i|muxa_i|oQ[0]~34_combout\);

-- Location: LCCOMB_X31_Y12_N0
\cpu_top_i|cu_i|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|Equal11~0_combout\ = (!\instr_rom_i|oQ[11]~27_combout\ & (!\instr_rom_i|oQ[9]~29_combout\ & \instr_rom_i|oQ[10]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[9]~29_combout\,
	datad => \instr_rom_i|oQ[10]~45_combout\,
	combout => \cpu_top_i|cu_i|Equal11~0_combout\);

-- Location: LCCOMB_X31_Y15_N14
\cpu_top_i|alu_i|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~2_cout\ = CARRY(\cpu_top_i|cu_i|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|cu_i|Equal11~0_combout\,
	datad => VCC,
	cout => \cpu_top_i|alu_i|Add1~2_cout\);

-- Location: LCCOMB_X31_Y15_N16
\cpu_top_i|alu_i|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~3_combout\ = (\cpu_top_i|alu_i|Add1~0_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~34_combout\ & (\cpu_top_i|alu_i|Add1~2_cout\ & VCC)) # (!\cpu_top_i|muxa_i|oQ[0]~34_combout\ & (!\cpu_top_i|alu_i|Add1~2_cout\)))) # 
-- (!\cpu_top_i|alu_i|Add1~0_combout\ & ((\cpu_top_i|muxa_i|oQ[0]~34_combout\ & (!\cpu_top_i|alu_i|Add1~2_cout\)) # (!\cpu_top_i|muxa_i|oQ[0]~34_combout\ & ((\cpu_top_i|alu_i|Add1~2_cout\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~4\ = CARRY((\cpu_top_i|alu_i|Add1~0_combout\ & (!\cpu_top_i|muxa_i|oQ[0]~34_combout\ & !\cpu_top_i|alu_i|Add1~2_cout\)) # (!\cpu_top_i|alu_i|Add1~0_combout\ & ((!\cpu_top_i|alu_i|Add1~2_cout\) # 
-- (!\cpu_top_i|muxa_i|oQ[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~0_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~34_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~2_cout\,
	combout => \cpu_top_i|alu_i|Add1~3_combout\,
	cout => \cpu_top_i|alu_i|Add1~4\);

-- Location: LCCOMB_X31_Y15_N18
\cpu_top_i|alu_i|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~6_combout\ = ((\cpu_top_i|muxa_i|oQ[1]~61_combout\ $ (\cpu_top_i|alu_i|Add1~5_combout\ $ (!\cpu_top_i|alu_i|Add1~4\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~7\ = CARRY((\cpu_top_i|muxa_i|oQ[1]~61_combout\ & ((\cpu_top_i|alu_i|Add1~5_combout\) # (!\cpu_top_i|alu_i|Add1~4\))) # (!\cpu_top_i|muxa_i|oQ[1]~61_combout\ & (\cpu_top_i|alu_i|Add1~5_combout\ & !\cpu_top_i|alu_i|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[1]~61_combout\,
	datab => \cpu_top_i|alu_i|Add1~5_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~4\,
	combout => \cpu_top_i|alu_i|Add1~6_combout\,
	cout => \cpu_top_i|alu_i|Add1~7\);

-- Location: LCCOMB_X31_Y15_N20
\cpu_top_i|alu_i|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~9_combout\ = (\cpu_top_i|muxa_i|oQ[2]~88_combout\ & ((\cpu_top_i|alu_i|Add1~8_combout\ & (\cpu_top_i|alu_i|Add1~7\ & VCC)) # (!\cpu_top_i|alu_i|Add1~8_combout\ & (!\cpu_top_i|alu_i|Add1~7\)))) # (!\cpu_top_i|muxa_i|oQ[2]~88_combout\ 
-- & ((\cpu_top_i|alu_i|Add1~8_combout\ & (!\cpu_top_i|alu_i|Add1~7\)) # (!\cpu_top_i|alu_i|Add1~8_combout\ & ((\cpu_top_i|alu_i|Add1~7\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~10\ = CARRY((\cpu_top_i|muxa_i|oQ[2]~88_combout\ & (!\cpu_top_i|alu_i|Add1~8_combout\ & !\cpu_top_i|alu_i|Add1~7\)) # (!\cpu_top_i|muxa_i|oQ[2]~88_combout\ & ((!\cpu_top_i|alu_i|Add1~7\) # (!\cpu_top_i|alu_i|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[2]~88_combout\,
	datab => \cpu_top_i|alu_i|Add1~8_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~7\,
	combout => \cpu_top_i|alu_i|Add1~9_combout\,
	cout => \cpu_top_i|alu_i|Add1~10\);

-- Location: LCCOMB_X31_Y15_N22
\cpu_top_i|alu_i|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~12_combout\ = ((\cpu_top_i|alu_i|Add1~11_combout\ $ (\cpu_top_i|muxa_i|oQ[3]~114_combout\ $ (!\cpu_top_i|alu_i|Add1~10\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~13\ = CARRY((\cpu_top_i|alu_i|Add1~11_combout\ & ((\cpu_top_i|muxa_i|oQ[3]~114_combout\) # (!\cpu_top_i|alu_i|Add1~10\))) # (!\cpu_top_i|alu_i|Add1~11_combout\ & (\cpu_top_i|muxa_i|oQ[3]~114_combout\ & !\cpu_top_i|alu_i|Add1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~11_combout\,
	datab => \cpu_top_i|muxa_i|oQ[3]~114_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~10\,
	combout => \cpu_top_i|alu_i|Add1~12_combout\,
	cout => \cpu_top_i|alu_i|Add1~13\);

-- Location: LCCOMB_X30_Y14_N24
\cpu_top_i|alu_i|oC[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[3]~16_combout\ = (\cpu_top_i|muxa_i|oQ[3]~114_combout\ & (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & \cpu_top_i|alu_i|oC[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[3]~114_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|alu_i|oC[0]~5_combout\,
	combout => \cpu_top_i|alu_i|oC[3]~16_combout\);

-- Location: LCCOMB_X30_Y14_N10
\cpu_top_i|alu_i|oC[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[3]~17_combout\ = (\cpu_top_i|alu_i|oC[3]~15_combout\) # ((\cpu_top_i|alu_i|oC[3]~16_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[3]~15_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|Add1~12_combout\,
	datad => \cpu_top_i|alu_i|oC[3]~16_combout\,
	combout => \cpu_top_i|alu_i|oC[3]~17_combout\);

-- Location: FF_X31_Y12_N27
\cpu_top_i|r3_i|sREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[3]~17_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(3));

-- Location: LCCOMB_X28_Y16_N24
\cpu_top_i|mubx_i|oQ[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[3]~17_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(3)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(3) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(3),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(3),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[3]~17_combout\);

-- Location: LCCOMB_X31_Y12_N24
\cpu_top_i|mubx_i|oQ[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[3]~18_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~17_combout\ & (\cpu_top_i|r3_i|sREG\(3))) # (!\cpu_top_i|mubx_i|oQ[3]~17_combout\ & ((\cpu_top_i|r2_i|sREG\(3)))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(3),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \cpu_top_i|r2_i|sREG\(3),
	datad => \cpu_top_i|mubx_i|oQ[3]~17_combout\,
	combout => \cpu_top_i|mubx_i|oQ[3]~18_combout\);

-- Location: LCCOMB_X31_Y12_N2
\data_ram_i|Decoder0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~56_combout\ = (!\cpu_top_i|mubx_i|oQ[4]~4_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~16_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~18_combout\,
	datac => \cpu_top_i|mubx_i|oQ[4]~4_combout\,
	datad => \cpu_top_i|mubx_i|oQ[3]~16_combout\,
	combout => \data_ram_i|Decoder0~56_combout\);

-- Location: LCCOMB_X29_Y11_N28
\data_ram_i|Decoder0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~38_combout\ = (\data_ram_i|Decoder0~56_combout\ & \data_ram_i|Decoder0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_ram_i|Decoder0~56_combout\,
	datad => \data_ram_i|Decoder0~28_combout\,
	combout => \data_ram_i|Decoder0~38_combout\);

-- Location: FF_X29_Y11_N19
\data_ram_i|rMEM[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[12][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][1]~q\);

-- Location: FF_X36_Y12_N5
\data_ram_i|rMEM[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][1]~q\);

-- Location: LCCOMB_X37_Y12_N12
\data_ram_i|rMEM[8][1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[8][1]~5_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[8][1]~5_combout\);

-- Location: FF_X37_Y12_N13
\data_ram_i|rMEM[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[8][1]~5_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][1]~q\);

-- Location: FF_X36_Y12_N19
\data_ram_i|rMEM[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][1]~q\);

-- Location: LCCOMB_X36_Y12_N18
\cpu_top_i|muxa_i|oQ[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~37_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[9][1]~q\) # (\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (!\data_ram_i|rMEM[8][1]~q\ & 
-- ((!\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[8][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[9][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~37_combout\);

-- Location: LCCOMB_X36_Y12_N4
\cpu_top_i|muxa_i|oQ[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~38_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~37_combout\ & ((\data_ram_i|rMEM[13][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~37_combout\ & (\data_ram_i|rMEM[12][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[12][1]~q\,
	datac => \data_ram_i|rMEM[13][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~37_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~38_combout\);

-- Location: LCCOMB_X35_Y12_N0
\data_ram_i|rMEM[11][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[11][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[11][1]~feeder_combout\);

-- Location: FF_X35_Y12_N1
\data_ram_i|rMEM[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[11][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][1]~q\);

-- Location: FF_X29_Y13_N3
\data_ram_i|rMEM[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][1]~q\);

-- Location: LCCOMB_X36_Y13_N18
\data_ram_i|rMEM[10][1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][1]~10_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[10][1]~10_combout\);

-- Location: FF_X36_Y13_N19
\data_ram_i|rMEM[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][1]~10_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][1]~q\);

-- Location: FF_X29_Y13_N25
\data_ram_i|rMEM[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][1]~q\);

-- Location: LCCOMB_X29_Y13_N24
\cpu_top_i|muxa_i|oQ[1]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~44_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[14][1]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\data_ram_i|rMEM[10][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[10][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[14][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~44_combout\);

-- Location: LCCOMB_X29_Y13_N2
\cpu_top_i|muxa_i|oQ[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~45_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~44_combout\ & ((\data_ram_i|rMEM[15][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~44_combout\ & (\data_ram_i|rMEM[11][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[11][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~44_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~45_combout\);

-- Location: LCCOMB_X33_Y15_N8
\data_ram_i|rMEM[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[1][1]~feeder_combout\);

-- Location: FF_X33_Y15_N9
\data_ram_i|rMEM[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][1]~q\);

-- Location: FF_X32_Y12_N27
\data_ram_i|rMEM[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][1]~q\);

-- Location: LCCOMB_X31_Y16_N28
\data_ram_i|rMEM[4][1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][1]~8_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[4][1]~8_combout\);

-- Location: FF_X31_Y16_N29
\data_ram_i|rMEM[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][1]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][1]~q\);

-- Location: LCCOMB_X27_Y11_N0
\data_ram_i|rMEM[0][1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[0][1]~9_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[0][1]~9_combout\);

-- Location: FF_X27_Y11_N1
\data_ram_i|rMEM[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[0][1]~9_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][1]~q\);

-- Location: LCCOMB_X32_Y12_N28
\cpu_top_i|muxa_i|oQ[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~41_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\data_ram_i|rMEM[4][1]~q\))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- !\data_ram_i|rMEM[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[4][1]~q\,
	datac => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datad => \data_ram_i|rMEM[0][1]~q\,
	combout => \cpu_top_i|muxa_i|oQ[1]~41_combout\);

-- Location: LCCOMB_X32_Y12_N26
\cpu_top_i|muxa_i|oQ[1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~42_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~41_combout\ & ((\data_ram_i|rMEM[5][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~41_combout\ & (\data_ram_i|rMEM[1][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[1][1]~q\,
	datac => \data_ram_i|rMEM[5][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~41_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~42_combout\);

-- Location: LCCOMB_X26_Y11_N20
\data_ram_i|rMEM[3][1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[3][1]~6_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[3][1]~6_combout\);

-- Location: FF_X26_Y11_N21
\data_ram_i|rMEM[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[3][1]~6_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][1]~q\);

-- Location: FF_X28_Y11_N11
\data_ram_i|rMEM[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][1]~q\);

-- Location: LCCOMB_X28_Y15_N28
\data_ram_i|rMEM[2][1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][1]~7_combout\ = !\cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[2][1]~7_combout\);

-- Location: FF_X28_Y15_N29
\data_ram_i|rMEM[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][1]~7_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][1]~q\);

-- Location: FF_X28_Y11_N29
\data_ram_i|rMEM[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][1]~q\);

-- Location: LCCOMB_X28_Y11_N28
\cpu_top_i|muxa_i|oQ[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~39_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[6][1]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\data_ram_i|rMEM[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[2][1]~q\,
	datac => \data_ram_i|rMEM[6][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~39_combout\);

-- Location: LCCOMB_X28_Y11_N10
\cpu_top_i|muxa_i|oQ[1]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~40_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~39_combout\ & ((\data_ram_i|rMEM[7][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~39_combout\ & (!\data_ram_i|rMEM[3][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[3][1]~q\,
	datac => \data_ram_i|rMEM[7][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~39_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~40_combout\);

-- Location: LCCOMB_X32_Y12_N20
\cpu_top_i|muxa_i|oQ[1]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~43_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~40_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|muxa_i|oQ[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[1]~42_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~40_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~43_combout\);

-- Location: LCCOMB_X32_Y12_N2
\cpu_top_i|muxa_i|oQ[1]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~46_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~43_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~45_combout\))) # (!\cpu_top_i|muxa_i|oQ[1]~43_combout\ & (\cpu_top_i|muxa_i|oQ[1]~38_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[1]~38_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[1]~45_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~43_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~46_combout\);

-- Location: LCCOMB_X32_Y12_N12
\cpu_top_i|muxa_i|oQ[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~47_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~5_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~46_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(1),
	datab => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~46_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~47_combout\);

-- Location: FF_X29_Y12_N9
\cpu_top_i|r3_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(1));

-- Location: LCCOMB_X31_Y11_N20
\data_ram_i|rMEM[26][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[26][1]~feeder_combout\);

-- Location: FF_X31_Y11_N21
\data_ram_i|rMEM[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][1]~q\);

-- Location: FF_X30_Y11_N29
\data_ram_i|rMEM[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][1]~q\);

-- Location: LCCOMB_X32_Y16_N4
\data_ram_i|rMEM[25][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[25][1]~feeder_combout\);

-- Location: FF_X32_Y16_N5
\data_ram_i|rMEM[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][1]~q\);

-- Location: FF_X31_Y13_N9
\data_ram_i|rMEM[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][1]~q\);

-- Location: LCCOMB_X31_Y13_N8
\cpu_top_i|muxa_i|oQ[1]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~48_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[25][1]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[24][1]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[25][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[24][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~48_combout\);

-- Location: LCCOMB_X31_Y12_N22
\cpu_top_i|muxa_i|oQ[1]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~49_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~48_combout\ & ((\data_ram_i|rMEM[27][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~48_combout\ & (\data_ram_i|rMEM[26][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[27][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~48_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~49_combout\);

-- Location: FF_X32_Y15_N15
\data_ram_i|rMEM[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][1]~q\);

-- Location: FF_X32_Y13_N31
\data_ram_i|rMEM[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][1]~q\);

-- Location: LCCOMB_X32_Y16_N6
\data_ram_i|rMEM[29][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[29][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[29][1]~feeder_combout\);

-- Location: FF_X32_Y16_N7
\data_ram_i|rMEM[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[29][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][1]~q\);

-- Location: FF_X31_Y13_N15
\data_ram_i|rMEM[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][1]~q\);

-- Location: LCCOMB_X31_Y13_N14
\cpu_top_i|muxa_i|oQ[1]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~55_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[29][1]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[28][1]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[29][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[28][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~55_combout\);

-- Location: LCCOMB_X32_Y13_N30
\cpu_top_i|muxa_i|oQ[1]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~56_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~55_combout\ & (\data_ram_i|rMEM[31][1]~q\)) # (!\cpu_top_i|muxa_i|oQ[1]~55_combout\ & ((\data_ram_i|rMEM[30][1]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[31][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[30][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~55_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~56_combout\);

-- Location: FF_X34_Y14_N29
\data_ram_i|rMEM[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][1]~q\);

-- Location: FF_X34_Y14_N3
\data_ram_i|rMEM[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][1]~q\);

-- Location: FF_X36_Y14_N17
\data_ram_i|rMEM[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][1]~q\);

-- Location: FF_X35_Y14_N19
\data_ram_i|rMEM[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][1]~q\);

-- Location: LCCOMB_X35_Y14_N18
\cpu_top_i|muxa_i|oQ[1]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~50_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[21][1]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[20][1]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[21][1]~q\,
	datac => \data_ram_i|rMEM[20][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~50_combout\);

-- Location: LCCOMB_X34_Y14_N2
\cpu_top_i|muxa_i|oQ[1]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~51_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~50_combout\ & ((\data_ram_i|rMEM[23][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~50_combout\ & (\data_ram_i|rMEM[22][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[22][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[23][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~50_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~51_combout\);

-- Location: LCCOMB_X32_Y11_N30
\data_ram_i|rMEM[18][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[18][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[18][1]~feeder_combout\);

-- Location: FF_X32_Y11_N31
\data_ram_i|rMEM[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[18][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][1]~q\);

-- Location: FF_X33_Y11_N23
\data_ram_i|rMEM[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][1]~q\);

-- Location: LCCOMB_X33_Y16_N24
\data_ram_i|rMEM[17][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[17][1]~feeder_combout\ = \cpu_top_i|alu_i|oC[1]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[1]~11_combout\,
	combout => \data_ram_i|rMEM[17][1]~feeder_combout\);

-- Location: FF_X33_Y16_N25
\data_ram_i|rMEM[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[17][1]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][1]~q\);

-- Location: FF_X33_Y12_N21
\data_ram_i|rMEM[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][1]~q\);

-- Location: LCCOMB_X33_Y12_N20
\cpu_top_i|muxa_i|oQ[1]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~52_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[17][1]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[16][1]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[17][1]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[16][1]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~52_combout\);

-- Location: LCCOMB_X33_Y11_N22
\cpu_top_i|muxa_i|oQ[1]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~53_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~52_combout\ & ((\data_ram_i|rMEM[19][1]~q\))) # (!\cpu_top_i|muxa_i|oQ[1]~52_combout\ & (\data_ram_i|rMEM[18][1]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[18][1]~q\,
	datac => \data_ram_i|rMEM[19][1]~q\,
	datad => \cpu_top_i|muxa_i|oQ[1]~52_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~53_combout\);

-- Location: LCCOMB_X32_Y12_N18
\cpu_top_i|muxa_i|oQ[1]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~54_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[1]~51_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[1]~51_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~53_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~54_combout\);

-- Location: LCCOMB_X32_Y12_N24
\cpu_top_i|muxa_i|oQ[1]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~57_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~54_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~56_combout\))) # (!\cpu_top_i|muxa_i|oQ[1]~54_combout\ & (\cpu_top_i|muxa_i|oQ[1]~49_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[1]~49_combout\,
	datac => \cpu_top_i|muxa_i|oQ[1]~56_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~54_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~57_combout\);

-- Location: LCCOMB_X32_Y12_N10
\cpu_top_i|muxa_i|oQ[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~58_combout\ = (\cpu_top_i|muxa_i|oQ[1]~47_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~57_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\))) # (!\cpu_top_i|muxa_i|oQ[1]~47_combout\ & (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & 
-- (\cpu_top_i|r3_i|sREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[1]~47_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datac => \cpu_top_i|r3_i|sREG\(1),
	datad => \cpu_top_i|muxa_i|oQ[1]~57_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~58_combout\);

-- Location: LCCOMB_X32_Y12_N16
\cpu_top_i|muxa_i|oQ[1]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~59_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~58_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(1),
	datab => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~58_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~59_combout\);

-- Location: LCCOMB_X32_Y15_N28
\cpu_top_i|muxa_i|oQ[1]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~60_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[1]~59_combout\ & (\cpu_top_i|r2_i|sREG\(1))) # (!\cpu_top_i|muxa_i|oQ[1]~59_combout\ & ((\cpu_top_i|r0_i|sREG\(1)))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[1]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(1),
	datab => \cpu_top_i|r0_i|sREG\(1),
	datac => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~59_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~60_combout\);

-- Location: LCCOMB_X32_Y15_N2
\cpu_top_i|muxa_i|oQ[1]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[1]~61_combout\ = (\cpu_top_i|muxa_i|oQ[1]~35_combout\) # ((\cpu_top_i|muxa_i|oQ[1]~36_combout\) # ((\cpu_top_i|muxa_i|oQ[0]~33_combout\ & \cpu_top_i|muxa_i|oQ[1]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[1]~35_combout\,
	datab => \cpu_top_i|muxa_i|oQ[1]~36_combout\,
	datac => \cpu_top_i|muxa_i|oQ[0]~33_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~60_combout\,
	combout => \cpu_top_i|muxa_i|oQ[1]~61_combout\);

-- Location: LCCOMB_X32_Y15_N26
\cpu_top_i|alu_i|oC[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[1]~10_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & \cpu_top_i|muxa_i|oQ[1]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datac => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~61_combout\,
	combout => \cpu_top_i|alu_i|oC[1]~10_combout\);

-- Location: LCCOMB_X32_Y15_N4
\cpu_top_i|alu_i|oC[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[1]~9_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[1]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datad => \cpu_top_i|muxa_i|oQ[1]~61_combout\,
	combout => \cpu_top_i|alu_i|oC[1]~9_combout\);

-- Location: LCCOMB_X32_Y15_N14
\cpu_top_i|alu_i|oC[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[1]~11_combout\ = (\cpu_top_i|alu_i|oC[1]~10_combout\) # ((\cpu_top_i|alu_i|oC[1]~9_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[1]~10_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[1]~9_combout\,
	datad => \cpu_top_i|alu_i|Add1~6_combout\,
	combout => \cpu_top_i|alu_i|oC[1]~11_combout\);

-- Location: FF_X32_Y15_N9
\cpu_top_i|r2_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(1));

-- Location: LCCOMB_X29_Y12_N6
\cpu_top_i|mubx_i|oQ[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[1]~7_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(1)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(1) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r1_i|sREG\(1),
	datac => \cpu_top_i|r0_i|sREG\(1),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[1]~7_combout\);

-- Location: LCCOMB_X29_Y12_N8
\cpu_top_i|mubx_i|oQ[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[1]~8_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~7_combout\ & ((\cpu_top_i|r3_i|sREG\(1)))) # (!\cpu_top_i|mubx_i|oQ[1]~7_combout\ & (\cpu_top_i|r2_i|sREG\(1))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \cpu_top_i|r2_i|sREG\(1),
	datac => \cpu_top_i|r3_i|sREG\(1),
	datad => \cpu_top_i|mubx_i|oQ[1]~7_combout\,
	combout => \cpu_top_i|mubx_i|oQ[1]~8_combout\);

-- Location: FF_X27_Y12_N13
\cpu_top_i|r6_i|sREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[1]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(1));

-- Location: LCCOMB_X27_Y12_N12
\cpu_top_i|mubx_i|oQ[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[1]~5_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r7_i|sREG\(1)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r6_i|sREG\(1) & \instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(1),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(1),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[1]~5_combout\);

-- Location: LCCOMB_X27_Y12_N14
\cpu_top_i|mubx_i|oQ[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[1]~6_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~5_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~5_combout\ & (\cpu_top_i|r5_i|sREG\(1))) # (!\cpu_top_i|mubx_i|oQ[1]~5_combout\ 
-- & ((\cpu_top_i|r4_i|sREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(1),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \cpu_top_i|r4_i|sREG\(1),
	datad => \cpu_top_i|mubx_i|oQ[1]~5_combout\,
	combout => \cpu_top_i|mubx_i|oQ[1]~6_combout\);

-- Location: LCCOMB_X29_Y12_N22
\cpu_top_i|mubx_i|oQ[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[1]~9_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~6_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[1]~8_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~6_combout\,
	combout => \cpu_top_i|mubx_i|oQ[1]~9_combout\);

-- Location: LCCOMB_X28_Y11_N2
\data_ram_i|Decoder0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~30_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|cu_i|Equal10~1_combout\ & \cpu_top_i|mubx_i|oQ[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|cu_i|Equal10~1_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \data_ram_i|Decoder0~30_combout\);

-- Location: LCCOMB_X32_Y17_N10
\data_ram_i|Decoder0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|Decoder0~55_combout\ = (\data_ram_i|Decoder0~30_combout\ & \data_ram_i|Decoder0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|Decoder0~30_combout\,
	datad => \data_ram_i|Decoder0~58_combout\,
	combout => \data_ram_i|Decoder0~55_combout\);

-- Location: FF_X30_Y14_N21
\data_ram_i|rMEM[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][4]~q\);

-- Location: FF_X30_Y11_N3
\data_ram_i|rMEM[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][4]~q\);

-- Location: FF_X32_Y14_N13
\data_ram_i|rMEM[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][4]~q\);

-- Location: FF_X31_Y13_N23
\data_ram_i|rMEM[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][4]~q\);

-- Location: LCCOMB_X31_Y13_N22
\cpu_top_i|muxa_i|oQ[4]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~133_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[29][4]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[28][4]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[29][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[28][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~133_combout\);

-- Location: LCCOMB_X30_Y11_N2
\cpu_top_i|muxa_i|oQ[4]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~134_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~133_combout\ & (\data_ram_i|rMEM[31][4]~q\)) # (!\cpu_top_i|muxa_i|oQ[4]~133_combout\ & ((\data_ram_i|rMEM[30][4]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[31][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[30][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~133_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~134_combout\);

-- Location: LCCOMB_X31_Y11_N16
\data_ram_i|rMEM[26][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[26][4]~feeder_combout\);

-- Location: FF_X31_Y11_N17
\data_ram_i|rMEM[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][4]~q\);

-- Location: FF_X30_Y11_N1
\data_ram_i|rMEM[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][4]~q\);

-- Location: LCCOMB_X30_Y16_N8
\data_ram_i|rMEM[25][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[25][4]~feeder_combout\);

-- Location: FF_X30_Y16_N9
\data_ram_i|rMEM[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][4]~q\);

-- Location: FF_X29_Y11_N13
\data_ram_i|rMEM[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][4]~q\);

-- Location: LCCOMB_X29_Y11_N12
\cpu_top_i|muxa_i|oQ[4]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~126_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[25][4]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[24][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[25][4]~q\,
	datac => \data_ram_i|rMEM[24][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~126_combout\);

-- Location: LCCOMB_X30_Y11_N0
\cpu_top_i|muxa_i|oQ[4]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~127_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~126_combout\ & ((\data_ram_i|rMEM[27][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~126_combout\ & (\data_ram_i|rMEM[26][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[27][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~126_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~127_combout\);

-- Location: LCCOMB_X32_Y11_N18
\data_ram_i|rMEM[18][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[18][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[18][4]~feeder_combout\);

-- Location: FF_X32_Y11_N19
\data_ram_i|rMEM[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[18][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][4]~q\);

-- Location: FF_X33_Y11_N1
\data_ram_i|rMEM[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][4]~q\);

-- Location: LCCOMB_X33_Y16_N14
\data_ram_i|rMEM[17][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[17][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[17][4]~feeder_combout\);

-- Location: FF_X33_Y16_N15
\data_ram_i|rMEM[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[17][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][4]~q\);

-- Location: FF_X33_Y12_N29
\data_ram_i|rMEM[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][4]~q\);

-- Location: LCCOMB_X33_Y12_N28
\cpu_top_i|muxa_i|oQ[4]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~130_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[17][4]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[16][4]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[17][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[16][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~130_combout\);

-- Location: LCCOMB_X33_Y11_N0
\cpu_top_i|muxa_i|oQ[4]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~131_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~130_combout\ & ((\data_ram_i|rMEM[19][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~130_combout\ & (\data_ram_i|rMEM[18][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[18][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[19][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~130_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~131_combout\);

-- Location: FF_X34_Y14_N13
\data_ram_i|rMEM[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][4]~q\);

-- Location: FF_X34_Y14_N11
\data_ram_i|rMEM[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][4]~q\);

-- Location: LCCOMB_X36_Y14_N20
\data_ram_i|rMEM[21][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[21][4]~feeder_combout\);

-- Location: FF_X36_Y14_N21
\data_ram_i|rMEM[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][4]~q\);

-- Location: FF_X35_Y14_N17
\data_ram_i|rMEM[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][4]~q\);

-- Location: LCCOMB_X35_Y14_N16
\cpu_top_i|muxa_i|oQ[4]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~128_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[21][4]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[20][4]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[21][4]~q\,
	datac => \data_ram_i|rMEM[20][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~128_combout\);

-- Location: LCCOMB_X34_Y14_N10
\cpu_top_i|muxa_i|oQ[4]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~129_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~128_combout\ & ((\data_ram_i|rMEM[23][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~128_combout\ & (\data_ram_i|rMEM[22][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[22][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[23][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~128_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~129_combout\);

-- Location: LCCOMB_X30_Y12_N18
\cpu_top_i|muxa_i|oQ[4]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~132_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # (\cpu_top_i|muxa_i|oQ[4]~129_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[4]~131_combout\ & 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|muxa_i|oQ[4]~131_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[4]~129_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~132_combout\);

-- Location: LCCOMB_X30_Y12_N4
\cpu_top_i|muxa_i|oQ[4]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~135_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~132_combout\ & (\cpu_top_i|muxa_i|oQ[4]~134_combout\)) # (!\cpu_top_i|muxa_i|oQ[4]~132_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~127_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[4]~134_combout\,
	datab => \cpu_top_i|muxa_i|oQ[4]~127_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[4]~132_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~135_combout\);

-- Location: FF_X36_Y12_N3
\data_ram_i|rMEM[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][4]~q\);

-- Location: FF_X37_Y12_N29
\data_ram_i|rMEM[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][4]~q\);

-- Location: FF_X29_Y11_N15
\data_ram_i|rMEM[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][4]~q\);

-- Location: FF_X37_Y12_N19
\data_ram_i|rMEM[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][4]~q\);

-- Location: LCCOMB_X37_Y12_N18
\cpu_top_i|muxa_i|oQ[4]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~115_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[12][4]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[8][4]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[12][4]~q\,
	datac => \data_ram_i|rMEM[8][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~115_combout\);

-- Location: LCCOMB_X37_Y12_N28
\cpu_top_i|muxa_i|oQ[4]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~116_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~115_combout\ & ((\data_ram_i|rMEM[13][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~115_combout\ & (\data_ram_i|rMEM[9][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[9][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[13][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~115_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~116_combout\);

-- Location: FF_X33_Y14_N9
\data_ram_i|rMEM[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][4]~q\);

-- Location: FF_X29_Y13_N31
\data_ram_i|rMEM[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][4]~q\);

-- Location: LCCOMB_X34_Y12_N16
\data_ram_i|rMEM[14][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[14][4]~feeder_combout\);

-- Location: FF_X34_Y12_N17
\data_ram_i|rMEM[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][4]~q\);

-- Location: FF_X33_Y14_N31
\data_ram_i|rMEM[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][4]~q\);

-- Location: LCCOMB_X33_Y14_N30
\cpu_top_i|muxa_i|oQ[4]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~122_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[14][4]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[10][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[14][4]~q\,
	datac => \data_ram_i|rMEM[10][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~122_combout\);

-- Location: LCCOMB_X29_Y13_N30
\cpu_top_i|muxa_i|oQ[4]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~123_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~122_combout\ & ((\data_ram_i|rMEM[15][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~122_combout\ & (\data_ram_i|rMEM[11][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[11][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~122_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~123_combout\);

-- Location: FF_X26_Y13_N21
\data_ram_i|rMEM[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][4]~q\);

-- Location: FF_X28_Y15_N21
\data_ram_i|rMEM[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][4]~q\);

-- Location: LCCOMB_X27_Y16_N14
\data_ram_i|rMEM[6][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[6][4]~feeder_combout\);

-- Location: FF_X27_Y16_N15
\data_ram_i|rMEM[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][4]~q\);

-- Location: FF_X28_Y15_N11
\data_ram_i|rMEM[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][4]~q\);

-- Location: LCCOMB_X28_Y15_N10
\cpu_top_i|muxa_i|oQ[4]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~117_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[6][4]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[2][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[6][4]~q\,
	datac => \data_ram_i|rMEM[2][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~117_combout\);

-- Location: LCCOMB_X28_Y15_N20
\cpu_top_i|muxa_i|oQ[4]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~118_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~117_combout\ & ((\data_ram_i|rMEM[7][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~117_combout\ & (\data_ram_i|rMEM[3][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[3][4]~q\,
	datac => \data_ram_i|rMEM[7][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~117_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~118_combout\);

-- Location: LCCOMB_X33_Y15_N22
\data_ram_i|rMEM[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[1][4]~feeder_combout\);

-- Location: FF_X33_Y15_N23
\data_ram_i|rMEM[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][4]~q\);

-- Location: FF_X25_Y12_N5
\data_ram_i|rMEM[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][4]~q\);

-- Location: LCCOMB_X27_Y16_N20
\data_ram_i|rMEM[4][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][4]~feeder_combout\ = \cpu_top_i|alu_i|oC[4]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \data_ram_i|rMEM[4][4]~feeder_combout\);

-- Location: FF_X27_Y16_N21
\data_ram_i|rMEM[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][4]~q\);

-- Location: FF_X25_Y12_N7
\data_ram_i|rMEM[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][4]~q\);

-- Location: LCCOMB_X25_Y12_N6
\cpu_top_i|muxa_i|oQ[4]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~119_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[4][4]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[4][4]~q\,
	datac => \data_ram_i|rMEM[0][4]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~119_combout\);

-- Location: LCCOMB_X25_Y12_N4
\cpu_top_i|muxa_i|oQ[4]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~120_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~119_combout\ & ((\data_ram_i|rMEM[5][4]~q\))) # (!\cpu_top_i|muxa_i|oQ[4]~119_combout\ & (\data_ram_i|rMEM[1][4]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][4]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[5][4]~q\,
	datad => \cpu_top_i|muxa_i|oQ[4]~119_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~120_combout\);

-- Location: LCCOMB_X29_Y12_N12
\cpu_top_i|muxa_i|oQ[4]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~121_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[4]~118_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[4]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[4]~118_combout\,
	datad => \cpu_top_i|muxa_i|oQ[4]~120_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~121_combout\);

-- Location: LCCOMB_X29_Y12_N26
\cpu_top_i|muxa_i|oQ[4]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~124_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~121_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~123_combout\))) # (!\cpu_top_i|muxa_i|oQ[4]~121_combout\ & (\cpu_top_i|muxa_i|oQ[4]~116_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[4]~116_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[4]~123_combout\,
	datad => \cpu_top_i|muxa_i|oQ[4]~121_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~124_combout\);

-- Location: LCCOMB_X27_Y12_N10
\cpu_top_i|muxa_i|oQ[4]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~125_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~124_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(4),
	datad => \cpu_top_i|muxa_i|oQ[4]~124_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~125_combout\);

-- Location: LCCOMB_X30_Y12_N26
\cpu_top_i|muxa_i|oQ[4]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~136_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~125_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~135_combout\))) # (!\cpu_top_i|muxa_i|oQ[4]~125_combout\ & (\cpu_top_i|r3_i|sREG\(4))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[4]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|r3_i|sREG\(4),
	datac => \cpu_top_i|muxa_i|oQ[4]~135_combout\,
	datad => \cpu_top_i|muxa_i|oQ[4]~125_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~136_combout\);

-- Location: LCCOMB_X30_Y15_N16
\cpu_top_i|muxa_i|oQ[4]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~138_combout\ = (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~137_combout\ & (\cpu_top_i|r2_i|sREG\(4))) # (!\cpu_top_i|muxa_i|oQ[4]~137_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~136_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|muxa_i|oQ[4]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datab => \cpu_top_i|muxa_i|oQ[4]~137_combout\,
	datac => \cpu_top_i|r2_i|sREG\(4),
	datad => \cpu_top_i|muxa_i|oQ[4]~136_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~138_combout\);

-- Location: LCCOMB_X30_Y15_N18
\cpu_top_i|muxa_i|oQ[4]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~139_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(4))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(4),
	datad => \cpu_top_i|muxa_i|oQ[4]~138_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~139_combout\);

-- Location: LCCOMB_X31_Y15_N4
\cpu_top_i|muxa_i|oQ[4]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[4]~140_combout\ = (\cpu_top_i|muxa_i|oQ[4]~139_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(4),
	datad => \cpu_top_i|muxa_i|oQ[4]~139_combout\,
	combout => \cpu_top_i|muxa_i|oQ[4]~140_combout\);

-- Location: LCCOMB_X34_Y15_N14
\cpu_top_i|alu_i|oC[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[4]~18_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[4]~1_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[4]~1_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \cpu_top_i|mubx_i|oQ[4]~3_combout\,
	combout => \cpu_top_i|alu_i|oC[4]~18_combout\);

-- Location: LCCOMB_X31_Y12_N16
\cpu_top_i|alu_i|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~14_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~4_combout\) # ((\instr_rom_i|oQ[11]~27_combout\) # (\instr_rom_i|oQ[10]~45_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & 
-- (((!\cpu_top_i|mubx_i|oQ[4]~4_combout\ & !\instr_rom_i|oQ[11]~27_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[4]~4_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[9]~29_combout\,
	datad => \instr_rom_i|oQ[10]~45_combout\,
	combout => \cpu_top_i|alu_i|Add1~14_combout\);

-- Location: LCCOMB_X31_Y15_N24
\cpu_top_i|alu_i|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~15_combout\ = (\cpu_top_i|alu_i|Add1~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~140_combout\ & (\cpu_top_i|alu_i|Add1~13\ & VCC)) # (!\cpu_top_i|muxa_i|oQ[4]~140_combout\ & (!\cpu_top_i|alu_i|Add1~13\)))) # 
-- (!\cpu_top_i|alu_i|Add1~14_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~140_combout\ & (!\cpu_top_i|alu_i|Add1~13\)) # (!\cpu_top_i|muxa_i|oQ[4]~140_combout\ & ((\cpu_top_i|alu_i|Add1~13\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~16\ = CARRY((\cpu_top_i|alu_i|Add1~14_combout\ & (!\cpu_top_i|muxa_i|oQ[4]~140_combout\ & !\cpu_top_i|alu_i|Add1~13\)) # (!\cpu_top_i|alu_i|Add1~14_combout\ & ((!\cpu_top_i|alu_i|Add1~13\) # (!\cpu_top_i|muxa_i|oQ[4]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~14_combout\,
	datab => \cpu_top_i|muxa_i|oQ[4]~140_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~13\,
	combout => \cpu_top_i|alu_i|Add1~15_combout\,
	cout => \cpu_top_i|alu_i|Add1~16\);

-- Location: LCCOMB_X30_Y14_N18
\cpu_top_i|alu_i|oC[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[4]~19_combout\ = (\cpu_top_i|alu_i|oC[4]~18_combout\ & ((\cpu_top_i|muxa_i|oQ[4]~140_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~15_combout\)))) # (!\cpu_top_i|alu_i|oC[4]~18_combout\ & 
-- (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[4]~18_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|muxa_i|oQ[4]~140_combout\,
	datad => \cpu_top_i|alu_i|Add1~15_combout\,
	combout => \cpu_top_i|alu_i|oC[4]~19_combout\);

-- Location: LCCOMB_X30_Y14_N20
\cpu_top_i|alu_i|oC[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[4]~20_combout\ = (\cpu_top_i|alu_i|oC[4]~19_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[4]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|muxa_i|oQ[4]~140_combout\,
	datad => \cpu_top_i|alu_i|oC[4]~19_combout\,
	combout => \cpu_top_i|alu_i|oC[4]~20_combout\);

-- Location: FF_X30_Y15_N5
\cpu_top_i|r2_i|sREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[4]~20_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(4));

-- Location: LCCOMB_X30_Y12_N20
\cpu_top_i|mubx_i|oQ[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[4]~2_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(4)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(4),
	datad => \cpu_top_i|r1_i|sREG\(4),
	combout => \cpu_top_i|mubx_i|oQ[4]~2_combout\);

-- Location: LCCOMB_X30_Y12_N6
\cpu_top_i|mubx_i|oQ[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[4]~3_combout\ = (\cpu_top_i|mubx_i|oQ[4]~2_combout\ & (((\cpu_top_i|r3_i|sREG\(4)) # (!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[4]~2_combout\ & (\cpu_top_i|r2_i|sREG\(4) & ((\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(4),
	datab => \cpu_top_i|mubx_i|oQ[4]~2_combout\,
	datac => \cpu_top_i|r3_i|sREG\(4),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[4]~3_combout\);

-- Location: LCCOMB_X30_Y12_N0
\cpu_top_i|mubx_i|oQ[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[4]~4_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~1_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[4]~3_combout\,
	datac => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[4]~1_combout\,
	combout => \cpu_top_i|mubx_i|oQ[4]~4_combout\);

-- Location: LCCOMB_X30_Y12_N30
\cpu_top_i|muxa_i|oQ[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~6_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|mubx_i|oQ[4]~4_combout\))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|pc_i|sCNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datad => \cpu_top_i|mubx_i|oQ[4]~4_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~6_combout\);

-- Location: FF_X30_Y12_N15
\cpu_top_i|r3_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(2));

-- Location: LCCOMB_X34_Y13_N8
\data_ram_i|rMEM[31][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[31][2]~feeder_combout\ = \cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[31][2]~feeder_combout\);

-- Location: FF_X34_Y13_N9
\data_ram_i|rMEM[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[31][2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][2]~q\);

-- Location: FF_X34_Y13_N31
\data_ram_i|rMEM[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][2]~q\);

-- Location: LCCOMB_X30_Y11_N6
\data_ram_i|rMEM[30][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[30][2]~feeder_combout\ = \cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[30][2]~feeder_combout\);

-- Location: FF_X30_Y11_N7
\data_ram_i|rMEM[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[30][2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][2]~q\);

-- Location: FF_X35_Y11_N9
\data_ram_i|rMEM[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][2]~q\);

-- Location: LCCOMB_X35_Y11_N8
\cpu_top_i|muxa_i|oQ[2]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~82_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[30][2]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[26][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[30][2]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[26][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~82_combout\);

-- Location: LCCOMB_X34_Y13_N30
\cpu_top_i|muxa_i|oQ[2]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~83_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~82_combout\ & (\data_ram_i|rMEM[31][2]~q\)) # (!\cpu_top_i|muxa_i|oQ[2]~82_combout\ & ((\data_ram_i|rMEM[27][2]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[31][2]~q\,
	datac => \data_ram_i|rMEM[27][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~82_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~83_combout\);

-- Location: FF_X31_Y13_N25
\data_ram_i|rMEM[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][2]~q\);

-- Location: FF_X31_Y13_N7
\data_ram_i|rMEM[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][2]~q\);

-- Location: LCCOMB_X31_Y13_N6
\cpu_top_i|muxa_i|oQ[2]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~75_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[28][2]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[24][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[28][2]~q\,
	datac => \data_ram_i|rMEM[24][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~75_combout\);

-- Location: FF_X30_Y16_N27
\data_ram_i|rMEM[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][2]~q\);

-- Location: FF_X30_Y16_N1
\data_ram_i|rMEM[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][2]~q\);

-- Location: LCCOMB_X30_Y16_N26
\cpu_top_i|muxa_i|oQ[2]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~76_combout\ = (\cpu_top_i|muxa_i|oQ[2]~75_combout\ & (((\data_ram_i|rMEM[29][2]~q\)) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\))) # (!\cpu_top_i|muxa_i|oQ[2]~75_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- ((\data_ram_i|rMEM[25][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[2]~75_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[29][2]~q\,
	datad => \data_ram_i|rMEM[25][2]~q\,
	combout => \cpu_top_i|muxa_i|oQ[2]~76_combout\);

-- Location: FF_X33_Y13_N25
\data_ram_i|rMEM[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][2]~q\);

-- Location: FF_X33_Y16_N7
\data_ram_i|rMEM[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][2]~q\);

-- Location: FF_X32_Y11_N13
\data_ram_i|rMEM[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][2]~q\);

-- Location: FF_X32_Y11_N3
\data_ram_i|rMEM[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][2]~q\);

-- Location: LCCOMB_X32_Y11_N2
\cpu_top_i|muxa_i|oQ[2]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~77_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][2]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][2]~q\,
	datac => \data_ram_i|rMEM[18][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~77_combout\);

-- Location: LCCOMB_X33_Y16_N6
\cpu_top_i|muxa_i|oQ[2]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~78_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~77_combout\ & ((\data_ram_i|rMEM[23][2]~q\))) # (!\cpu_top_i|muxa_i|oQ[2]~77_combout\ & (\data_ram_i|rMEM[19][2]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[19][2]~q\,
	datac => \data_ram_i|rMEM[23][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~77_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~78_combout\);

-- Location: LCCOMB_X33_Y16_N12
\data_ram_i|rMEM[17][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[17][2]~feeder_combout\ = \cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[17][2]~feeder_combout\);

-- Location: FF_X33_Y16_N13
\data_ram_i|rMEM[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[17][2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][2]~q\);

-- Location: FF_X36_Y14_N31
\data_ram_i|rMEM[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][2]~q\);

-- Location: LCCOMB_X34_Y11_N8
\data_ram_i|rMEM[20][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][2]~feeder_combout\ = \cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[20][2]~feeder_combout\);

-- Location: FF_X34_Y11_N9
\data_ram_i|rMEM[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][2]~q\);

-- Location: FF_X33_Y12_N15
\data_ram_i|rMEM[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][2]~q\);

-- Location: LCCOMB_X33_Y12_N14
\cpu_top_i|muxa_i|oQ[2]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~79_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][2]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][2]~q\,
	datac => \data_ram_i|rMEM[16][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~79_combout\);

-- Location: LCCOMB_X36_Y14_N30
\cpu_top_i|muxa_i|oQ[2]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~80_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~79_combout\ & ((\data_ram_i|rMEM[21][2]~q\))) # (!\cpu_top_i|muxa_i|oQ[2]~79_combout\ & (\data_ram_i|rMEM[17][2]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[17][2]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[21][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~79_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~80_combout\);

-- Location: LCCOMB_X30_Y12_N12
\cpu_top_i|muxa_i|oQ[2]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~81_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|muxa_i|oQ[2]~78_combout\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \cpu_top_i|muxa_i|oQ[2]~78_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~80_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~81_combout\);

-- Location: LCCOMB_X30_Y12_N22
\cpu_top_i|muxa_i|oQ[2]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~84_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~81_combout\ & (\cpu_top_i|muxa_i|oQ[2]~83_combout\)) # (!\cpu_top_i|muxa_i|oQ[2]~81_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~76_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[2]~83_combout\,
	datab => \cpu_top_i|muxa_i|oQ[2]~76_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~81_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~84_combout\);

-- Location: FF_X27_Y12_N27
\cpu_top_i|r4_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(2));

-- Location: FF_X29_Y10_N17
\data_ram_i|rMEM[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][2]~q\);

-- Location: FF_X29_Y10_N11
\data_ram_i|rMEM[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][2]~q\);

-- Location: FF_X35_Y12_N3
\data_ram_i|rMEM[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][2]~q\);

-- Location: FF_X34_Y12_N27
\data_ram_i|rMEM[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][2]~q\);

-- Location: LCCOMB_X34_Y12_N26
\cpu_top_i|muxa_i|oQ[2]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~64_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[10][2]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[10][2]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[8][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~64_combout\);

-- Location: LCCOMB_X29_Y10_N10
\cpu_top_i|muxa_i|oQ[2]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~65_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~64_combout\ & ((\data_ram_i|rMEM[14][2]~q\))) # (!\cpu_top_i|muxa_i|oQ[2]~64_combout\ & (\data_ram_i|rMEM[12][2]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[12][2]~q\,
	datac => \data_ram_i|rMEM[14][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~64_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~65_combout\);

-- Location: LCCOMB_X36_Y13_N0
\data_ram_i|rMEM[13][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][2]~feeder_combout\ = \cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[13][2]~feeder_combout\);

-- Location: FF_X36_Y13_N1
\data_ram_i|rMEM[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][2]~q\);

-- Location: FF_X29_Y13_N9
\data_ram_i|rMEM[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][2]~q\);

-- Location: FF_X35_Y12_N5
\data_ram_i|rMEM[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][2]~q\);

-- Location: FF_X36_Y12_N23
\data_ram_i|rMEM[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][2]~q\);

-- Location: LCCOMB_X36_Y12_N22
\cpu_top_i|muxa_i|oQ[2]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~71_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[11][2]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[9][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[11][2]~q\,
	datac => \data_ram_i|rMEM[9][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~71_combout\);

-- Location: LCCOMB_X29_Y13_N8
\cpu_top_i|muxa_i|oQ[2]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~72_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~71_combout\ & ((\data_ram_i|rMEM[15][2]~q\))) # (!\cpu_top_i|muxa_i|oQ[2]~71_combout\ & (\data_ram_i|rMEM[13][2]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[13][2]~q\,
	datac => \data_ram_i|rMEM[15][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~71_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~72_combout\);

-- Location: LCCOMB_X31_Y16_N22
\data_ram_i|rMEM[6][2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][2]~14_combout\ = !\cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[6][2]~14_combout\);

-- Location: FF_X31_Y16_N23
\data_ram_i|rMEM[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][2]~q\);

-- Location: LCCOMB_X27_Y16_N16
\data_ram_i|rMEM[4][2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][2]~12_combout\ = !\cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[4][2]~12_combout\);

-- Location: FF_X27_Y16_N17
\data_ram_i|rMEM[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][2]~12_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][2]~q\);

-- Location: LCCOMB_X26_Y12_N6
\data_ram_i|rMEM[2][2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][2]~13_combout\ = !\cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[2][2]~13_combout\);

-- Location: FF_X26_Y12_N7
\data_ram_i|rMEM[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][2]~13_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][2]~q\);

-- Location: FF_X25_Y12_N17
\data_ram_i|rMEM[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][2]~q\);

-- Location: LCCOMB_X25_Y12_N16
\cpu_top_i|muxa_i|oQ[2]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~68_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)) # (!\data_ram_i|rMEM[2][2]~q\))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[0][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][2]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[0][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~68_combout\);

-- Location: LCCOMB_X30_Y12_N8
\cpu_top_i|muxa_i|oQ[2]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~69_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~68_combout\ & (!\data_ram_i|rMEM[6][2]~q\)) # (!\cpu_top_i|muxa_i|oQ[2]~68_combout\ & ((!\data_ram_i|rMEM[4][2]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][2]~q\,
	datab => \data_ram_i|rMEM[4][2]~q\,
	datac => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~68_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~69_combout\);

-- Location: LCCOMB_X33_Y15_N6
\data_ram_i|rMEM[5][2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][2]~11_combout\ = !\cpu_top_i|alu_i|oC[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[2]~14_combout\,
	combout => \data_ram_i|rMEM[5][2]~11_combout\);

-- Location: FF_X33_Y15_N7
\data_ram_i|rMEM[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][2]~11_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][2]~q\);

-- Location: FF_X28_Y15_N3
\data_ram_i|rMEM[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][2]~q\);

-- Location: FF_X35_Y13_N5
\data_ram_i|rMEM[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][2]~q\);

-- Location: FF_X33_Y15_N21
\data_ram_i|rMEM[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][2]~q\);

-- Location: LCCOMB_X33_Y15_N20
\cpu_top_i|muxa_i|oQ[2]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~66_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[3][2]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[1][2]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[3][2]~q\,
	datac => \data_ram_i|rMEM[1][2]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~66_combout\);

-- Location: LCCOMB_X28_Y15_N2
\cpu_top_i|muxa_i|oQ[2]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~67_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~66_combout\ & ((\data_ram_i|rMEM[7][2]~q\))) # (!\cpu_top_i|muxa_i|oQ[2]~66_combout\ & (!\data_ram_i|rMEM[5][2]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[5][2]~q\,
	datac => \data_ram_i|rMEM[7][2]~q\,
	datad => \cpu_top_i|muxa_i|oQ[2]~66_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~67_combout\);

-- Location: LCCOMB_X30_Y12_N2
\cpu_top_i|muxa_i|oQ[2]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~70_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~67_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[2]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[2]~69_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~67_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~70_combout\);

-- Location: LCCOMB_X30_Y12_N28
\cpu_top_i|muxa_i|oQ[2]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~73_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~70_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~72_combout\))) # (!\cpu_top_i|muxa_i|oQ[2]~70_combout\ & (\cpu_top_i|muxa_i|oQ[2]~65_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[2]~65_combout\,
	datac => \cpu_top_i|muxa_i|oQ[2]~72_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~70_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~73_combout\);

-- Location: LCCOMB_X30_Y12_N10
\cpu_top_i|muxa_i|oQ[2]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~74_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\) # (\cpu_top_i|muxa_i|oQ[2]~73_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(2) & 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datab => \cpu_top_i|r4_i|sREG\(2),
	datac => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~73_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~74_combout\);

-- Location: LCCOMB_X30_Y12_N16
\cpu_top_i|muxa_i|oQ[2]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~85_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~74_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~84_combout\))) # (!\cpu_top_i|muxa_i|oQ[2]~74_combout\ & (\cpu_top_i|r3_i|sREG\(2))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[2]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|r3_i|sREG\(2),
	datac => \cpu_top_i|muxa_i|oQ[2]~84_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~74_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~85_combout\);

-- Location: LCCOMB_X30_Y15_N20
\cpu_top_i|muxa_i|oQ[2]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~87_combout\ = (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~86_combout\ & (\cpu_top_i|r2_i|sREG\(2))) # (!\cpu_top_i|muxa_i|oQ[2]~86_combout\ & ((\cpu_top_i|muxa_i|oQ[2]~85_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|muxa_i|oQ[2]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datab => \cpu_top_i|muxa_i|oQ[2]~86_combout\,
	datac => \cpu_top_i|r2_i|sREG\(2),
	datad => \cpu_top_i|muxa_i|oQ[2]~85_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~87_combout\);

-- Location: LCCOMB_X30_Y15_N26
\cpu_top_i|muxa_i|oQ[2]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[2]~88_combout\ = (\cpu_top_i|muxa_i|oQ[2]~62_combout\) # ((\cpu_top_i|muxa_i|oQ[2]~63_combout\) # ((\cpu_top_i|muxa_i|oQ[0]~33_combout\ & \cpu_top_i|muxa_i|oQ[2]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[2]~62_combout\,
	datab => \cpu_top_i|muxa_i|oQ[0]~33_combout\,
	datac => \cpu_top_i|muxa_i|oQ[2]~63_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~87_combout\,
	combout => \cpu_top_i|muxa_i|oQ[2]~88_combout\);

-- Location: LCCOMB_X34_Y13_N10
\cpu_top_i|alu_i|oC[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[2]~13_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & \cpu_top_i|muxa_i|oQ[2]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datac => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|muxa_i|oQ[2]~88_combout\,
	combout => \cpu_top_i|alu_i|oC[2]~13_combout\);

-- Location: LCCOMB_X30_Y15_N4
\cpu_top_i|alu_i|oC[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[2]~12_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|muxa_i|oQ[2]~88_combout\ $ (\cpu_top_i|alu_i|oC[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[2]~88_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datad => \cpu_top_i|alu_i|oC[15]~53_combout\,
	combout => \cpu_top_i|alu_i|oC[2]~12_combout\);

-- Location: LCCOMB_X34_Y13_N0
\cpu_top_i|alu_i|oC[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[2]~14_combout\ = (\cpu_top_i|alu_i|oC[2]~13_combout\) # ((\cpu_top_i|alu_i|oC[2]~12_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[2]~13_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[2]~12_combout\,
	datad => \cpu_top_i|alu_i|Add1~9_combout\,
	combout => \cpu_top_i|alu_i|oC[2]~14_combout\);

-- Location: FF_X26_Y15_N7
\cpu_top_i|r5_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(2));

-- Location: FF_X27_Y12_N25
\cpu_top_i|r6_i|sREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[2]~14_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(2));

-- Location: LCCOMB_X27_Y12_N24
\cpu_top_i|mubx_i|oQ[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[2]~20_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r7_i|sREG\(2)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r6_i|sREG\(2) & \instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(2),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(2),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[2]~20_combout\);

-- Location: LCCOMB_X27_Y12_N26
\cpu_top_i|mubx_i|oQ[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[2]~21_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~20_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~20_combout\ & (\cpu_top_i|r5_i|sREG\(2))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~20_combout\ & ((\cpu_top_i|r4_i|sREG\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(2),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \cpu_top_i|r4_i|sREG\(2),
	datad => \cpu_top_i|mubx_i|oQ[2]~20_combout\,
	combout => \cpu_top_i|mubx_i|oQ[2]~21_combout\);

-- Location: LCCOMB_X30_Y12_N24
\cpu_top_i|mubx_i|oQ[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[2]~22_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(2)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(2) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(2),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(2),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[2]~22_combout\);

-- Location: LCCOMB_X30_Y12_N14
\cpu_top_i|mubx_i|oQ[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[2]~23_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~22_combout\ & ((\cpu_top_i|r3_i|sREG\(2)))) # (!\cpu_top_i|mubx_i|oQ[2]~22_combout\ & (\cpu_top_i|r2_i|sREG\(2))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \cpu_top_i|r2_i|sREG\(2),
	datac => \cpu_top_i|r3_i|sREG\(2),
	datad => \cpu_top_i|mubx_i|oQ[2]~22_combout\,
	combout => \cpu_top_i|mubx_i|oQ[2]~23_combout\);

-- Location: LCCOMB_X31_Y12_N30
\cpu_top_i|mubx_i|oQ[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[2]~24_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[2]~21_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[2]~21_combout\,
	datad => \cpu_top_i|mubx_i|oQ[2]~23_combout\,
	combout => \cpu_top_i|mubx_i|oQ[2]~24_combout\);

-- Location: LCCOMB_X34_Y14_N24
\data_ram_i|rMEM[23][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[23][14]~feeder_combout\);

-- Location: FF_X34_Y14_N25
\data_ram_i|rMEM[23][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][14]~q\);

-- Location: FF_X34_Y11_N7
\data_ram_i|rMEM[31][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][14]~q\);

-- Location: LCCOMB_X30_Y11_N16
\data_ram_i|rMEM[27][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[27][14]~feeder_combout\);

-- Location: FF_X30_Y11_N17
\data_ram_i|rMEM[27][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][14]~q\);

-- Location: FF_X33_Y11_N3
\data_ram_i|rMEM[19][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][14]~q\);

-- Location: LCCOMB_X33_Y11_N2
\cpu_top_i|muxa_i|oQ[14]~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~393_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[27][14]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[19][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[27][14]~q\,
	datac => \data_ram_i|rMEM[19][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~393_combout\);

-- Location: LCCOMB_X34_Y11_N6
\cpu_top_i|muxa_i|oQ[14]~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~394_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~393_combout\ & ((\data_ram_i|rMEM[31][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~393_combout\ & (\data_ram_i|rMEM[23][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[23][14]~q\,
	datac => \data_ram_i|rMEM[31][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~393_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~394_combout\);

-- Location: LCCOMB_X32_Y16_N14
\data_ram_i|rMEM[29][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[29][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[29][14]~feeder_combout\);

-- Location: FF_X32_Y16_N15
\data_ram_i|rMEM[29][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[29][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][14]~q\);

-- Location: FF_X36_Y14_N1
\data_ram_i|rMEM[21][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][14]~q\);

-- Location: LCCOMB_X36_Y15_N20
\data_ram_i|rMEM[25][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[25][14]~feeder_combout\);

-- Location: FF_X36_Y15_N21
\data_ram_i|rMEM[25][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][14]~q\);

-- Location: FF_X36_Y14_N19
\data_ram_i|rMEM[17][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][14]~q\);

-- Location: LCCOMB_X36_Y14_N18
\cpu_top_i|muxa_i|oQ[14]~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~386_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[25][14]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\data_ram_i|rMEM[17][14]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[25][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[17][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~386_combout\);

-- Location: LCCOMB_X36_Y14_N0
\cpu_top_i|muxa_i|oQ[14]~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~387_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~386_combout\ & (\data_ram_i|rMEM[29][14]~q\)) # (!\cpu_top_i|muxa_i|oQ[14]~386_combout\ & ((\data_ram_i|rMEM[21][14]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[29][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[21][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~386_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~387_combout\);

-- Location: LCCOMB_X33_Y11_N24
\data_ram_i|rMEM[24][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[24][14]~feeder_combout\);

-- Location: FF_X33_Y11_N25
\data_ram_i|rMEM[24][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][14]~q\);

-- Location: FF_X34_Y16_N27
\data_ram_i|rMEM[28][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][14]~q\);

-- Location: LCCOMB_X35_Y14_N0
\data_ram_i|rMEM[20][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[20][14]~feeder_combout\);

-- Location: FF_X35_Y14_N1
\data_ram_i|rMEM[20][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][14]~q\);

-- Location: FF_X34_Y16_N21
\data_ram_i|rMEM[16][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][14]~q\);

-- Location: LCCOMB_X34_Y16_N20
\cpu_top_i|muxa_i|oQ[14]~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~390_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][14]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][14]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][14]~q\,
	datac => \data_ram_i|rMEM[16][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~390_combout\);

-- Location: LCCOMB_X34_Y16_N26
\cpu_top_i|muxa_i|oQ[14]~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~391_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~390_combout\ & ((\data_ram_i|rMEM[28][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~390_combout\ & (\data_ram_i|rMEM[24][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][14]~q\,
	datac => \data_ram_i|rMEM[28][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~390_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~391_combout\);

-- Location: LCCOMB_X31_Y11_N2
\data_ram_i|rMEM[26][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[26][14]~feeder_combout\);

-- Location: FF_X31_Y11_N3
\data_ram_i|rMEM[26][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][14]~q\);

-- Location: FF_X32_Y13_N11
\data_ram_i|rMEM[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][14]~q\);

-- Location: LCCOMB_X34_Y14_N6
\data_ram_i|rMEM[22][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[22][14]~feeder_combout\);

-- Location: FF_X34_Y14_N7
\data_ram_i|rMEM[22][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][14]~q\);

-- Location: FF_X32_Y13_N21
\data_ram_i|rMEM[18][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][14]~q\);

-- Location: LCCOMB_X32_Y13_N20
\cpu_top_i|muxa_i|oQ[14]~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~388_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][14]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][14]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[22][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[18][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~388_combout\);

-- Location: LCCOMB_X32_Y13_N10
\cpu_top_i|muxa_i|oQ[14]~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~389_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~388_combout\ & ((\data_ram_i|rMEM[30][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~388_combout\ & (\data_ram_i|rMEM[26][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[30][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~388_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~389_combout\);

-- Location: LCCOMB_X27_Y14_N24
\cpu_top_i|muxa_i|oQ[14]~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~392_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~389_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|muxa_i|oQ[14]~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \cpu_top_i|muxa_i|oQ[14]~391_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~389_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~392_combout\);

-- Location: LCCOMB_X27_Y14_N10
\cpu_top_i|muxa_i|oQ[14]~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~395_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~392_combout\ & (\cpu_top_i|muxa_i|oQ[14]~394_combout\)) # (!\cpu_top_i|muxa_i|oQ[14]~392_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~387_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[14]~394_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[14]~387_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~392_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~395_combout\);

-- Location: FF_X27_Y14_N19
\cpu_top_i|r3_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(14));

-- Location: FF_X26_Y13_N13
\cpu_top_i|r4_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(14));

-- Location: LCCOMB_X35_Y13_N12
\data_ram_i|rMEM[7][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[7][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[7][14]~feeder_combout\);

-- Location: FF_X35_Y13_N13
\data_ram_i|rMEM[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[7][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][14]~q\);

-- Location: LCCOMB_X31_Y16_N20
\data_ram_i|rMEM[6][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[6][14]~feeder_combout\);

-- Location: FF_X31_Y16_N21
\data_ram_i|rMEM[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][14]~q\);

-- Location: FF_X32_Y17_N23
\data_ram_i|rMEM[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][14]~q\);

-- Location: FF_X31_Y16_N27
\data_ram_i|rMEM[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][14]~q\);

-- Location: LCCOMB_X31_Y16_N26
\cpu_top_i|muxa_i|oQ[14]~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~375_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][14]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][14]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][14]~q\,
	datac => \data_ram_i|rMEM[4][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~375_combout\);

-- Location: LCCOMB_X26_Y13_N28
\cpu_top_i|muxa_i|oQ[14]~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~376_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~375_combout\ & (\data_ram_i|rMEM[7][14]~q\)) # (!\cpu_top_i|muxa_i|oQ[14]~375_combout\ & ((\data_ram_i|rMEM[6][14]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[7][14]~q\,
	datab => \data_ram_i|rMEM[6][14]~q\,
	datac => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~375_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~376_combout\);

-- Location: LCCOMB_X29_Y10_N8
\data_ram_i|rMEM[14][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[14][14]~feeder_combout\);

-- Location: FF_X29_Y10_N9
\data_ram_i|rMEM[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][14]~q\);

-- Location: FF_X26_Y14_N31
\data_ram_i|rMEM[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][14]~q\);

-- Location: FF_X26_Y14_N9
\data_ram_i|rMEM[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][14]~q\);

-- Location: FF_X29_Y11_N23
\data_ram_i|rMEM[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][14]~q\);

-- Location: LCCOMB_X29_Y11_N22
\cpu_top_i|muxa_i|oQ[14]~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~382_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[13][14]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[12][14]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[12][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~382_combout\);

-- Location: LCCOMB_X26_Y14_N30
\cpu_top_i|muxa_i|oQ[14]~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~383_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~382_combout\ & ((\data_ram_i|rMEM[15][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~382_combout\ & (\data_ram_i|rMEM[14][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[14][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[15][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~382_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~383_combout\);

-- Location: LCCOMB_X33_Y15_N30
\data_ram_i|rMEM[1][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[1][14]~feeder_combout\);

-- Location: FF_X33_Y15_N31
\data_ram_i|rMEM[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][14]~q\);

-- Location: FF_X26_Y13_N27
\data_ram_i|rMEM[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][14]~q\);

-- Location: LCCOMB_X28_Y15_N12
\data_ram_i|rMEM[2][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[2][14]~feeder_combout\);

-- Location: FF_X28_Y15_N13
\data_ram_i|rMEM[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][14]~q\);

-- Location: FF_X25_Y13_N11
\data_ram_i|rMEM[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][14]~q\);

-- Location: LCCOMB_X25_Y13_N10
\cpu_top_i|muxa_i|oQ[14]~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~379_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[2][14]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[2][14]~q\,
	datac => \data_ram_i|rMEM[0][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~379_combout\);

-- Location: LCCOMB_X26_Y13_N26
\cpu_top_i|muxa_i|oQ[14]~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~380_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~379_combout\ & ((\data_ram_i|rMEM[3][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~379_combout\ & (\data_ram_i|rMEM[1][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[3][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~379_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~380_combout\);

-- Location: LCCOMB_X33_Y17_N26
\data_ram_i|rMEM[9][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[9][14]~feeder_combout\);

-- Location: FF_X33_Y17_N27
\data_ram_i|rMEM[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][14]~q\);

-- Location: FF_X33_Y14_N1
\data_ram_i|rMEM[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][14]~q\);

-- Location: LCCOMB_X33_Y17_N4
\data_ram_i|rMEM[10][14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][14]~feeder_combout\ = \cpu_top_i|alu_i|oC[14]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[14]~50_combout\,
	combout => \data_ram_i|rMEM[10][14]~feeder_combout\);

-- Location: FF_X33_Y17_N5
\data_ram_i|rMEM[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][14]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][14]~q\);

-- Location: FF_X34_Y12_N25
\data_ram_i|rMEM[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][14]~q\);

-- Location: LCCOMB_X34_Y12_N24
\cpu_top_i|muxa_i|oQ[14]~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~377_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[10][14]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[8][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[10][14]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][14]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~377_combout\);

-- Location: LCCOMB_X33_Y14_N0
\cpu_top_i|muxa_i|oQ[14]~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~378_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~377_combout\ & ((\data_ram_i|rMEM[11][14]~q\))) # (!\cpu_top_i|muxa_i|oQ[14]~377_combout\ & (\data_ram_i|rMEM[9][14]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][14]~q\,
	datac => \data_ram_i|rMEM[11][14]~q\,
	datad => \cpu_top_i|muxa_i|oQ[14]~377_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~378_combout\);

-- Location: LCCOMB_X26_Y13_N0
\cpu_top_i|muxa_i|oQ[14]~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~381_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\) # ((\cpu_top_i|muxa_i|oQ[14]~378_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[14]~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|muxa_i|oQ[14]~380_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~378_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~381_combout\);

-- Location: LCCOMB_X26_Y13_N6
\cpu_top_i|muxa_i|oQ[14]~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~384_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~381_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~383_combout\))) # (!\cpu_top_i|muxa_i|oQ[14]~381_combout\ & (\cpu_top_i|muxa_i|oQ[14]~376_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|muxa_i|oQ[14]~376_combout\,
	datac => \cpu_top_i|muxa_i|oQ[14]~383_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~381_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~384_combout\);

-- Location: LCCOMB_X26_Y13_N12
\cpu_top_i|muxa_i|oQ[14]~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~385_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~384_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(14),
	datad => \cpu_top_i|muxa_i|oQ[14]~384_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~385_combout\);

-- Location: LCCOMB_X27_Y14_N18
\cpu_top_i|muxa_i|oQ[14]~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~396_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~385_combout\ & (\cpu_top_i|muxa_i|oQ[14]~395_combout\)) # (!\cpu_top_i|muxa_i|oQ[14]~385_combout\ & ((\cpu_top_i|r3_i|sREG\(14)))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[14]~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[14]~395_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datac => \cpu_top_i|r3_i|sREG\(14),
	datad => \cpu_top_i|muxa_i|oQ[14]~385_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~396_combout\);

-- Location: LCCOMB_X28_Y14_N30
\cpu_top_i|muxa_i|oQ[14]~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~398_combout\ = (\cpu_top_i|muxa_i|oQ[14]~397_combout\ & (((\cpu_top_i|r2_i|sREG\(14))) # (!\cpu_top_i|muxa_i|oQ[7]~428_combout\))) # (!\cpu_top_i|muxa_i|oQ[14]~397_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[14]~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[14]~397_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r2_i|sREG\(14),
	datad => \cpu_top_i|muxa_i|oQ[14]~396_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~398_combout\);

-- Location: LCCOMB_X29_Y14_N2
\cpu_top_i|muxa_i|oQ[14]~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~399_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(14))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~398_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(14),
	datad => \cpu_top_i|muxa_i|oQ[14]~398_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~399_combout\);

-- Location: LCCOMB_X29_Y14_N28
\cpu_top_i|muxa_i|oQ[14]~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[14]~400_combout\ = (\cpu_top_i|muxa_i|oQ[14]~399_combout\) # ((\cpu_top_i|r5_i|sREG\(14) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(14),
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[14]~399_combout\,
	combout => \cpu_top_i|muxa_i|oQ[14]~400_combout\);

-- Location: FF_X32_Y14_N17
\cpu_top_i|r6_i|sREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[14]~50_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(14));

-- Location: LCCOMB_X25_Y14_N10
\cpu_top_i|mubx_i|oQ[14]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[14]~70_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (((\instr_rom_i|oQ[0]~41_combout\) # (\cpu_top_i|r6_i|sREG\(14))))) # (!\instr_rom_i|oQ[1]~21_combout\ & (\cpu_top_i|r4_i|sREG\(14) & (!\instr_rom_i|oQ[0]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(14),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \instr_rom_i|oQ[0]~41_combout\,
	datad => \cpu_top_i|r6_i|sREG\(14),
	combout => \cpu_top_i|mubx_i|oQ[14]~70_combout\);

-- Location: LCCOMB_X25_Y14_N20
\cpu_top_i|mubx_i|oQ[14]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[14]~71_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[14]~70_combout\ & (\cpu_top_i|r7_i|sREG\(14))) # (!\cpu_top_i|mubx_i|oQ[14]~70_combout\ & ((\cpu_top_i|r5_i|sREG\(14)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[14]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(14),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r5_i|sREG\(14),
	datad => \cpu_top_i|mubx_i|oQ[14]~70_combout\,
	combout => \cpu_top_i|mubx_i|oQ[14]~71_combout\);

-- Location: LCCOMB_X28_Y16_N20
\cpu_top_i|mubx_i|oQ[14]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[14]~72_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(14)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(14) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(14),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(14),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[14]~72_combout\);

-- Location: LCCOMB_X28_Y14_N24
\cpu_top_i|mubx_i|oQ[14]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[14]~73_combout\ = (\cpu_top_i|mubx_i|oQ[14]~72_combout\ & (((\cpu_top_i|r3_i|sREG\(14)) # (!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[14]~72_combout\ & (\cpu_top_i|r2_i|sREG\(14) & (\instr_rom_i|oQ[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(14),
	datab => \cpu_top_i|mubx_i|oQ[14]~72_combout\,
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r3_i|sREG\(14),
	combout => \cpu_top_i|mubx_i|oQ[14]~73_combout\);

-- Location: LCCOMB_X28_Y14_N4
\cpu_top_i|mubx_i|oQ[14]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[14]~74_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[14]~71_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[14]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[14]~71_combout\,
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[14]~73_combout\,
	combout => \cpu_top_i|mubx_i|oQ[14]~74_combout\);

-- Location: LCCOMB_X32_Y14_N12
\cpu_top_i|alu_i|oC[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[14]~49_combout\ = (\cpu_top_i|muxa_i|oQ[14]~400_combout\ & (\cpu_top_i|mubx_i|oQ[14]~74_combout\ & \cpu_top_i|alu_i|oC[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[14]~400_combout\,
	datab => \cpu_top_i|mubx_i|oQ[14]~74_combout\,
	datad => \cpu_top_i|alu_i|oC[0]~5_combout\,
	combout => \cpu_top_i|alu_i|oC[14]~49_combout\);

-- Location: LCCOMB_X32_Y14_N30
\cpu_top_i|alu_i|oC[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[14]~48_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[14]~400_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datac => \cpu_top_i|muxa_i|oQ[14]~400_combout\,
	datad => \cpu_top_i|alu_i|oC[15]~53_combout\,
	combout => \cpu_top_i|alu_i|oC[14]~48_combout\);

-- Location: LCCOMB_X28_Y14_N18
\cpu_top_i|alu_i|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~44_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[14]~74_combout\) # (\instr_rom_i|oQ[10]~45_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & 
-- (((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[14]~74_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[9]~29_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \cpu_top_i|mubx_i|oQ[14]~74_combout\,
	datad => \instr_rom_i|oQ[10]~45_combout\,
	combout => \cpu_top_i|alu_i|Add1~44_combout\);

-- Location: FF_X29_Y16_N27
\cpu_top_i|r5_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(13));

-- Location: FF_X31_Y14_N19
\cpu_top_i|r1_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(13));

-- Location: FF_X27_Y14_N9
\cpu_top_i|r2_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(13));

-- Location: FF_X28_Y16_N19
\cpu_top_i|r0_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(13));

-- Location: FF_X29_Y16_N25
\cpu_top_i|r7_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(13));

-- Location: FF_X30_Y10_N19
\cpu_top_i|r4_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(13));

-- Location: LCCOMB_X29_Y16_N12
\cpu_top_i|muxa_i|oQ[13]~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~359_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|r3_i|sREG\(13)))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|r4_i|sREG\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(13),
	datab => \cpu_top_i|r3_i|sREG\(13),
	datac => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~359_combout\);

-- Location: LCCOMB_X34_Y14_N14
\data_ram_i|rMEM[22][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[22][13]~feeder_combout\);

-- Location: FF_X34_Y14_N15
\data_ram_i|rMEM[22][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][13]~q\);

-- Location: FF_X32_Y13_N19
\data_ram_i|rMEM[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][13]~q\);

-- Location: LCCOMB_X31_Y11_N28
\data_ram_i|rMEM[26][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[26][13]~feeder_combout\);

-- Location: FF_X31_Y11_N29
\data_ram_i|rMEM[26][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][13]~q\);

-- Location: FF_X32_Y13_N17
\data_ram_i|rMEM[18][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][13]~q\);

-- Location: LCCOMB_X32_Y13_N16
\cpu_top_i|muxa_i|oQ[13]~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~360_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[26][13]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[18][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[26][13]~q\,
	datac => \data_ram_i|rMEM[18][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~360_combout\);

-- Location: LCCOMB_X32_Y13_N18
\cpu_top_i|muxa_i|oQ[13]~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~361_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~360_combout\ & ((\data_ram_i|rMEM[30][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~360_combout\ & (\data_ram_i|rMEM[22][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][13]~q\,
	datac => \data_ram_i|rMEM[30][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~360_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~361_combout\);

-- Location: LCCOMB_X34_Y13_N12
\data_ram_i|rMEM[27][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[27][13]~feeder_combout\);

-- Location: FF_X34_Y13_N13
\data_ram_i|rMEM[27][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][13]~q\);

-- Location: LCCOMB_X34_Y14_N4
\data_ram_i|rMEM[23][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[23][13]~feeder_combout\);

-- Location: FF_X34_Y14_N5
\data_ram_i|rMEM[23][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][13]~q\);

-- Location: FF_X33_Y13_N5
\data_ram_i|rMEM[19][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][13]~q\);

-- Location: LCCOMB_X33_Y13_N4
\cpu_top_i|muxa_i|oQ[13]~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~367_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][13]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][13]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~367_combout\);

-- Location: FF_X33_Y13_N7
\data_ram_i|rMEM[31][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][13]~q\);

-- Location: LCCOMB_X33_Y13_N6
\cpu_top_i|muxa_i|oQ[13]~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~368_combout\ = (\cpu_top_i|muxa_i|oQ[13]~367_combout\ & (((\data_ram_i|rMEM[31][13]~q\) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|muxa_i|oQ[13]~367_combout\ & (\data_ram_i|rMEM[27][13]~q\ & 
-- ((\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][13]~q\,
	datab => \cpu_top_i|muxa_i|oQ[13]~367_combout\,
	datac => \data_ram_i|rMEM[31][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~368_combout\);

-- Location: FF_X35_Y14_N27
\data_ram_i|rMEM[20][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][13]~q\);

-- Location: FF_X34_Y16_N23
\data_ram_i|rMEM[28][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][13]~q\);

-- Location: FF_X33_Y11_N19
\data_ram_i|rMEM[24][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][13]~q\);

-- Location: FF_X34_Y16_N25
\data_ram_i|rMEM[16][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][13]~q\);

-- Location: LCCOMB_X34_Y16_N24
\cpu_top_i|muxa_i|oQ[13]~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~364_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[24][13]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[16][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[24][13]~q\,
	datac => \data_ram_i|rMEM[16][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~364_combout\);

-- Location: LCCOMB_X34_Y16_N22
\cpu_top_i|muxa_i|oQ[13]~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~365_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~364_combout\ & ((\data_ram_i|rMEM[28][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~364_combout\ & (\data_ram_i|rMEM[20][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][13]~q\,
	datac => \data_ram_i|rMEM[28][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~364_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~365_combout\);

-- Location: FF_X30_Y16_N25
\data_ram_i|rMEM[25][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][13]~q\);

-- Location: FF_X30_Y16_N23
\data_ram_i|rMEM[29][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][13]~q\);

-- Location: LCCOMB_X36_Y14_N2
\data_ram_i|rMEM[21][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[21][13]~feeder_combout\);

-- Location: FF_X36_Y14_N3
\data_ram_i|rMEM[21][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][13]~q\);

-- Location: FF_X31_Y17_N23
\data_ram_i|rMEM[17][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][13]~q\);

-- Location: LCCOMB_X31_Y17_N22
\cpu_top_i|muxa_i|oQ[13]~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~362_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][13]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][13]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][13]~q\,
	datac => \data_ram_i|rMEM[17][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~362_combout\);

-- Location: LCCOMB_X30_Y16_N22
\cpu_top_i|muxa_i|oQ[13]~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~363_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~362_combout\ & ((\data_ram_i|rMEM[29][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~362_combout\ & (\data_ram_i|rMEM[25][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][13]~q\,
	datac => \data_ram_i|rMEM[29][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~362_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~363_combout\);

-- Location: LCCOMB_X29_Y16_N6
\cpu_top_i|muxa_i|oQ[13]~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~366_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~363_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[13]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[13]~365_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~363_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~366_combout\);

-- Location: LCCOMB_X29_Y16_N8
\cpu_top_i|muxa_i|oQ[13]~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~369_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~366_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~368_combout\))) # (!\cpu_top_i|muxa_i|oQ[13]~366_combout\ & (\cpu_top_i|muxa_i|oQ[13]~361_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[13]~361_combout\,
	datac => \cpu_top_i|muxa_i|oQ[13]~368_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~366_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~369_combout\);

-- Location: FF_X35_Y12_N27
\data_ram_i|rMEM[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][13]~q\);

-- Location: FF_X35_Y12_N13
\data_ram_i|rMEM[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][13]~q\);

-- Location: FF_X31_Y17_N5
\data_ram_i|rMEM[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][13]~q\);

-- Location: FF_X34_Y12_N19
\data_ram_i|rMEM[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][13]~q\);

-- Location: LCCOMB_X34_Y12_N18
\cpu_top_i|muxa_i|oQ[13]~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~349_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][13]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][13]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][13]~q\,
	datac => \data_ram_i|rMEM[8][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~349_combout\);

-- Location: LCCOMB_X35_Y12_N12
\cpu_top_i|muxa_i|oQ[13]~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~350_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~349_combout\ & (\data_ram_i|rMEM[11][13]~q\)) # (!\cpu_top_i|muxa_i|oQ[13]~349_combout\ & ((\data_ram_i|rMEM[10][13]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[11][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[10][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~349_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~350_combout\);

-- Location: FF_X26_Y14_N1
\data_ram_i|rMEM[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][13]~q\);

-- Location: FF_X26_Y14_N3
\data_ram_i|rMEM[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][13]~q\);

-- Location: FF_X29_Y10_N13
\data_ram_i|rMEM[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][13]~q\);

-- Location: FF_X29_Y10_N15
\data_ram_i|rMEM[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][13]~q\);

-- Location: LCCOMB_X29_Y10_N14
\cpu_top_i|muxa_i|oQ[13]~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~356_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][13]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[12][13]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][13]~q\,
	datac => \data_ram_i|rMEM[12][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~356_combout\);

-- Location: LCCOMB_X26_Y14_N2
\cpu_top_i|muxa_i|oQ[13]~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~357_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~356_combout\ & ((\data_ram_i|rMEM[15][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~356_combout\ & (\data_ram_i|rMEM[13][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~356_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~357_combout\);

-- Location: LCCOMB_X32_Y17_N24
\data_ram_i|rMEM[5][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[5][13]~feeder_combout\);

-- Location: FF_X32_Y17_N25
\data_ram_i|rMEM[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][13]~q\);

-- Location: FF_X35_Y16_N17
\data_ram_i|rMEM[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][13]~q\);

-- Location: FF_X31_Y16_N25
\data_ram_i|rMEM[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][13]~q\);

-- Location: FF_X31_Y16_N7
\data_ram_i|rMEM[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][13]~q\);

-- Location: LCCOMB_X31_Y16_N6
\cpu_top_i|muxa_i|oQ[13]~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~351_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[6][13]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[4][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~351_combout\);

-- Location: LCCOMB_X35_Y16_N16
\cpu_top_i|muxa_i|oQ[13]~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~352_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~351_combout\ & ((\data_ram_i|rMEM[7][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~351_combout\ & (\data_ram_i|rMEM[5][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[5][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[7][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~351_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~352_combout\);

-- Location: FF_X28_Y15_N19
\data_ram_i|rMEM[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][13]~q\);

-- Location: FF_X25_Y14_N5
\data_ram_i|rMEM[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][13]~q\);

-- Location: LCCOMB_X27_Y11_N12
\data_ram_i|rMEM[1][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][13]~feeder_combout\ = \cpu_top_i|alu_i|oC[13]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[13]~47_combout\,
	combout => \data_ram_i|rMEM[1][13]~feeder_combout\);

-- Location: FF_X27_Y11_N13
\data_ram_i|rMEM[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][13]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][13]~q\);

-- Location: FF_X25_Y12_N21
\data_ram_i|rMEM[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][13]~q\);

-- Location: LCCOMB_X25_Y12_N20
\cpu_top_i|muxa_i|oQ[13]~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~353_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[1][13]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[0][13]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[1][13]~q\,
	datac => \data_ram_i|rMEM[0][13]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~353_combout\);

-- Location: LCCOMB_X25_Y14_N4
\cpu_top_i|muxa_i|oQ[13]~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~354_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~353_combout\ & ((\data_ram_i|rMEM[3][13]~q\))) # (!\cpu_top_i|muxa_i|oQ[13]~353_combout\ & (\data_ram_i|rMEM[2][13]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][13]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][13]~q\,
	datad => \cpu_top_i|muxa_i|oQ[13]~353_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~354_combout\);

-- Location: LCCOMB_X29_Y16_N28
\cpu_top_i|muxa_i|oQ[13]~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~355_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[13]~352_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[13]~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[13]~352_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~354_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~355_combout\);

-- Location: LCCOMB_X29_Y16_N10
\cpu_top_i|muxa_i|oQ[13]~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~358_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~355_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~357_combout\))) # (!\cpu_top_i|muxa_i|oQ[13]~355_combout\ & (\cpu_top_i|muxa_i|oQ[13]~350_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[13]~350_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[13]~357_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~355_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~358_combout\);

-- Location: LCCOMB_X29_Y16_N18
\cpu_top_i|muxa_i|oQ[13]~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~370_combout\ = (\cpu_top_i|muxa_i|oQ[13]~359_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~369_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\))) # (!\cpu_top_i|muxa_i|oQ[13]~359_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[13]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[13]~359_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|muxa_i|oQ[13]~369_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~358_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~370_combout\);

-- Location: LCCOMB_X29_Y16_N24
\cpu_top_i|muxa_i|oQ[13]~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~371_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~370_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(13),
	datad => \cpu_top_i|muxa_i|oQ[13]~370_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~371_combout\);

-- Location: LCCOMB_X30_Y16_N28
\cpu_top_i|muxa_i|oQ[13]~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~372_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~371_combout\ & (\cpu_top_i|r2_i|sREG\(13))) # (!\cpu_top_i|muxa_i|oQ[13]~371_combout\ & ((\cpu_top_i|r0_i|sREG\(13)))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[13]~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r2_i|sREG\(13),
	datac => \cpu_top_i|r0_i|sREG\(13),
	datad => \cpu_top_i|muxa_i|oQ[13]~371_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~372_combout\);

-- Location: LCCOMB_X31_Y14_N18
\cpu_top_i|muxa_i|oQ[13]~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~373_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(13))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~372_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(13),
	datad => \cpu_top_i|muxa_i|oQ[13]~372_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~373_combout\);

-- Location: LCCOMB_X31_Y14_N28
\cpu_top_i|muxa_i|oQ[13]~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[13]~374_combout\ = (\cpu_top_i|muxa_i|oQ[13]~373_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(13),
	datad => \cpu_top_i|muxa_i|oQ[13]~373_combout\,
	combout => \cpu_top_i|muxa_i|oQ[13]~374_combout\);

-- Location: LCCOMB_X30_Y14_N16
\cpu_top_i|alu_i|oC[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[13]~45_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[13]~374_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~374_combout\,
	combout => \cpu_top_i|alu_i|oC[13]~45_combout\);

-- Location: LCCOMB_X30_Y14_N26
\cpu_top_i|alu_i|oC[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[13]~46_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & (\cpu_top_i|mubx_i|oQ[13]~69_combout\ & \cpu_top_i|muxa_i|oQ[13]~374_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datac => \cpu_top_i|mubx_i|oQ[13]~69_combout\,
	datad => \cpu_top_i|muxa_i|oQ[13]~374_combout\,
	combout => \cpu_top_i|alu_i|oC[13]~46_combout\);

-- Location: LCCOMB_X31_Y14_N22
\cpu_top_i|alu_i|oC[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[12]~42_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[12]~348_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~348_combout\,
	combout => \cpu_top_i|alu_i|oC[12]~42_combout\);

-- Location: FF_X28_Y16_N27
\cpu_top_i|r0_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(12));

-- Location: FF_X31_Y14_N23
\cpu_top_i|r1_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(12));

-- Location: LCCOMB_X28_Y16_N26
\cpu_top_i|mubx_i|oQ[12]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[12]~62_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(12)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(12),
	datad => \cpu_top_i|r1_i|sREG\(12),
	combout => \cpu_top_i|mubx_i|oQ[12]~62_combout\);

-- Location: FF_X27_Y14_N29
\cpu_top_i|r3_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(12));

-- Location: FF_X27_Y14_N3
\cpu_top_i|r2_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(12));

-- Location: LCCOMB_X27_Y14_N4
\cpu_top_i|mubx_i|oQ[12]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[12]~63_combout\ = (\cpu_top_i|mubx_i|oQ[12]~62_combout\ & ((\cpu_top_i|r3_i|sREG\(12)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[12]~62_combout\ & (((\instr_rom_i|oQ[1]~21_combout\ & 
-- \cpu_top_i|r2_i|sREG\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[12]~62_combout\,
	datab => \cpu_top_i|r3_i|sREG\(12),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r2_i|sREG\(12),
	combout => \cpu_top_i|mubx_i|oQ[12]~63_combout\);

-- Location: FF_X26_Y13_N11
\cpu_top_i|r4_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(12));

-- Location: FF_X31_Y14_N25
\cpu_top_i|r6_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(12));

-- Location: LCCOMB_X28_Y16_N12
\cpu_top_i|mubx_i|oQ[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[12]~60_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|r6_i|sREG\(12)))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (\cpu_top_i|r4_i|sREG\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(12),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(12),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[12]~60_combout\);

-- Location: FF_X29_Y16_N21
\cpu_top_i|r7_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(12));

-- Location: LCCOMB_X29_Y16_N14
\cpu_top_i|mubx_i|oQ[12]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[12]~61_combout\ = (\cpu_top_i|mubx_i|oQ[12]~60_combout\ & ((\cpu_top_i|r7_i|sREG\(12)) # ((!\instr_rom_i|oQ[0]~41_combout\)))) # (!\cpu_top_i|mubx_i|oQ[12]~60_combout\ & (((\cpu_top_i|r5_i|sREG\(12) & 
-- \instr_rom_i|oQ[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[12]~60_combout\,
	datab => \cpu_top_i|r7_i|sREG\(12),
	datac => \cpu_top_i|r5_i|sREG\(12),
	datad => \instr_rom_i|oQ[0]~41_combout\,
	combout => \cpu_top_i|mubx_i|oQ[12]~61_combout\);

-- Location: LCCOMB_X30_Y14_N4
\cpu_top_i|mubx_i|oQ[12]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[12]~64_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[12]~61_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[12]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[12]~63_combout\,
	datad => \cpu_top_i|mubx_i|oQ[12]~61_combout\,
	combout => \cpu_top_i|mubx_i|oQ[12]~64_combout\);

-- Location: LCCOMB_X30_Y14_N22
\cpu_top_i|alu_i|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~38_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[12]~64_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[12]~64_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~45_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \cpu_top_i|mubx_i|oQ[12]~64_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~38_combout\);

-- Location: FF_X30_Y14_N9
\cpu_top_i|r5_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(11));

-- Location: FF_X29_Y14_N15
\cpu_top_i|r1_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(11));

-- Location: FF_X28_Y16_N15
\cpu_top_i|r0_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(11));

-- Location: FF_X28_Y16_N9
\cpu_top_i|r2_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(11));

-- Location: FF_X28_Y13_N27
\cpu_top_i|r3_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(11));

-- Location: FF_X28_Y13_N13
\cpu_top_i|r4_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(11));

-- Location: LCCOMB_X28_Y13_N12
\cpu_top_i|muxa_i|oQ[11]~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~307_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|r3_i|sREG\(11))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|r4_i|sREG\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(11),
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(11),
	datad => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~307_combout\);

-- Location: LCCOMB_X35_Y12_N28
\data_ram_i|rMEM[10][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[10][11]~feeder_combout\);

-- Location: FF_X35_Y12_N29
\data_ram_i|rMEM[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][11]~q\);

-- Location: FF_X35_Y12_N31
\data_ram_i|rMEM[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][11]~q\);

-- Location: LCCOMB_X33_Y17_N20
\data_ram_i|rMEM[9][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[9][11]~feeder_combout\);

-- Location: FF_X33_Y17_N21
\data_ram_i|rMEM[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][11]~q\);

-- Location: FF_X34_Y12_N29
\data_ram_i|rMEM[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][11]~q\);

-- Location: LCCOMB_X34_Y12_N28
\cpu_top_i|muxa_i|oQ[11]~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~297_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][11]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][11]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][11]~q\,
	datac => \data_ram_i|rMEM[8][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~297_combout\);

-- Location: LCCOMB_X35_Y12_N30
\cpu_top_i|muxa_i|oQ[11]~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~298_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~297_combout\ & ((\data_ram_i|rMEM[11][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~297_combout\ & (\data_ram_i|rMEM[10][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[10][11]~q\,
	datac => \data_ram_i|rMEM[11][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~297_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~298_combout\);

-- Location: LCCOMB_X28_Y15_N30
\data_ram_i|rMEM[2][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[2][11]~feeder_combout\);

-- Location: FF_X28_Y15_N31
\data_ram_i|rMEM[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][11]~q\);

-- Location: FF_X26_Y13_N3
\data_ram_i|rMEM[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][11]~q\);

-- Location: LCCOMB_X33_Y15_N0
\data_ram_i|rMEM[1][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[1][11]~feeder_combout\);

-- Location: FF_X33_Y15_N1
\data_ram_i|rMEM[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][11]~q\);

-- Location: FF_X25_Y12_N3
\data_ram_i|rMEM[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][11]~q\);

-- Location: LCCOMB_X25_Y12_N2
\cpu_top_i|muxa_i|oQ[11]~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~301_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[1][11]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[0][11]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[1][11]~q\,
	datac => \data_ram_i|rMEM[0][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~301_combout\);

-- Location: LCCOMB_X26_Y13_N2
\cpu_top_i|muxa_i|oQ[11]~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~302_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~301_combout\ & ((\data_ram_i|rMEM[3][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~301_combout\ & (\data_ram_i|rMEM[2][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][11]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~301_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~302_combout\);

-- Location: FF_X27_Y13_N11
\data_ram_i|rMEM[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][11]~q\);

-- Location: FF_X27_Y13_N21
\data_ram_i|rMEM[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][11]~q\);

-- Location: LCCOMB_X31_Y16_N12
\data_ram_i|rMEM[6][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[6][11]~feeder_combout\);

-- Location: FF_X31_Y16_N13
\data_ram_i|rMEM[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][11]~q\);

-- Location: FF_X31_Y16_N11
\data_ram_i|rMEM[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][11]~q\);

-- Location: LCCOMB_X31_Y16_N10
\cpu_top_i|muxa_i|oQ[11]~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~299_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[6][11]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][11]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[4][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~299_combout\);

-- Location: LCCOMB_X27_Y13_N20
\cpu_top_i|muxa_i|oQ[11]~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~300_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~299_combout\ & ((\data_ram_i|rMEM[7][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~299_combout\ & (\data_ram_i|rMEM[5][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[5][11]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[7][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~299_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~300_combout\);

-- Location: LCCOMB_X28_Y13_N22
\cpu_top_i|muxa_i|oQ[11]~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~303_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # (\cpu_top_i|muxa_i|oQ[11]~300_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[11]~302_combout\ & 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|muxa_i|oQ[11]~302_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~300_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~303_combout\);

-- Location: LCCOMB_X26_Y14_N22
\data_ram_i|rMEM[13][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[13][11]~feeder_combout\);

-- Location: FF_X26_Y14_N23
\data_ram_i|rMEM[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][11]~q\);

-- Location: FF_X26_Y14_N25
\data_ram_i|rMEM[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][11]~q\);

-- Location: LCCOMB_X29_Y10_N30
\data_ram_i|rMEM[12][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[12][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[12][11]~feeder_combout\);

-- Location: FF_X29_Y10_N31
\data_ram_i|rMEM[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[12][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][11]~q\);

-- Location: LCCOMB_X29_Y10_N24
\data_ram_i|rMEM[14][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[14][11]~feeder_combout\);

-- Location: FF_X29_Y10_N25
\data_ram_i|rMEM[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][11]~q\);

-- Location: LCCOMB_X27_Y14_N26
\cpu_top_i|muxa_i|oQ[11]~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~304_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][11]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[12][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[12][11]~q\,
	datac => \data_ram_i|rMEM[14][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~304_combout\);

-- Location: LCCOMB_X26_Y14_N24
\cpu_top_i|muxa_i|oQ[11]~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~305_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~304_combout\ & ((\data_ram_i|rMEM[15][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~304_combout\ & (\data_ram_i|rMEM[13][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][11]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~304_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~305_combout\);

-- Location: LCCOMB_X28_Y13_N4
\cpu_top_i|muxa_i|oQ[11]~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~306_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~303_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~305_combout\))) # (!\cpu_top_i|muxa_i|oQ[11]~303_combout\ & (\cpu_top_i|muxa_i|oQ[11]~298_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[11]~298_combout\,
	datac => \cpu_top_i|muxa_i|oQ[11]~303_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~305_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~306_combout\);

-- Location: LCCOMB_X34_Y13_N22
\data_ram_i|rMEM[27][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[27][11]~feeder_combout\);

-- Location: FF_X34_Y13_N23
\data_ram_i|rMEM[27][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][11]~q\);

-- Location: FF_X33_Y13_N11
\data_ram_i|rMEM[31][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][11]~q\);

-- Location: LCCOMB_X34_Y14_N30
\data_ram_i|rMEM[23][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[23][11]~feeder_combout\);

-- Location: FF_X34_Y14_N31
\data_ram_i|rMEM[23][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][11]~q\);

-- Location: FF_X33_Y13_N29
\data_ram_i|rMEM[19][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][11]~q\);

-- Location: LCCOMB_X33_Y13_N28
\cpu_top_i|muxa_i|oQ[11]~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~315_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][11]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][11]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[23][11]~q\,
	datac => \data_ram_i|rMEM[19][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~315_combout\);

-- Location: LCCOMB_X33_Y13_N10
\cpu_top_i|muxa_i|oQ[11]~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~316_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~315_combout\ & ((\data_ram_i|rMEM[31][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~315_combout\ & (\data_ram_i|rMEM[27][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][11]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[31][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~315_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~316_combout\);

-- Location: LCCOMB_X31_Y11_N8
\data_ram_i|rMEM[26][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[26][11]~feeder_combout\);

-- Location: FF_X31_Y11_N9
\data_ram_i|rMEM[26][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][11]~q\);

-- Location: FF_X33_Y12_N5
\data_ram_i|rMEM[22][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][11]~q\);

-- Location: FF_X32_Y13_N9
\data_ram_i|rMEM[18][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][11]~q\);

-- Location: LCCOMB_X32_Y13_N8
\cpu_top_i|muxa_i|oQ[11]~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~308_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][11]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][11]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][11]~q\,
	datac => \data_ram_i|rMEM[18][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~308_combout\);

-- Location: FF_X32_Y13_N15
\data_ram_i|rMEM[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][11]~q\);

-- Location: LCCOMB_X32_Y13_N14
\cpu_top_i|muxa_i|oQ[11]~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~309_combout\ = (\cpu_top_i|muxa_i|oQ[11]~308_combout\ & (((\data_ram_i|rMEM[30][11]~q\) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|muxa_i|oQ[11]~308_combout\ & (\data_ram_i|rMEM[26][11]~q\ & 
-- ((\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][11]~q\,
	datab => \cpu_top_i|muxa_i|oQ[11]~308_combout\,
	datac => \data_ram_i|rMEM[30][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~309_combout\);

-- Location: LCCOMB_X32_Y16_N12
\data_ram_i|rMEM[25][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[25][11]~feeder_combout\);

-- Location: FF_X32_Y16_N13
\data_ram_i|rMEM[25][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][11]~q\);

-- Location: FF_X32_Y16_N25
\data_ram_i|rMEM[29][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][11]~q\);

-- Location: LCCOMB_X36_Y14_N8
\data_ram_i|rMEM[21][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[21][11]~feeder_combout\);

-- Location: FF_X36_Y14_N9
\data_ram_i|rMEM[21][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][11]~q\);

-- Location: LCCOMB_X33_Y16_N26
\data_ram_i|rMEM[17][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[17][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[17][11]~feeder_combout\);

-- Location: FF_X33_Y16_N27
\data_ram_i|rMEM[17][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[17][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][11]~q\);

-- Location: LCCOMB_X32_Y16_N10
\cpu_top_i|muxa_i|oQ[11]~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~310_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][11]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- \data_ram_i|rMEM[17][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][11]~q\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \data_ram_i|rMEM[17][11]~q\,
	combout => \cpu_top_i|muxa_i|oQ[11]~310_combout\);

-- Location: LCCOMB_X32_Y16_N24
\cpu_top_i|muxa_i|oQ[11]~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~311_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~310_combout\ & ((\data_ram_i|rMEM[29][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~310_combout\ & (\data_ram_i|rMEM[25][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][11]~q\,
	datac => \data_ram_i|rMEM[29][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~310_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~311_combout\);

-- Location: FF_X33_Y11_N21
\data_ram_i|rMEM[24][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][11]~q\);

-- Location: FF_X34_Y16_N15
\data_ram_i|rMEM[28][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][11]~q\);

-- Location: LCCOMB_X35_Y14_N2
\data_ram_i|rMEM[20][11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][11]~feeder_combout\ = \cpu_top_i|alu_i|oC[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[11]~41_combout\,
	combout => \data_ram_i|rMEM[20][11]~feeder_combout\);

-- Location: FF_X35_Y14_N3
\data_ram_i|rMEM[20][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][11]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][11]~q\);

-- Location: FF_X34_Y16_N13
\data_ram_i|rMEM[16][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][11]~q\);

-- Location: LCCOMB_X34_Y16_N12
\cpu_top_i|muxa_i|oQ[11]~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~312_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][11]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][11]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][11]~q\,
	datac => \data_ram_i|rMEM[16][11]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~312_combout\);

-- Location: LCCOMB_X34_Y16_N14
\cpu_top_i|muxa_i|oQ[11]~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~313_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~312_combout\ & ((\data_ram_i|rMEM[28][11]~q\))) # (!\cpu_top_i|muxa_i|oQ[11]~312_combout\ & (\data_ram_i|rMEM[24][11]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][11]~q\,
	datac => \data_ram_i|rMEM[28][11]~q\,
	datad => \cpu_top_i|muxa_i|oQ[11]~312_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~313_combout\);

-- Location: LCCOMB_X28_Y13_N2
\cpu_top_i|muxa_i|oQ[11]~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~314_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[11]~311_combout\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~313_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[11]~311_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~313_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~314_combout\);

-- Location: LCCOMB_X28_Y13_N16
\cpu_top_i|muxa_i|oQ[11]~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~317_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~314_combout\ & (\cpu_top_i|muxa_i|oQ[11]~316_combout\)) # (!\cpu_top_i|muxa_i|oQ[11]~314_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~309_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[11]~316_combout\,
	datac => \cpu_top_i|muxa_i|oQ[11]~309_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~314_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~317_combout\);

-- Location: LCCOMB_X28_Y13_N14
\cpu_top_i|muxa_i|oQ[11]~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~318_combout\ = (\cpu_top_i|muxa_i|oQ[11]~307_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~317_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\))) # (!\cpu_top_i|muxa_i|oQ[11]~307_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[11]~306_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[11]~307_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|muxa_i|oQ[11]~306_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~317_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~318_combout\);

-- Location: LCCOMB_X29_Y16_N22
\cpu_top_i|muxa_i|oQ[11]~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~319_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~318_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(11),
	datad => \cpu_top_i|muxa_i|oQ[11]~318_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~319_combout\);

-- Location: LCCOMB_X28_Y16_N8
\cpu_top_i|muxa_i|oQ[11]~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~320_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~319_combout\ & ((\cpu_top_i|r2_i|sREG\(11)))) # (!\cpu_top_i|muxa_i|oQ[11]~319_combout\ & (\cpu_top_i|r0_i|sREG\(11))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[11]~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r0_i|sREG\(11),
	datac => \cpu_top_i|r2_i|sREG\(11),
	datad => \cpu_top_i|muxa_i|oQ[11]~319_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~320_combout\);

-- Location: LCCOMB_X29_Y14_N14
\cpu_top_i|muxa_i|oQ[11]~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~321_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(11))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~320_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(11),
	datad => \cpu_top_i|muxa_i|oQ[11]~320_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~321_combout\);

-- Location: LCCOMB_X30_Y14_N6
\cpu_top_i|muxa_i|oQ[11]~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[11]~322_combout\ = (\cpu_top_i|muxa_i|oQ[11]~321_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(11),
	datad => \cpu_top_i|muxa_i|oQ[11]~321_combout\,
	combout => \cpu_top_i|muxa_i|oQ[11]~322_combout\);

-- Location: LCCOMB_X30_Y14_N12
\cpu_top_i|alu_i|oC[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[11]~39_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[11]~322_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~322_combout\,
	combout => \cpu_top_i|alu_i|oC[11]~39_combout\);

-- Location: FF_X29_Y16_N3
\cpu_top_i|r7_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(10));

-- Location: FF_X32_Y14_N29
\cpu_top_i|r6_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(10));

-- Location: FF_X28_Y13_N1
\cpu_top_i|r4_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(10));

-- Location: LCCOMB_X28_Y14_N22
\cpu_top_i|mubx_i|oQ[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[10]~50_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & (\cpu_top_i|r6_i|sREG\(10))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- ((\cpu_top_i|r4_i|sREG\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r6_i|sREG\(10),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r4_i|sREG\(10),
	combout => \cpu_top_i|mubx_i|oQ[10]~50_combout\);

-- Location: LCCOMB_X29_Y16_N0
\cpu_top_i|mubx_i|oQ[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[10]~51_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[10]~50_combout\ & (\cpu_top_i|r7_i|sREG\(10))) # (!\cpu_top_i|mubx_i|oQ[10]~50_combout\ & ((\cpu_top_i|r5_i|sREG\(10)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[10]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r7_i|sREG\(10),
	datac => \cpu_top_i|r5_i|sREG\(10),
	datad => \cpu_top_i|mubx_i|oQ[10]~50_combout\,
	combout => \cpu_top_i|mubx_i|oQ[10]~51_combout\);

-- Location: FF_X29_Y14_N25
\cpu_top_i|r1_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(10));

-- Location: FF_X28_Y16_N23
\cpu_top_i|r0_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(10));

-- Location: LCCOMB_X28_Y16_N22
\cpu_top_i|mubx_i|oQ[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[10]~52_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(10)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(10) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(10),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(10),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[10]~52_combout\);

-- Location: FF_X28_Y13_N25
\cpu_top_i|r3_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(10));

-- Location: FF_X28_Y16_N5
\cpu_top_i|r2_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(10));

-- Location: LCCOMB_X28_Y16_N4
\cpu_top_i|mubx_i|oQ[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[10]~53_combout\ = (\cpu_top_i|mubx_i|oQ[10]~52_combout\ & ((\cpu_top_i|r3_i|sREG\(10)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[10]~52_combout\ & (((\cpu_top_i|r2_i|sREG\(10) & 
-- \instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[10]~52_combout\,
	datab => \cpu_top_i|r3_i|sREG\(10),
	datac => \cpu_top_i|r2_i|sREG\(10),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[10]~53_combout\);

-- Location: LCCOMB_X30_Y16_N24
\cpu_top_i|mubx_i|oQ[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[10]~54_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[10]~51_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[10]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[10]~51_combout\,
	datab => \cpu_top_i|mubx_i|oQ[10]~53_combout\,
	datad => \instr_rom_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|mubx_i|oQ[10]~54_combout\);

-- Location: LCCOMB_X31_Y12_N14
\cpu_top_i|alu_i|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~32_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[10]~54_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[10]~54_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~45_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[9]~29_combout\,
	datad => \cpu_top_i|mubx_i|oQ[10]~54_combout\,
	combout => \cpu_top_i|alu_i|Add1~32_combout\);

-- Location: FF_X26_Y15_N5
\cpu_top_i|r5_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(9));

-- Location: FF_X30_Y15_N11
\cpu_top_i|r1_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(9));

-- Location: FF_X28_Y16_N17
\cpu_top_i|r0_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(9));

-- Location: FF_X30_Y15_N13
\cpu_top_i|r2_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(9));

-- Location: LCCOMB_X35_Y12_N14
\data_ram_i|rMEM[11][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[11][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[11][9]~feeder_combout\);

-- Location: FF_X35_Y12_N15
\data_ram_i|rMEM[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[11][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][9]~q\);

-- Location: LCCOMB_X35_Y12_N8
\data_ram_i|rMEM[10][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[10][9]~feeder_combout\);

-- Location: FF_X35_Y12_N9
\data_ram_i|rMEM[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][9]~q\);

-- Location: LCCOMB_X36_Y12_N24
\data_ram_i|rMEM[9][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[9][9]~feeder_combout\);

-- Location: FF_X36_Y12_N25
\data_ram_i|rMEM[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][9]~q\);

-- Location: FF_X34_Y12_N5
\data_ram_i|rMEM[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][9]~q\);

-- Location: LCCOMB_X34_Y12_N4
\cpu_top_i|muxa_i|oQ[9]~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~245_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][9]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][9]~q\,
	datac => \data_ram_i|rMEM[8][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~245_combout\);

-- Location: LCCOMB_X34_Y12_N10
\cpu_top_i|muxa_i|oQ[9]~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~246_combout\ = (\cpu_top_i|muxa_i|oQ[9]~245_combout\ & ((\data_ram_i|rMEM[11][9]~q\) # ((!\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|muxa_i|oQ[9]~245_combout\ & (((\data_ram_i|rMEM[10][9]~q\ & 
-- \cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[11][9]~q\,
	datab => \data_ram_i|rMEM[10][9]~q\,
	datac => \cpu_top_i|muxa_i|oQ[9]~245_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~246_combout\);

-- Location: FF_X26_Y14_N7
\data_ram_i|rMEM[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][9]~q\);

-- Location: FF_X28_Y10_N5
\data_ram_i|rMEM[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][9]~q\);

-- Location: LCCOMB_X29_Y10_N6
\data_ram_i|rMEM[14][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[14][9]~feeder_combout\);

-- Location: FF_X29_Y10_N7
\data_ram_i|rMEM[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][9]~q\);

-- Location: FF_X29_Y10_N29
\data_ram_i|rMEM[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][9]~q\);

-- Location: LCCOMB_X29_Y10_N28
\cpu_top_i|muxa_i|oQ[9]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~252_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][9]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[12][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][9]~q\,
	datac => \data_ram_i|rMEM[12][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~252_combout\);

-- Location: LCCOMB_X28_Y10_N4
\cpu_top_i|muxa_i|oQ[9]~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~253_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~252_combout\ & ((\data_ram_i|rMEM[15][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~252_combout\ & (\data_ram_i|rMEM[13][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~252_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~253_combout\);

-- Location: FF_X28_Y15_N23
\data_ram_i|rMEM[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][9]~q\);

-- Location: FF_X26_Y12_N17
\data_ram_i|rMEM[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][9]~q\);

-- Location: LCCOMB_X33_Y15_N28
\data_ram_i|rMEM[1][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[1][9]~feeder_combout\);

-- Location: FF_X33_Y15_N29
\data_ram_i|rMEM[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][9]~q\);

-- Location: FF_X25_Y12_N9
\data_ram_i|rMEM[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][9]~q\);

-- Location: LCCOMB_X25_Y12_N8
\cpu_top_i|muxa_i|oQ[9]~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~249_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[1][9]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[0][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[1][9]~q\,
	datac => \data_ram_i|rMEM[0][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~249_combout\);

-- Location: LCCOMB_X26_Y12_N16
\cpu_top_i|muxa_i|oQ[9]~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~250_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~249_combout\ & ((\data_ram_i|rMEM[3][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~249_combout\ & (\data_ram_i|rMEM[2][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~249_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~250_combout\);

-- Location: FF_X31_Y16_N17
\data_ram_i|rMEM[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][9]~q\);

-- Location: FF_X31_Y16_N31
\data_ram_i|rMEM[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][9]~q\);

-- Location: LCCOMB_X31_Y16_N30
\cpu_top_i|muxa_i|oQ[9]~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~247_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[6][9]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[4][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~247_combout\);

-- Location: FF_X28_Y15_N25
\data_ram_i|rMEM[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][9]~q\);

-- Location: LCCOMB_X27_Y13_N28
\data_ram_i|rMEM[5][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[5][9]~feeder_combout\);

-- Location: FF_X27_Y13_N29
\data_ram_i|rMEM[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][9]~q\);

-- Location: LCCOMB_X28_Y15_N24
\cpu_top_i|muxa_i|oQ[9]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~248_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~247_combout\ & (\data_ram_i|rMEM[7][9]~q\)) # (!\cpu_top_i|muxa_i|oQ[9]~247_combout\ & ((\data_ram_i|rMEM[5][9]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[9]~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|muxa_i|oQ[9]~247_combout\,
	datac => \data_ram_i|rMEM[7][9]~q\,
	datad => \data_ram_i|rMEM[5][9]~q\,
	combout => \cpu_top_i|muxa_i|oQ[9]~248_combout\);

-- Location: LCCOMB_X27_Y15_N18
\cpu_top_i|muxa_i|oQ[9]~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~251_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~248_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[9]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[9]~250_combout\,
	datac => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~248_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~251_combout\);

-- Location: LCCOMB_X29_Y15_N10
\cpu_top_i|muxa_i|oQ[9]~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~254_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~251_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~253_combout\))) # (!\cpu_top_i|muxa_i|oQ[9]~251_combout\ & (\cpu_top_i|muxa_i|oQ[9]~246_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[9]~246_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[9]~253_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~251_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~254_combout\);

-- Location: FF_X27_Y14_N31
\cpu_top_i|r3_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(9));

-- Location: FF_X28_Y13_N19
\cpu_top_i|r4_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(9));

-- Location: LCCOMB_X28_Y13_N18
\cpu_top_i|muxa_i|oQ[9]~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~255_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|r3_i|sREG\(9))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|r4_i|sREG\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(9),
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(9),
	datad => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~255_combout\);

-- Location: LCCOMB_X34_Y13_N24
\data_ram_i|rMEM[27][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[27][9]~feeder_combout\);

-- Location: FF_X34_Y13_N25
\data_ram_i|rMEM[27][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][9]~q\);

-- Location: FF_X33_Y13_N3
\data_ram_i|rMEM[31][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][9]~q\);

-- Location: LCCOMB_X34_Y14_N22
\data_ram_i|rMEM[23][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[23][9]~feeder_combout\);

-- Location: FF_X34_Y14_N23
\data_ram_i|rMEM[23][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][9]~q\);

-- Location: FF_X33_Y13_N21
\data_ram_i|rMEM[19][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][9]~q\);

-- Location: LCCOMB_X33_Y13_N20
\cpu_top_i|muxa_i|oQ[9]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~263_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][9]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~263_combout\);

-- Location: LCCOMB_X33_Y13_N2
\cpu_top_i|muxa_i|oQ[9]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~264_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~263_combout\ & ((\data_ram_i|rMEM[31][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~263_combout\ & (\data_ram_i|rMEM[27][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[31][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~263_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~264_combout\);

-- Location: FF_X31_Y11_N25
\data_ram_i|rMEM[26][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][9]~q\);

-- Location: FF_X30_Y11_N21
\data_ram_i|rMEM[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][9]~q\);

-- Location: LCCOMB_X32_Y11_N20
\data_ram_i|rMEM[22][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[22][9]~feeder_combout\);

-- Location: FF_X32_Y11_N21
\data_ram_i|rMEM[22][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][9]~q\);

-- Location: FF_X32_Y11_N7
\data_ram_i|rMEM[18][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][9]~q\);

-- Location: LCCOMB_X32_Y11_N6
\cpu_top_i|muxa_i|oQ[9]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~256_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][9]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][9]~q\,
	datac => \data_ram_i|rMEM[18][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~256_combout\);

-- Location: LCCOMB_X30_Y11_N20
\cpu_top_i|muxa_i|oQ[9]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~257_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~256_combout\ & ((\data_ram_i|rMEM[30][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~256_combout\ & (\data_ram_i|rMEM[26][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[26][9]~q\,
	datac => \data_ram_i|rMEM[30][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~256_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~257_combout\);

-- Location: FF_X31_Y13_N17
\data_ram_i|rMEM[24][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][9]~q\);

-- Location: FF_X31_Y13_N11
\data_ram_i|rMEM[28][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][9]~q\);

-- Location: FF_X35_Y14_N29
\data_ram_i|rMEM[20][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][9]~q\);

-- Location: FF_X33_Y12_N7
\data_ram_i|rMEM[16][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][9]~q\);

-- Location: LCCOMB_X33_Y12_N6
\cpu_top_i|muxa_i|oQ[9]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~260_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][9]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][9]~q\,
	datac => \data_ram_i|rMEM[16][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~260_combout\);

-- Location: LCCOMB_X31_Y13_N10
\cpu_top_i|muxa_i|oQ[9]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~261_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~260_combout\ & ((\data_ram_i|rMEM[28][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~260_combout\ & (\data_ram_i|rMEM[24][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[24][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[28][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~260_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~261_combout\);

-- Location: LCCOMB_X32_Y16_N16
\data_ram_i|rMEM[25][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[25][9]~feeder_combout\);

-- Location: FF_X32_Y16_N17
\data_ram_i|rMEM[25][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][9]~q\);

-- Location: FF_X32_Y16_N31
\data_ram_i|rMEM[29][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][9]~q\);

-- Location: LCCOMB_X36_Y14_N4
\data_ram_i|rMEM[21][9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][9]~feeder_combout\ = \cpu_top_i|alu_i|oC[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[9]~35_combout\,
	combout => \data_ram_i|rMEM[21][9]~feeder_combout\);

-- Location: FF_X36_Y14_N5
\data_ram_i|rMEM[21][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][9]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][9]~q\);

-- Location: FF_X33_Y16_N19
\data_ram_i|rMEM[17][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][9]~q\);

-- Location: LCCOMB_X33_Y16_N18
\cpu_top_i|muxa_i|oQ[9]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~258_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][9]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][9]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[21][9]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[17][9]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~258_combout\);

-- Location: LCCOMB_X32_Y16_N30
\cpu_top_i|muxa_i|oQ[9]~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~259_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~258_combout\ & ((\data_ram_i|rMEM[29][9]~q\))) # (!\cpu_top_i|muxa_i|oQ[9]~258_combout\ & (\data_ram_i|rMEM[25][9]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][9]~q\,
	datac => \data_ram_i|rMEM[29][9]~q\,
	datad => \cpu_top_i|muxa_i|oQ[9]~258_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~259_combout\);

-- Location: LCCOMB_X29_Y15_N20
\cpu_top_i|muxa_i|oQ[9]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~262_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~259_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[9]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[9]~261_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~259_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~262_combout\);

-- Location: LCCOMB_X29_Y15_N6
\cpu_top_i|muxa_i|oQ[9]~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~265_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~262_combout\ & (\cpu_top_i|muxa_i|oQ[9]~264_combout\)) # (!\cpu_top_i|muxa_i|oQ[9]~262_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~257_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[9]~264_combout\,
	datac => \cpu_top_i|muxa_i|oQ[9]~257_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~262_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~265_combout\);

-- Location: LCCOMB_X29_Y15_N16
\cpu_top_i|muxa_i|oQ[9]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~266_combout\ = (\cpu_top_i|muxa_i|oQ[9]~255_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~265_combout\) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\)))) # (!\cpu_top_i|muxa_i|oQ[9]~255_combout\ & (\cpu_top_i|muxa_i|oQ[9]~254_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[9]~254_combout\,
	datab => \cpu_top_i|muxa_i|oQ[9]~255_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~265_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~266_combout\);

-- Location: LCCOMB_X29_Y15_N14
\cpu_top_i|muxa_i|oQ[9]~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~267_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~266_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(9),
	datad => \cpu_top_i|muxa_i|oQ[9]~266_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~267_combout\);

-- Location: LCCOMB_X30_Y15_N12
\cpu_top_i|muxa_i|oQ[9]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~268_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~267_combout\ & ((\cpu_top_i|r2_i|sREG\(9)))) # (!\cpu_top_i|muxa_i|oQ[9]~267_combout\ & (\cpu_top_i|r0_i|sREG\(9))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[9]~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r0_i|sREG\(9),
	datab => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datac => \cpu_top_i|r2_i|sREG\(9),
	datad => \cpu_top_i|muxa_i|oQ[9]~267_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~268_combout\);

-- Location: LCCOMB_X30_Y15_N10
\cpu_top_i|muxa_i|oQ[9]~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~269_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(9))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~268_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(9),
	datad => \cpu_top_i|muxa_i|oQ[9]~268_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~269_combout\);

-- Location: LCCOMB_X30_Y15_N30
\cpu_top_i|muxa_i|oQ[9]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[9]~270_combout\ = (\cpu_top_i|muxa_i|oQ[9]~269_combout\) # ((\cpu_top_i|r5_i|sREG\(9) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(9),
	datac => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~269_combout\,
	combout => \cpu_top_i|muxa_i|oQ[9]~270_combout\);

-- Location: LCCOMB_X28_Y16_N16
\cpu_top_i|mubx_i|oQ[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[9]~47_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(9)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(9),
	datad => \cpu_top_i|r1_i|sREG\(9),
	combout => \cpu_top_i|mubx_i|oQ[9]~47_combout\);

-- Location: LCCOMB_X27_Y14_N20
\cpu_top_i|mubx_i|oQ[9]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[9]~48_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[9]~47_combout\ & (\cpu_top_i|r3_i|sREG\(9))) # (!\cpu_top_i|mubx_i|oQ[9]~47_combout\ & ((\cpu_top_i|r2_i|sREG\(9)))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[9]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(9),
	datab => \cpu_top_i|r2_i|sREG\(9),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|mubx_i|oQ[9]~47_combout\,
	combout => \cpu_top_i|mubx_i|oQ[9]~48_combout\);

-- Location: LCCOMB_X26_Y15_N30
\cpu_top_i|alu_i|oC[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[9]~33_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[9]~46_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[9]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[9]~46_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \cpu_top_i|mubx_i|oQ[9]~48_combout\,
	combout => \cpu_top_i|alu_i|oC[9]~33_combout\);

-- Location: FF_X29_Y14_N17
\cpu_top_i|r1_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(8));

-- Location: FF_X28_Y16_N3
\cpu_top_i|r0_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(8));

-- Location: LCCOMB_X28_Y16_N2
\cpu_top_i|mubx_i|oQ[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[8]~42_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(8)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(8) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(8),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(8),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[8]~42_combout\);

-- Location: FF_X27_Y15_N29
\cpu_top_i|r3_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(8));

-- Location: FF_X28_Y14_N9
\cpu_top_i|r2_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(8));

-- Location: LCCOMB_X27_Y15_N16
\cpu_top_i|mubx_i|oQ[8]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[8]~43_combout\ = (\cpu_top_i|mubx_i|oQ[8]~42_combout\ & ((\cpu_top_i|r3_i|sREG\(8)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[8]~42_combout\ & (((\instr_rom_i|oQ[1]~21_combout\ & \cpu_top_i|r2_i|sREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[8]~42_combout\,
	datab => \cpu_top_i|r3_i|sREG\(8),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r2_i|sREG\(8),
	combout => \cpu_top_i|mubx_i|oQ[8]~43_combout\);

-- Location: FF_X28_Y14_N3
\cpu_top_i|r7_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(8));

-- Location: FF_X32_Y14_N21
\cpu_top_i|r6_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(8));

-- Location: FF_X28_Y13_N9
\cpu_top_i|r4_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(8));

-- Location: LCCOMB_X29_Y15_N0
\cpu_top_i|mubx_i|oQ[8]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[8]~40_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\) # ((\cpu_top_i|r6_i|sREG\(8))))) # (!\instr_rom_i|oQ[1]~21_combout\ & (!\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r4_i|sREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(8),
	datad => \cpu_top_i|r4_i|sREG\(8),
	combout => \cpu_top_i|mubx_i|oQ[8]~40_combout\);

-- Location: LCCOMB_X29_Y15_N30
\cpu_top_i|mubx_i|oQ[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[8]~41_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[8]~40_combout\ & (\cpu_top_i|r7_i|sREG\(8))) # (!\cpu_top_i|mubx_i|oQ[8]~40_combout\ & ((\cpu_top_i|r5_i|sREG\(8)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[8]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(8),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r5_i|sREG\(8),
	datad => \cpu_top_i|mubx_i|oQ[8]~40_combout\,
	combout => \cpu_top_i|mubx_i|oQ[8]~41_combout\);

-- Location: LCCOMB_X27_Y15_N14
\cpu_top_i|alu_i|oC[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[8]~30_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[8]~41_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[8]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[8]~43_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \cpu_top_i|mubx_i|oQ[8]~41_combout\,
	combout => \cpu_top_i|alu_i|oC[8]~30_combout\);

-- Location: LCCOMB_X27_Y15_N24
\cpu_top_i|mubx_i|oQ[8]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[8]~44_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[8]~41_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[8]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[8]~41_combout\,
	datad => \cpu_top_i|mubx_i|oQ[8]~43_combout\,
	combout => \cpu_top_i|mubx_i|oQ[8]~44_combout\);

-- Location: LCCOMB_X26_Y15_N26
\cpu_top_i|alu_i|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~26_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[8]~44_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[8]~44_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \cpu_top_i|mubx_i|oQ[8]~44_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~26_combout\);

-- Location: FF_X30_Y15_N7
\cpu_top_i|r2_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(7));

-- Location: FF_X27_Y15_N3
\cpu_top_i|r3_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(7));

-- Location: FF_X30_Y15_N25
\cpu_top_i|r1_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(7));

-- Location: FF_X28_Y16_N29
\cpu_top_i|r0_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(7));

-- Location: LCCOMB_X28_Y16_N28
\cpu_top_i|mubx_i|oQ[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[7]~37_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(7)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(7) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(7),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(7),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[7]~37_combout\);

-- Location: LCCOMB_X27_Y15_N2
\cpu_top_i|mubx_i|oQ[7]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[7]~38_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[7]~37_combout\ & ((\cpu_top_i|r3_i|sREG\(7)))) # (!\cpu_top_i|mubx_i|oQ[7]~37_combout\ & (\cpu_top_i|r2_i|sREG\(7))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[7]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(7),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \cpu_top_i|r3_i|sREG\(7),
	datad => \cpu_top_i|mubx_i|oQ[7]~37_combout\,
	combout => \cpu_top_i|mubx_i|oQ[7]~38_combout\);

-- Location: FF_X32_Y14_N25
\cpu_top_i|r6_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(7));

-- Location: FF_X28_Y13_N21
\cpu_top_i|r4_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(7));

-- Location: LCCOMB_X29_Y15_N12
\cpu_top_i|mubx_i|oQ[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[7]~35_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\) # ((\cpu_top_i|r6_i|sREG\(7))))) # (!\instr_rom_i|oQ[1]~21_combout\ & (!\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r4_i|sREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(7),
	datad => \cpu_top_i|r4_i|sREG\(7),
	combout => \cpu_top_i|mubx_i|oQ[7]~35_combout\);

-- Location: FF_X29_Y15_N25
\cpu_top_i|r7_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(7));

-- Location: LCCOMB_X29_Y15_N22
\cpu_top_i|mubx_i|oQ[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[7]~36_combout\ = (\cpu_top_i|mubx_i|oQ[7]~35_combout\ & (((\cpu_top_i|r7_i|sREG\(7))) # (!\instr_rom_i|oQ[0]~41_combout\))) # (!\cpu_top_i|mubx_i|oQ[7]~35_combout\ & (\instr_rom_i|oQ[0]~41_combout\ & (\cpu_top_i|r5_i|sREG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[7]~35_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r5_i|sREG\(7),
	datad => \cpu_top_i|r7_i|sREG\(7),
	combout => \cpu_top_i|mubx_i|oQ[7]~36_combout\);

-- Location: LCCOMB_X27_Y15_N8
\cpu_top_i|alu_i|oC[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[7]~27_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[7]~36_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[7]~38_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \cpu_top_i|mubx_i|oQ[7]~36_combout\,
	combout => \cpu_top_i|alu_i|oC[7]~27_combout\);

-- Location: LCCOMB_X27_Y15_N30
\cpu_top_i|mubx_i|oQ[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[7]~39_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[7]~36_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[7]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|mubx_i|oQ[7]~38_combout\,
	datac => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[7]~36_combout\,
	combout => \cpu_top_i|mubx_i|oQ[7]~39_combout\);

-- Location: LCCOMB_X26_Y15_N8
\cpu_top_i|alu_i|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~23_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[7]~39_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[7]~39_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datac => \cpu_top_i|mubx_i|oQ[7]~39_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~23_combout\);

-- Location: FF_X29_Y15_N19
\cpu_top_i|r5_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(6));

-- Location: FF_X30_Y15_N3
\cpu_top_i|r1_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(6));

-- Location: FF_X28_Y16_N7
\cpu_top_i|r0_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(6));

-- Location: FF_X29_Y15_N5
\cpu_top_i|r7_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(6));

-- Location: LCCOMB_X29_Y15_N4
\cpu_top_i|muxa_i|oQ[6]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~189_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|r0_i|sREG\(6)) # ((\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|r7_i|sREG\(6) & 
-- !\cpu_top_i|muxa_i|oQ[7]~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r0_i|sREG\(6),
	datab => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datac => \cpu_top_i|r7_i|sREG\(6),
	datad => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~189_combout\);

-- Location: FF_X32_Y16_N9
\data_ram_i|rMEM[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][6]~q\);

-- Location: FF_X32_Y16_N27
\data_ram_i|rMEM[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][6]~q\);

-- Location: LCCOMB_X36_Y14_N10
\data_ram_i|rMEM[21][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[21][6]~feeder_combout\);

-- Location: FF_X36_Y14_N11
\data_ram_i|rMEM[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][6]~q\);

-- Location: FF_X33_Y16_N23
\data_ram_i|rMEM[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][6]~q\);

-- Location: LCCOMB_X33_Y16_N22
\cpu_top_i|muxa_i|oQ[6]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~178_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][6]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][6]~q\,
	datac => \data_ram_i|rMEM[17][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~178_combout\);

-- Location: LCCOMB_X32_Y16_N26
\cpu_top_i|muxa_i|oQ[6]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~179_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~178_combout\ & ((\data_ram_i|rMEM[29][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~178_combout\ & (\data_ram_i|rMEM[25][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][6]~q\,
	datac => \data_ram_i|rMEM[29][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~178_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~179_combout\);

-- Location: LCCOMB_X34_Y13_N6
\data_ram_i|rMEM[27][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[27][6]~feeder_combout\);

-- Location: FF_X34_Y13_N7
\data_ram_i|rMEM[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][6]~q\);

-- Location: FF_X33_Y13_N15
\data_ram_i|rMEM[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][6]~q\);

-- Location: LCCOMB_X34_Y14_N20
\data_ram_i|rMEM[23][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[23][6]~feeder_combout\);

-- Location: FF_X34_Y14_N21
\data_ram_i|rMEM[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][6]~q\);

-- Location: FF_X33_Y13_N1
\data_ram_i|rMEM[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][6]~q\);

-- Location: LCCOMB_X33_Y13_N0
\cpu_top_i|muxa_i|oQ[6]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~185_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][6]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~185_combout\);

-- Location: LCCOMB_X33_Y13_N14
\cpu_top_i|muxa_i|oQ[6]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~186_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~185_combout\ & ((\data_ram_i|rMEM[31][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~185_combout\ & (\data_ram_i|rMEM[27][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[31][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~185_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~186_combout\);

-- Location: LCCOMB_X33_Y11_N10
\data_ram_i|rMEM[24][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[24][6]~feeder_combout\);

-- Location: FF_X33_Y11_N11
\data_ram_i|rMEM[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][6]~q\);

-- Location: FF_X27_Y15_N23
\data_ram_i|rMEM[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][6]~q\);

-- Location: FF_X35_Y14_N25
\data_ram_i|rMEM[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][6]~q\);

-- Location: FF_X33_Y12_N9
\data_ram_i|rMEM[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][6]~q\);

-- Location: LCCOMB_X33_Y12_N8
\cpu_top_i|muxa_i|oQ[6]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~182_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][6]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[20][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[16][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~182_combout\);

-- Location: LCCOMB_X27_Y15_N22
\cpu_top_i|muxa_i|oQ[6]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~183_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~182_combout\ & ((\data_ram_i|rMEM[28][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~182_combout\ & (\data_ram_i|rMEM[24][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][6]~q\,
	datac => \data_ram_i|rMEM[28][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~182_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~183_combout\);

-- Location: FF_X31_Y11_N27
\data_ram_i|rMEM[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][6]~q\);

-- Location: FF_X30_Y11_N25
\data_ram_i|rMEM[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][6]~q\);

-- Location: LCCOMB_X32_Y11_N8
\data_ram_i|rMEM[22][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[22][6]~feeder_combout\);

-- Location: FF_X32_Y11_N9
\data_ram_i|rMEM[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][6]~q\);

-- Location: FF_X32_Y11_N23
\data_ram_i|rMEM[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][6]~q\);

-- Location: LCCOMB_X32_Y11_N22
\cpu_top_i|muxa_i|oQ[6]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~180_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][6]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][6]~q\,
	datac => \data_ram_i|rMEM[18][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~180_combout\);

-- Location: LCCOMB_X30_Y11_N24
\cpu_top_i|muxa_i|oQ[6]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~181_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~180_combout\ & ((\data_ram_i|rMEM[30][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~180_combout\ & (\data_ram_i|rMEM[26][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[30][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~180_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~181_combout\);

-- Location: LCCOMB_X27_Y15_N0
\cpu_top_i|muxa_i|oQ[6]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~184_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\) # ((\cpu_top_i|muxa_i|oQ[6]~181_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[6]~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~183_combout\,
	datad => \cpu_top_i|muxa_i|oQ[6]~181_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~184_combout\);

-- Location: LCCOMB_X27_Y15_N6
\cpu_top_i|muxa_i|oQ[6]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~187_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~184_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~186_combout\))) # (!\cpu_top_i|muxa_i|oQ[6]~184_combout\ & (\cpu_top_i|muxa_i|oQ[6]~179_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[6]~179_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~186_combout\,
	datad => \cpu_top_i|muxa_i|oQ[6]~184_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~187_combout\);

-- Location: FF_X27_Y15_N5
\cpu_top_i|r3_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(6));

-- Location: FF_X27_Y12_N17
\cpu_top_i|r4_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(6));

-- Location: LCCOMB_X29_Y13_N26
\data_ram_i|rMEM[14][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[14][6]~feeder_combout\);

-- Location: FF_X29_Y13_N27
\data_ram_i|rMEM[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][6]~q\);

-- Location: FF_X29_Y13_N5
\data_ram_i|rMEM[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][6]~q\);

-- Location: FF_X26_Y14_N19
\data_ram_i|rMEM[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][6]~q\);

-- Location: FF_X29_Y11_N11
\data_ram_i|rMEM[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][6]~q\);

-- Location: LCCOMB_X29_Y11_N10
\cpu_top_i|muxa_i|oQ[6]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~174_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[13][6]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[12][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[13][6]~q\,
	datac => \data_ram_i|rMEM[12][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~174_combout\);

-- Location: LCCOMB_X29_Y13_N4
\cpu_top_i|muxa_i|oQ[6]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~175_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~174_combout\ & ((\data_ram_i|rMEM[15][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~174_combout\ & (\data_ram_i|rMEM[14][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[14][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[15][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~174_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~175_combout\);

-- Location: LCCOMB_X33_Y14_N16
\data_ram_i|rMEM[10][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[10][6]~feeder_combout\);

-- Location: FF_X33_Y14_N17
\data_ram_i|rMEM[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][6]~q\);

-- Location: FF_X33_Y14_N23
\data_ram_i|rMEM[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][6]~q\);

-- Location: LCCOMB_X36_Y12_N14
\data_ram_i|rMEM[9][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[9][6]~feeder_combout\);

-- Location: FF_X36_Y12_N15
\data_ram_i|rMEM[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][6]~q\);

-- Location: FF_X34_Y12_N31
\data_ram_i|rMEM[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][6]~q\);

-- Location: LCCOMB_X34_Y12_N30
\cpu_top_i|muxa_i|oQ[6]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~167_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[9][6]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[9][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[8][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~167_combout\);

-- Location: LCCOMB_X33_Y14_N22
\cpu_top_i|muxa_i|oQ[6]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~168_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~167_combout\ & ((\data_ram_i|rMEM[11][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~167_combout\ & (\data_ram_i|rMEM[10][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[10][6]~q\,
	datac => \data_ram_i|rMEM[11][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~167_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~168_combout\);

-- Location: FF_X26_Y12_N5
\data_ram_i|rMEM[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][6]~q\);

-- Location: FF_X26_Y12_N19
\data_ram_i|rMEM[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][6]~q\);

-- Location: LCCOMB_X33_Y15_N4
\data_ram_i|rMEM[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[1][6]~feeder_combout\);

-- Location: FF_X33_Y15_N5
\data_ram_i|rMEM[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][6]~q\);

-- Location: FF_X25_Y12_N15
\data_ram_i|rMEM[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][6]~q\);

-- Location: LCCOMB_X25_Y12_N14
\cpu_top_i|muxa_i|oQ[6]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~171_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[1][6]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[0][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[0][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~171_combout\);

-- Location: LCCOMB_X26_Y12_N18
\cpu_top_i|muxa_i|oQ[6]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~172_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~171_combout\ & ((\data_ram_i|rMEM[3][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~171_combout\ & (\data_ram_i|rMEM[2][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~171_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~172_combout\);

-- Location: FF_X28_Y11_N13
\data_ram_i|rMEM[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][6]~q\);

-- Location: FF_X27_Y13_N31
\data_ram_i|rMEM[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][6]~q\);

-- Location: LCCOMB_X27_Y13_N0
\data_ram_i|rMEM[5][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][6]~feeder_combout\ = \cpu_top_i|alu_i|oC[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[6]~26_combout\,
	combout => \data_ram_i|rMEM[5][6]~feeder_combout\);

-- Location: FF_X27_Y13_N1
\data_ram_i|rMEM[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][6]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][6]~q\);

-- Location: FF_X27_Y16_N9
\data_ram_i|rMEM[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][6]~q\);

-- Location: LCCOMB_X27_Y16_N8
\cpu_top_i|muxa_i|oQ[6]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~169_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][6]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][6]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][6]~q\,
	datac => \data_ram_i|rMEM[4][6]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~169_combout\);

-- Location: LCCOMB_X27_Y13_N30
\cpu_top_i|muxa_i|oQ[6]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~170_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~169_combout\ & ((\data_ram_i|rMEM[7][6]~q\))) # (!\cpu_top_i|muxa_i|oQ[6]~169_combout\ & (\data_ram_i|rMEM[6][6]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][6]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[7][6]~q\,
	datad => \cpu_top_i|muxa_i|oQ[6]~169_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~170_combout\);

-- Location: LCCOMB_X27_Y12_N28
\cpu_top_i|muxa_i|oQ[6]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~173_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~170_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[6]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[6]~172_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~170_combout\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~173_combout\);

-- Location: LCCOMB_X27_Y12_N2
\cpu_top_i|muxa_i|oQ[6]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~176_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~173_combout\ & (\cpu_top_i|muxa_i|oQ[6]~175_combout\)) # (!\cpu_top_i|muxa_i|oQ[6]~173_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~168_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[6]~175_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~168_combout\,
	datad => \cpu_top_i|muxa_i|oQ[6]~173_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~176_combout\);

-- Location: LCCOMB_X27_Y12_N16
\cpu_top_i|muxa_i|oQ[6]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~177_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~176_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(6),
	datad => \cpu_top_i|muxa_i|oQ[6]~176_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~177_combout\);

-- Location: LCCOMB_X27_Y15_N4
\cpu_top_i|muxa_i|oQ[6]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~188_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~177_combout\ & (\cpu_top_i|muxa_i|oQ[6]~187_combout\)) # (!\cpu_top_i|muxa_i|oQ[6]~177_combout\ & ((\cpu_top_i|r3_i|sREG\(6)))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (((\cpu_top_i|muxa_i|oQ[6]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[6]~187_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datac => \cpu_top_i|r3_i|sREG\(6),
	datad => \cpu_top_i|muxa_i|oQ[6]~177_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~188_combout\);

-- Location: LCCOMB_X30_Y15_N28
\cpu_top_i|muxa_i|oQ[6]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~190_combout\ = (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~189_combout\ & (\cpu_top_i|r2_i|sREG\(6))) # (!\cpu_top_i|muxa_i|oQ[6]~189_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~188_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|muxa_i|oQ[6]~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datab => \cpu_top_i|muxa_i|oQ[6]~189_combout\,
	datac => \cpu_top_i|r2_i|sREG\(6),
	datad => \cpu_top_i|muxa_i|oQ[6]~188_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~190_combout\);

-- Location: LCCOMB_X30_Y15_N2
\cpu_top_i|muxa_i|oQ[6]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~191_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(6))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~190_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(6),
	datad => \cpu_top_i|muxa_i|oQ[6]~190_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~191_combout\);

-- Location: LCCOMB_X30_Y15_N22
\cpu_top_i|muxa_i|oQ[6]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[6]~192_combout\ = (\cpu_top_i|muxa_i|oQ[6]~191_combout\) # ((\cpu_top_i|r5_i|sREG\(6) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|r5_i|sREG\(6),
	datac => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[6]~191_combout\,
	combout => \cpu_top_i|muxa_i|oQ[6]~192_combout\);

-- Location: FF_X32_Y14_N9
\cpu_top_i|r6_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(6));

-- Location: LCCOMB_X27_Y12_N30
\cpu_top_i|mubx_i|oQ[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[6]~30_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & (\cpu_top_i|r6_i|sREG\(6))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- ((\cpu_top_i|r4_i|sREG\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r6_i|sREG\(6),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r4_i|sREG\(6),
	combout => \cpu_top_i|mubx_i|oQ[6]~30_combout\);

-- Location: LCCOMB_X29_Y15_N18
\cpu_top_i|mubx_i|oQ[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[6]~31_combout\ = (\cpu_top_i|mubx_i|oQ[6]~30_combout\ & ((\cpu_top_i|r7_i|sREG\(6)) # ((!\instr_rom_i|oQ[0]~41_combout\)))) # (!\cpu_top_i|mubx_i|oQ[6]~30_combout\ & (((\cpu_top_i|r5_i|sREG\(6) & \instr_rom_i|oQ[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[6]~30_combout\,
	datab => \cpu_top_i|r7_i|sREG\(6),
	datac => \cpu_top_i|r5_i|sREG\(6),
	datad => \instr_rom_i|oQ[0]~41_combout\,
	combout => \cpu_top_i|mubx_i|oQ[6]~31_combout\);

-- Location: LCCOMB_X26_Y15_N22
\cpu_top_i|alu_i|oC[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[6]~24_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[6]~31_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[6]~33_combout\,
	datad => \cpu_top_i|mubx_i|oQ[6]~31_combout\,
	combout => \cpu_top_i|alu_i|oC[6]~24_combout\);

-- Location: FF_X32_Y14_N23
\cpu_top_i|r6_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(5));

-- Location: FF_X27_Y12_N23
\cpu_top_i|r4_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(5));

-- Location: LCCOMB_X28_Y14_N0
\cpu_top_i|mubx_i|oQ[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[5]~25_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|r6_i|sREG\(5)) # ((\instr_rom_i|oQ[0]~41_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & (((!\instr_rom_i|oQ[0]~41_combout\ & \cpu_top_i|r4_i|sREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r6_i|sREG\(5),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \instr_rom_i|oQ[0]~41_combout\,
	datad => \cpu_top_i|r4_i|sREG\(5),
	combout => \cpu_top_i|mubx_i|oQ[5]~25_combout\);

-- Location: FF_X29_Y15_N9
\cpu_top_i|r7_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(5));

-- Location: LCCOMB_X29_Y15_N2
\cpu_top_i|mubx_i|oQ[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[5]~26_combout\ = (\cpu_top_i|mubx_i|oQ[5]~25_combout\ & ((\cpu_top_i|r7_i|sREG\(5)) # ((!\instr_rom_i|oQ[0]~41_combout\)))) # (!\cpu_top_i|mubx_i|oQ[5]~25_combout\ & (((\cpu_top_i|r5_i|sREG\(5) & \instr_rom_i|oQ[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[5]~25_combout\,
	datab => \cpu_top_i|r7_i|sREG\(5),
	datac => \cpu_top_i|r5_i|sREG\(5),
	datad => \instr_rom_i|oQ[0]~41_combout\,
	combout => \cpu_top_i|mubx_i|oQ[5]~26_combout\);

-- Location: FF_X28_Y16_N31
\cpu_top_i|r0_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(5));

-- Location: FF_X31_Y15_N11
\cpu_top_i|r1_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(5));

-- Location: LCCOMB_X28_Y16_N30
\cpu_top_i|mubx_i|oQ[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[5]~27_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(5)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(5),
	datad => \cpu_top_i|r1_i|sREG\(5),
	combout => \cpu_top_i|mubx_i|oQ[5]~27_combout\);

-- Location: LCCOMB_X27_Y14_N16
\cpu_top_i|r3_i|sREG[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|r3_i|sREG[5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \cpu_top_i|r3_i|sREG[5]~feeder_combout\);

-- Location: FF_X27_Y14_N17
\cpu_top_i|r3_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|r3_i|sREG[5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(5));

-- Location: FF_X28_Y16_N1
\cpu_top_i|r2_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(5));

-- Location: LCCOMB_X28_Y16_N0
\cpu_top_i|mubx_i|oQ[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[5]~28_combout\ = (\cpu_top_i|mubx_i|oQ[5]~27_combout\ & ((\cpu_top_i|r3_i|sREG\(5)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[5]~27_combout\ & (((\cpu_top_i|r2_i|sREG\(5) & \instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[5]~27_combout\,
	datab => \cpu_top_i|r3_i|sREG\(5),
	datac => \cpu_top_i|r2_i|sREG\(5),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[5]~28_combout\);

-- Location: LCCOMB_X26_Y15_N24
\cpu_top_i|alu_i|oC[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[5]~21_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[5]~26_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[5]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[5]~26_combout\,
	datad => \cpu_top_i|mubx_i|oQ[5]~28_combout\,
	combout => \cpu_top_i|alu_i|oC[5]~21_combout\);

-- Location: LCCOMB_X26_Y15_N2
\cpu_top_i|mubx_i|oQ[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[5]~29_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[5]~26_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[5]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[5]~26_combout\,
	datad => \cpu_top_i|mubx_i|oQ[5]~28_combout\,
	combout => \cpu_top_i|mubx_i|oQ[5]~29_combout\);

-- Location: LCCOMB_X26_Y15_N12
\cpu_top_i|alu_i|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~17_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[5]~29_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[5]~29_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \cpu_top_i|mubx_i|oQ[5]~29_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~17_combout\);

-- Location: LCCOMB_X31_Y15_N26
\cpu_top_i|alu_i|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~18_combout\ = ((\cpu_top_i|muxa_i|oQ[5]~166_combout\ $ (\cpu_top_i|alu_i|Add1~17_combout\ $ (!\cpu_top_i|alu_i|Add1~16\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~19\ = CARRY((\cpu_top_i|muxa_i|oQ[5]~166_combout\ & ((\cpu_top_i|alu_i|Add1~17_combout\) # (!\cpu_top_i|alu_i|Add1~16\))) # (!\cpu_top_i|muxa_i|oQ[5]~166_combout\ & (\cpu_top_i|alu_i|Add1~17_combout\ & !\cpu_top_i|alu_i|Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[5]~166_combout\,
	datab => \cpu_top_i|alu_i|Add1~17_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~16\,
	combout => \cpu_top_i|alu_i|Add1~18_combout\,
	cout => \cpu_top_i|alu_i|Add1~19\);

-- Location: LCCOMB_X31_Y15_N8
\cpu_top_i|alu_i|oC[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[5]~22_combout\ = (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~18_combout\) # ((\cpu_top_i|alu_i|oC[5]~21_combout\ & \cpu_top_i|muxa_i|oQ[5]~166_combout\)))) # (!\cpu_top_i|alu_i|oC[0]~7_combout\ & 
-- (\cpu_top_i|alu_i|oC[5]~21_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datab => \cpu_top_i|alu_i|oC[5]~21_combout\,
	datac => \cpu_top_i|alu_i|Add1~18_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~166_combout\,
	combout => \cpu_top_i|alu_i|oC[5]~22_combout\);

-- Location: LCCOMB_X32_Y14_N22
\cpu_top_i|alu_i|oC[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[5]~23_combout\ = (\cpu_top_i|alu_i|oC[5]~22_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[5]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|muxa_i|oQ[5]~166_combout\,
	datad => \cpu_top_i|alu_i|oC[5]~22_combout\,
	combout => \cpu_top_i|alu_i|oC[5]~23_combout\);

-- Location: FF_X29_Y15_N3
\cpu_top_i|r5_i|sREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(5));

-- Location: LCCOMB_X27_Y12_N22
\cpu_top_i|muxa_i|oQ[5]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~151_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\) # ((\cpu_top_i|r3_i|sREG\(5))))) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & 
-- (\cpu_top_i|r4_i|sREG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(5),
	datad => \cpu_top_i|r3_i|sREG\(5),
	combout => \cpu_top_i|muxa_i|oQ[5]~151_combout\);

-- Location: FF_X29_Y10_N3
\data_ram_i|rMEM[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][5]~q\);

-- Location: FF_X29_Y10_N5
\data_ram_i|rMEM[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][5]~q\);

-- Location: FF_X30_Y10_N17
\data_ram_i|rMEM[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][5]~q\);

-- Location: LCCOMB_X33_Y10_N12
\data_ram_i|rMEM[10][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[10][5]~feeder_combout\);

-- Location: FF_X33_Y10_N13
\data_ram_i|rMEM[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][5]~q\);

-- Location: LCCOMB_X30_Y10_N16
\cpu_top_i|muxa_i|oQ[5]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~141_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[10][5]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[8][5]~q\,
	datad => \data_ram_i|rMEM[10][5]~q\,
	combout => \cpu_top_i|muxa_i|oQ[5]~141_combout\);

-- Location: LCCOMB_X29_Y10_N4
\cpu_top_i|muxa_i|oQ[5]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~142_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~141_combout\ & (\data_ram_i|rMEM[14][5]~q\)) # (!\cpu_top_i|muxa_i|oQ[5]~141_combout\ & ((\data_ram_i|rMEM[12][5]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[14][5]~q\,
	datac => \data_ram_i|rMEM[12][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~141_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~142_combout\);

-- Location: LCCOMB_X27_Y16_N26
\data_ram_i|rMEM[4][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[4][5]~feeder_combout\);

-- Location: FF_X27_Y16_N27
\data_ram_i|rMEM[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][5]~q\);

-- Location: FF_X24_Y12_N17
\data_ram_i|rMEM[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][5]~q\);

-- Location: FF_X28_Y15_N1
\data_ram_i|rMEM[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][5]~q\);

-- Location: FF_X24_Y12_N19
\data_ram_i|rMEM[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][5]~q\);

-- Location: LCCOMB_X24_Y12_N18
\cpu_top_i|muxa_i|oQ[5]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~145_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[2][5]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[2][5]~q\,
	datac => \data_ram_i|rMEM[0][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~145_combout\);

-- Location: LCCOMB_X24_Y12_N16
\cpu_top_i|muxa_i|oQ[5]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~146_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~145_combout\ & ((\data_ram_i|rMEM[6][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~145_combout\ & (\data_ram_i|rMEM[4][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[4][5]~q\,
	datac => \data_ram_i|rMEM[6][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~145_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~146_combout\);

-- Location: LCCOMB_X33_Y15_N24
\data_ram_i|rMEM[5][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[5][5]~feeder_combout\);

-- Location: FF_X33_Y15_N25
\data_ram_i|rMEM[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][5]~q\);

-- Location: FF_X28_Y15_N15
\data_ram_i|rMEM[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][5]~q\);

-- Location: LCCOMB_X35_Y13_N26
\data_ram_i|rMEM[3][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[3][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[3][5]~feeder_combout\);

-- Location: FF_X35_Y13_N27
\data_ram_i|rMEM[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[3][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][5]~q\);

-- Location: FF_X33_Y15_N19
\data_ram_i|rMEM[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][5]~q\);

-- Location: LCCOMB_X33_Y15_N18
\cpu_top_i|muxa_i|oQ[5]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~143_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[3][5]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[1][5]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[3][5]~q\,
	datac => \data_ram_i|rMEM[1][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~143_combout\);

-- Location: LCCOMB_X28_Y15_N14
\cpu_top_i|muxa_i|oQ[5]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~144_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~143_combout\ & ((\data_ram_i|rMEM[7][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~143_combout\ & (\data_ram_i|rMEM[5][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[5][5]~q\,
	datac => \data_ram_i|rMEM[7][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~143_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~144_combout\);

-- Location: LCCOMB_X29_Y12_N4
\cpu_top_i|muxa_i|oQ[5]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~147_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # (\cpu_top_i|muxa_i|oQ[5]~144_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[5]~146_combout\ & 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[5]~146_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~144_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~147_combout\);

-- Location: LCCOMB_X36_Y13_N26
\data_ram_i|rMEM[13][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[13][5]~feeder_combout\);

-- Location: FF_X36_Y13_N27
\data_ram_i|rMEM[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][5]~q\);

-- Location: FF_X29_Y13_N21
\data_ram_i|rMEM[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][5]~q\);

-- Location: FF_X35_Y12_N11
\data_ram_i|rMEM[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][5]~q\);

-- Location: FF_X36_Y12_N1
\data_ram_i|rMEM[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][5]~q\);

-- Location: LCCOMB_X36_Y12_N0
\cpu_top_i|muxa_i|oQ[5]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~148_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[11][5]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[9][5]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[11][5]~q\,
	datac => \data_ram_i|rMEM[9][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~148_combout\);

-- Location: LCCOMB_X29_Y13_N20
\cpu_top_i|muxa_i|oQ[5]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~149_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~148_combout\ & ((\data_ram_i|rMEM[15][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~148_combout\ & (\data_ram_i|rMEM[13][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[13][5]~q\,
	datac => \data_ram_i|rMEM[15][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~148_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~149_combout\);

-- Location: LCCOMB_X29_Y12_N14
\cpu_top_i|muxa_i|oQ[5]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~150_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~147_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~149_combout\))) # (!\cpu_top_i|muxa_i|oQ[5]~147_combout\ & (\cpu_top_i|muxa_i|oQ[5]~142_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[5]~142_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[5]~147_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~149_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~150_combout\);

-- Location: FF_X30_Y16_N11
\data_ram_i|rMEM[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][5]~q\);

-- Location: FF_X30_Y16_N21
\data_ram_i|rMEM[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][5]~q\);

-- Location: LCCOMB_X31_Y13_N12
\data_ram_i|rMEM[28][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[28][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[28][5]~feeder_combout\);

-- Location: FF_X31_Y13_N13
\data_ram_i|rMEM[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[28][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][5]~q\);

-- Location: FF_X31_Y13_N3
\data_ram_i|rMEM[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][5]~q\);

-- Location: LCCOMB_X31_Y13_N2
\cpu_top_i|muxa_i|oQ[5]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~152_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[28][5]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[24][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[28][5]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[24][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~152_combout\);

-- Location: LCCOMB_X30_Y16_N20
\cpu_top_i|muxa_i|oQ[5]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~153_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~152_combout\ & ((\data_ram_i|rMEM[29][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~152_combout\ & (\data_ram_i|rMEM[25][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[25][5]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[29][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~152_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~153_combout\);

-- Location: LCCOMB_X30_Y11_N4
\data_ram_i|rMEM[27][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[27][5]~feeder_combout\);

-- Location: FF_X30_Y11_N5
\data_ram_i|rMEM[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][5]~q\);

-- Location: FF_X31_Y11_N1
\data_ram_i|rMEM[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][5]~q\);

-- Location: FF_X31_Y11_N7
\data_ram_i|rMEM[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][5]~q\);

-- Location: LCCOMB_X30_Y11_N18
\data_ram_i|rMEM[30][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[30][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[30][5]~feeder_combout\);

-- Location: FF_X30_Y11_N19
\data_ram_i|rMEM[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[30][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][5]~q\);

-- Location: LCCOMB_X31_Y11_N6
\cpu_top_i|muxa_i|oQ[5]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~159_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\) # ((\data_ram_i|rMEM[30][5]~q\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- (\data_ram_i|rMEM[26][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[26][5]~q\,
	datad => \data_ram_i|rMEM[30][5]~q\,
	combout => \cpu_top_i|muxa_i|oQ[5]~159_combout\);

-- Location: LCCOMB_X31_Y11_N0
\cpu_top_i|muxa_i|oQ[5]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~160_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~159_combout\ & ((\data_ram_i|rMEM[31][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~159_combout\ & (\data_ram_i|rMEM[27][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][5]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[31][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~159_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~160_combout\);

-- Location: FF_X36_Y14_N15
\data_ram_i|rMEM[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][5]~q\);

-- Location: FF_X36_Y14_N29
\data_ram_i|rMEM[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][5]~q\);

-- Location: LCCOMB_X35_Y14_N30
\data_ram_i|rMEM[20][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[20][5]~feeder_combout\);

-- Location: FF_X35_Y14_N31
\data_ram_i|rMEM[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][5]~q\);

-- Location: FF_X33_Y12_N3
\data_ram_i|rMEM[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][5]~q\);

-- Location: LCCOMB_X33_Y12_N2
\cpu_top_i|muxa_i|oQ[5]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~156_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[20][5]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[16][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[20][5]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[16][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~156_combout\);

-- Location: LCCOMB_X36_Y14_N28
\cpu_top_i|muxa_i|oQ[5]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~157_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~156_combout\ & ((\data_ram_i|rMEM[21][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~156_combout\ & (\data_ram_i|rMEM[17][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[17][5]~q\,
	datac => \data_ram_i|rMEM[21][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~156_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~157_combout\);

-- Location: FF_X33_Y13_N19
\data_ram_i|rMEM[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][5]~q\);

-- Location: FF_X33_Y16_N21
\data_ram_i|rMEM[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][5]~q\);

-- Location: LCCOMB_X32_Y11_N28
\data_ram_i|rMEM[22][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][5]~feeder_combout\ = \cpu_top_i|alu_i|oC[5]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[5]~23_combout\,
	combout => \data_ram_i|rMEM[22][5]~feeder_combout\);

-- Location: FF_X32_Y11_N29
\data_ram_i|rMEM[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][5]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][5]~q\);

-- Location: FF_X32_Y11_N15
\data_ram_i|rMEM[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[5]~23_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][5]~q\);

-- Location: LCCOMB_X32_Y11_N14
\cpu_top_i|muxa_i|oQ[5]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~154_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\data_ram_i|rMEM[22][5]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[22][5]~q\,
	datac => \data_ram_i|rMEM[18][5]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~154_combout\);

-- Location: LCCOMB_X33_Y16_N20
\cpu_top_i|muxa_i|oQ[5]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~155_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~154_combout\ & ((\data_ram_i|rMEM[23][5]~q\))) # (!\cpu_top_i|muxa_i|oQ[5]~154_combout\ & (\data_ram_i|rMEM[19][5]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[19][5]~q\,
	datac => \data_ram_i|rMEM[23][5]~q\,
	datad => \cpu_top_i|muxa_i|oQ[5]~154_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~155_combout\);

-- Location: LCCOMB_X29_Y12_N20
\cpu_top_i|muxa_i|oQ[5]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~158_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[5]~155_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[5]~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[5]~157_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~155_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~158_combout\);

-- Location: LCCOMB_X29_Y12_N10
\cpu_top_i|muxa_i|oQ[5]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~161_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~158_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~160_combout\))) # (!\cpu_top_i|muxa_i|oQ[5]~158_combout\ & (\cpu_top_i|muxa_i|oQ[5]~153_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[5]~153_combout\,
	datab => \cpu_top_i|muxa_i|oQ[5]~160_combout\,
	datac => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~158_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~161_combout\);

-- Location: LCCOMB_X29_Y12_N16
\cpu_top_i|muxa_i|oQ[5]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~162_combout\ = (\cpu_top_i|muxa_i|oQ[5]~151_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~161_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\))) # (!\cpu_top_i|muxa_i|oQ[5]~151_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[5]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[5]~151_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|muxa_i|oQ[5]~150_combout\,
	datad => \cpu_top_i|muxa_i|oQ[5]~161_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~162_combout\);

-- Location: LCCOMB_X29_Y15_N8
\cpu_top_i|muxa_i|oQ[5]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~163_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~162_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(5),
	datad => \cpu_top_i|muxa_i|oQ[5]~162_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~163_combout\);

-- Location: LCCOMB_X31_Y15_N12
\cpu_top_i|muxa_i|oQ[5]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~164_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~163_combout\ & (\cpu_top_i|r2_i|sREG\(5))) # (!\cpu_top_i|muxa_i|oQ[5]~163_combout\ & ((\cpu_top_i|r0_i|sREG\(5)))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[5]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r2_i|sREG\(5),
	datac => \cpu_top_i|r0_i|sREG\(5),
	datad => \cpu_top_i|muxa_i|oQ[5]~163_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~164_combout\);

-- Location: LCCOMB_X31_Y15_N10
\cpu_top_i|muxa_i|oQ[5]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~165_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(5))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[5]~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datac => \cpu_top_i|r1_i|sREG\(5),
	datad => \cpu_top_i|muxa_i|oQ[5]~164_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~165_combout\);

-- Location: LCCOMB_X31_Y15_N6
\cpu_top_i|muxa_i|oQ[5]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[5]~166_combout\ = (\cpu_top_i|muxa_i|oQ[5]~165_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(5),
	datad => \cpu_top_i|muxa_i|oQ[5]~165_combout\,
	combout => \cpu_top_i|muxa_i|oQ[5]~166_combout\);

-- Location: LCCOMB_X31_Y15_N28
\cpu_top_i|alu_i|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~21_combout\ = (\cpu_top_i|alu_i|Add1~20_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~192_combout\ & (\cpu_top_i|alu_i|Add1~19\ & VCC)) # (!\cpu_top_i|muxa_i|oQ[6]~192_combout\ & (!\cpu_top_i|alu_i|Add1~19\)))) # 
-- (!\cpu_top_i|alu_i|Add1~20_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~192_combout\ & (!\cpu_top_i|alu_i|Add1~19\)) # (!\cpu_top_i|muxa_i|oQ[6]~192_combout\ & ((\cpu_top_i|alu_i|Add1~19\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~22\ = CARRY((\cpu_top_i|alu_i|Add1~20_combout\ & (!\cpu_top_i|muxa_i|oQ[6]~192_combout\ & !\cpu_top_i|alu_i|Add1~19\)) # (!\cpu_top_i|alu_i|Add1~20_combout\ & ((!\cpu_top_i|alu_i|Add1~19\) # (!\cpu_top_i|muxa_i|oQ[6]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~20_combout\,
	datab => \cpu_top_i|muxa_i|oQ[6]~192_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~19\,
	combout => \cpu_top_i|alu_i|Add1~21_combout\,
	cout => \cpu_top_i|alu_i|Add1~22\);

-- Location: LCCOMB_X32_Y14_N10
\cpu_top_i|alu_i|oC[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[6]~25_combout\ = (\cpu_top_i|alu_i|oC[6]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[6]~192_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~21_combout\)))) # (!\cpu_top_i|alu_i|oC[6]~24_combout\ & 
-- (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[6]~24_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~192_combout\,
	datad => \cpu_top_i|alu_i|Add1~21_combout\,
	combout => \cpu_top_i|alu_i|oC[6]~25_combout\);

-- Location: LCCOMB_X32_Y14_N8
\cpu_top_i|alu_i|oC[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[6]~26_combout\ = (\cpu_top_i|alu_i|oC[6]~25_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[6]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|muxa_i|oQ[6]~192_combout\,
	datad => \cpu_top_i|alu_i|oC[6]~25_combout\,
	combout => \cpu_top_i|alu_i|oC[6]~26_combout\);

-- Location: FF_X30_Y15_N29
\cpu_top_i|r2_i|sREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[6]~26_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(6));

-- Location: LCCOMB_X28_Y16_N6
\cpu_top_i|mubx_i|oQ[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[6]~32_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(6)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(6) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(6),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(6),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[6]~32_combout\);

-- Location: LCCOMB_X27_Y15_N20
\cpu_top_i|mubx_i|oQ[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[6]~33_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[6]~32_combout\ & ((\cpu_top_i|r3_i|sREG\(6)))) # (!\cpu_top_i|mubx_i|oQ[6]~32_combout\ & (\cpu_top_i|r2_i|sREG\(6))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(6),
	datab => \cpu_top_i|r3_i|sREG\(6),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|mubx_i|oQ[6]~32_combout\,
	combout => \cpu_top_i|mubx_i|oQ[6]~33_combout\);

-- Location: LCCOMB_X26_Y15_N0
\cpu_top_i|mubx_i|oQ[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[6]~34_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[6]~31_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[6]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[6]~33_combout\,
	datad => \cpu_top_i|mubx_i|oQ[6]~31_combout\,
	combout => \cpu_top_i|mubx_i|oQ[6]~34_combout\);

-- Location: LCCOMB_X26_Y15_N10
\cpu_top_i|alu_i|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~20_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[6]~34_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[6]~34_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \cpu_top_i|mubx_i|oQ[6]~34_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~20_combout\);

-- Location: LCCOMB_X31_Y15_N30
\cpu_top_i|alu_i|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~24_combout\ = ((\cpu_top_i|muxa_i|oQ[7]~218_combout\ $ (\cpu_top_i|alu_i|Add1~23_combout\ $ (!\cpu_top_i|alu_i|Add1~22\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~25\ = CARRY((\cpu_top_i|muxa_i|oQ[7]~218_combout\ & ((\cpu_top_i|alu_i|Add1~23_combout\) # (!\cpu_top_i|alu_i|Add1~22\))) # (!\cpu_top_i|muxa_i|oQ[7]~218_combout\ & (\cpu_top_i|alu_i|Add1~23_combout\ & !\cpu_top_i|alu_i|Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~218_combout\,
	datab => \cpu_top_i|alu_i|Add1~23_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~22\,
	combout => \cpu_top_i|alu_i|Add1~24_combout\,
	cout => \cpu_top_i|alu_i|Add1~25\);

-- Location: LCCOMB_X32_Y14_N6
\cpu_top_i|alu_i|oC[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[7]~28_combout\ = (\cpu_top_i|alu_i|oC[7]~27_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~218_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~24_combout\)))) # (!\cpu_top_i|alu_i|oC[7]~27_combout\ & 
-- (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[7]~27_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~218_combout\,
	datad => \cpu_top_i|alu_i|Add1~24_combout\,
	combout => \cpu_top_i|alu_i|oC[7]~28_combout\);

-- Location: LCCOMB_X32_Y14_N24
\cpu_top_i|alu_i|oC[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[7]~29_combout\ = (\cpu_top_i|alu_i|oC[7]~28_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[7]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~218_combout\,
	datad => \cpu_top_i|alu_i|oC[7]~28_combout\,
	combout => \cpu_top_i|alu_i|oC[7]~29_combout\);

-- Location: FF_X29_Y15_N23
\cpu_top_i|r5_i|sREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(7));

-- Location: LCCOMB_X28_Y13_N20
\cpu_top_i|muxa_i|oQ[7]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~203_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|r3_i|sREG\(7))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|r4_i|sREG\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(7),
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(7),
	datad => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~203_combout\);

-- Location: FF_X35_Y12_N23
\data_ram_i|rMEM[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][7]~q\);

-- Location: FF_X35_Y12_N17
\data_ram_i|rMEM[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][7]~q\);

-- Location: LCCOMB_X36_Y12_N8
\data_ram_i|rMEM[9][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[9][7]~feeder_combout\);

-- Location: FF_X36_Y12_N9
\data_ram_i|rMEM[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][7]~q\);

-- Location: FF_X34_Y12_N13
\data_ram_i|rMEM[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][7]~q\);

-- Location: LCCOMB_X34_Y12_N12
\cpu_top_i|muxa_i|oQ[7]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~193_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][7]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[9][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~193_combout\);

-- Location: LCCOMB_X35_Y12_N16
\cpu_top_i|muxa_i|oQ[7]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~194_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~193_combout\ & (\data_ram_i|rMEM[11][7]~q\)) # (!\cpu_top_i|muxa_i|oQ[7]~193_combout\ & ((\data_ram_i|rMEM[10][7]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[11][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[10][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~193_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~194_combout\);

-- Location: LCCOMB_X26_Y14_N12
\data_ram_i|rMEM[13][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[13][7]~feeder_combout\);

-- Location: FF_X26_Y14_N13
\data_ram_i|rMEM[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][7]~q\);

-- Location: FF_X26_Y14_N27
\data_ram_i|rMEM[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][7]~q\);

-- Location: LCCOMB_X29_Y10_N0
\data_ram_i|rMEM[14][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[14][7]~feeder_combout\);

-- Location: FF_X29_Y10_N1
\data_ram_i|rMEM[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][7]~q\);

-- Location: FF_X29_Y11_N5
\data_ram_i|rMEM[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][7]~q\);

-- Location: LCCOMB_X29_Y11_N4
\cpu_top_i|muxa_i|oQ[7]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~200_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][7]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[12][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][7]~q\,
	datac => \data_ram_i|rMEM[12][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~200_combout\);

-- Location: LCCOMB_X26_Y14_N26
\cpu_top_i|muxa_i|oQ[7]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~201_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~200_combout\ & ((\data_ram_i|rMEM[15][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~200_combout\ & (\data_ram_i|rMEM[13][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[15][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~200_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~201_combout\);

-- Location: FF_X26_Y12_N9
\data_ram_i|rMEM[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][7]~q\);

-- Location: FF_X26_Y12_N31
\data_ram_i|rMEM[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][7]~q\);

-- Location: LCCOMB_X33_Y15_N2
\data_ram_i|rMEM[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[1][7]~feeder_combout\);

-- Location: FF_X33_Y15_N3
\data_ram_i|rMEM[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][7]~q\);

-- Location: FF_X25_Y12_N25
\data_ram_i|rMEM[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][7]~q\);

-- Location: LCCOMB_X25_Y12_N24
\cpu_top_i|muxa_i|oQ[7]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~197_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[1][7]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[0][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[0][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~197_combout\);

-- Location: LCCOMB_X26_Y12_N30
\cpu_top_i|muxa_i|oQ[7]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~198_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~197_combout\ & ((\data_ram_i|rMEM[3][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~197_combout\ & (\data_ram_i|rMEM[2][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~197_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~198_combout\);

-- Location: FF_X27_Y13_N13
\data_ram_i|rMEM[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][7]~q\);

-- Location: FF_X27_Y13_N19
\data_ram_i|rMEM[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][7]~q\);

-- Location: FF_X27_Y16_N31
\data_ram_i|rMEM[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][7]~q\);

-- Location: FF_X27_Y16_N29
\data_ram_i|rMEM[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][7]~q\);

-- Location: LCCOMB_X27_Y16_N28
\cpu_top_i|muxa_i|oQ[7]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~195_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[6][7]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[6][7]~q\,
	datac => \data_ram_i|rMEM[4][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~195_combout\);

-- Location: LCCOMB_X27_Y13_N18
\cpu_top_i|muxa_i|oQ[7]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~196_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~195_combout\ & ((\data_ram_i|rMEM[7][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~195_combout\ & (\data_ram_i|rMEM[5][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[5][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[7][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~195_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~196_combout\);

-- Location: LCCOMB_X26_Y12_N20
\cpu_top_i|muxa_i|oQ[7]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~199_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~196_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[7]~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~198_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~196_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~199_combout\);

-- Location: LCCOMB_X26_Y12_N14
\cpu_top_i|muxa_i|oQ[7]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~202_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~199_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~201_combout\))) # (!\cpu_top_i|muxa_i|oQ[7]~199_combout\ & (\cpu_top_i|muxa_i|oQ[7]~194_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~194_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~201_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~199_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~202_combout\);

-- Location: FF_X34_Y13_N29
\data_ram_i|rMEM[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][7]~q\);

-- Location: FF_X33_Y13_N23
\data_ram_i|rMEM[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][7]~q\);

-- Location: FF_X34_Y14_N9
\data_ram_i|rMEM[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][7]~q\);

-- Location: FF_X33_Y13_N13
\data_ram_i|rMEM[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][7]~q\);

-- Location: LCCOMB_X33_Y13_N12
\cpu_top_i|muxa_i|oQ[7]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~211_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][7]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~211_combout\);

-- Location: LCCOMB_X33_Y13_N22
\cpu_top_i|muxa_i|oQ[7]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~212_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~211_combout\ & ((\data_ram_i|rMEM[31][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~211_combout\ & (\data_ram_i|rMEM[27][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[31][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~211_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~212_combout\);

-- Location: FF_X31_Y11_N13
\data_ram_i|rMEM[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][7]~q\);

-- Location: FF_X32_Y13_N27
\data_ram_i|rMEM[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][7]~q\);

-- Location: FF_X34_Y14_N27
\data_ram_i|rMEM[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][7]~q\);

-- Location: FF_X32_Y13_N25
\data_ram_i|rMEM[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][7]~q\);

-- Location: LCCOMB_X32_Y13_N24
\cpu_top_i|muxa_i|oQ[7]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~204_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][7]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][7]~q\,
	datac => \data_ram_i|rMEM[18][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~204_combout\);

-- Location: LCCOMB_X32_Y13_N26
\cpu_top_i|muxa_i|oQ[7]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~205_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~204_combout\ & ((\data_ram_i|rMEM[30][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~204_combout\ & (\data_ram_i|rMEM[26][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[30][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~204_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~205_combout\);

-- Location: LCCOMB_X31_Y13_N0
\data_ram_i|rMEM[24][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[24][7]~feeder_combout\);

-- Location: FF_X31_Y13_N1
\data_ram_i|rMEM[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][7]~q\);

-- Location: FF_X31_Y13_N31
\data_ram_i|rMEM[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][7]~q\);

-- Location: LCCOMB_X34_Y11_N2
\data_ram_i|rMEM[20][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[20][7]~feeder_combout\);

-- Location: FF_X34_Y11_N3
\data_ram_i|rMEM[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][7]~q\);

-- Location: FF_X33_Y12_N31
\data_ram_i|rMEM[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][7]~q\);

-- Location: LCCOMB_X33_Y12_N30
\cpu_top_i|muxa_i|oQ[7]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~208_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][7]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][7]~q\,
	datac => \data_ram_i|rMEM[16][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~208_combout\);

-- Location: LCCOMB_X31_Y13_N30
\cpu_top_i|muxa_i|oQ[7]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~209_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~208_combout\ & ((\data_ram_i|rMEM[28][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~208_combout\ & (\data_ram_i|rMEM[24][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[24][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[28][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~208_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~209_combout\);

-- Location: FF_X32_Y16_N1
\data_ram_i|rMEM[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][7]~q\);

-- Location: FF_X32_Y16_N3
\data_ram_i|rMEM[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][7]~q\);

-- Location: LCCOMB_X36_Y14_N24
\data_ram_i|rMEM[21][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][7]~feeder_combout\ = \cpu_top_i|alu_i|oC[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[7]~29_combout\,
	combout => \data_ram_i|rMEM[21][7]~feeder_combout\);

-- Location: FF_X36_Y14_N25
\data_ram_i|rMEM[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][7]~q\);

-- Location: FF_X33_Y16_N5
\data_ram_i|rMEM[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[7]~29_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][7]~q\);

-- Location: LCCOMB_X33_Y16_N4
\cpu_top_i|muxa_i|oQ[7]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~206_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][7]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][7]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[21][7]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[17][7]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~206_combout\);

-- Location: LCCOMB_X32_Y16_N2
\cpu_top_i|muxa_i|oQ[7]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~207_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~206_combout\ & ((\data_ram_i|rMEM[29][7]~q\))) # (!\cpu_top_i|muxa_i|oQ[7]~206_combout\ & (\data_ram_i|rMEM[25][7]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][7]~q\,
	datac => \data_ram_i|rMEM[29][7]~q\,
	datad => \cpu_top_i|muxa_i|oQ[7]~206_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~207_combout\);

-- Location: LCCOMB_X29_Y12_N18
\cpu_top_i|muxa_i|oQ[7]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~210_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~207_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|muxa_i|oQ[7]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~209_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~207_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~210_combout\);

-- Location: LCCOMB_X29_Y12_N28
\cpu_top_i|muxa_i|oQ[7]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~213_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~210_combout\ & (\cpu_top_i|muxa_i|oQ[7]~212_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~210_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~205_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~212_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~205_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~210_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~213_combout\);

-- Location: LCCOMB_X29_Y12_N2
\cpu_top_i|muxa_i|oQ[7]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~214_combout\ = (\cpu_top_i|muxa_i|oQ[7]~203_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~213_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\))) # (!\cpu_top_i|muxa_i|oQ[7]~203_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[7]~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~203_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~202_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~213_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~214_combout\);

-- Location: LCCOMB_X29_Y15_N24
\cpu_top_i|muxa_i|oQ[7]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~215_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~214_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(7),
	datad => \cpu_top_i|muxa_i|oQ[7]~214_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~215_combout\);

-- Location: LCCOMB_X30_Y15_N6
\cpu_top_i|muxa_i|oQ[7]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~216_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~215_combout\ & ((\cpu_top_i|r2_i|sREG\(7)))) # (!\cpu_top_i|muxa_i|oQ[7]~215_combout\ & (\cpu_top_i|r0_i|sREG\(7))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r0_i|sREG\(7),
	datab => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datac => \cpu_top_i|r2_i|sREG\(7),
	datad => \cpu_top_i|muxa_i|oQ[7]~215_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~216_combout\);

-- Location: LCCOMB_X30_Y15_N24
\cpu_top_i|muxa_i|oQ[7]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~217_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(7))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(7),
	datad => \cpu_top_i|muxa_i|oQ[7]~216_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~217_combout\);

-- Location: LCCOMB_X30_Y15_N0
\cpu_top_i|muxa_i|oQ[7]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[7]~218_combout\ = (\cpu_top_i|muxa_i|oQ[7]~217_combout\) # ((\cpu_top_i|r5_i|sREG\(7) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(7),
	datac => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[7]~217_combout\,
	combout => \cpu_top_i|muxa_i|oQ[7]~218_combout\);

-- Location: LCCOMB_X31_Y14_N0
\cpu_top_i|alu_i|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~27_combout\ = (\cpu_top_i|muxa_i|oQ[8]~244_combout\ & ((\cpu_top_i|alu_i|Add1~26_combout\ & (\cpu_top_i|alu_i|Add1~25\ & VCC)) # (!\cpu_top_i|alu_i|Add1~26_combout\ & (!\cpu_top_i|alu_i|Add1~25\)))) # 
-- (!\cpu_top_i|muxa_i|oQ[8]~244_combout\ & ((\cpu_top_i|alu_i|Add1~26_combout\ & (!\cpu_top_i|alu_i|Add1~25\)) # (!\cpu_top_i|alu_i|Add1~26_combout\ & ((\cpu_top_i|alu_i|Add1~25\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~28\ = CARRY((\cpu_top_i|muxa_i|oQ[8]~244_combout\ & (!\cpu_top_i|alu_i|Add1~26_combout\ & !\cpu_top_i|alu_i|Add1~25\)) # (!\cpu_top_i|muxa_i|oQ[8]~244_combout\ & ((!\cpu_top_i|alu_i|Add1~25\) # (!\cpu_top_i|alu_i|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[8]~244_combout\,
	datab => \cpu_top_i|alu_i|Add1~26_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~25\,
	combout => \cpu_top_i|alu_i|Add1~27_combout\,
	cout => \cpu_top_i|alu_i|Add1~28\);

-- Location: LCCOMB_X32_Y14_N18
\cpu_top_i|alu_i|oC[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[8]~31_combout\ = (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~27_combout\) # ((\cpu_top_i|alu_i|oC[8]~30_combout\ & \cpu_top_i|muxa_i|oQ[8]~244_combout\)))) # (!\cpu_top_i|alu_i|oC[0]~7_combout\ & 
-- (\cpu_top_i|alu_i|oC[8]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datab => \cpu_top_i|alu_i|oC[8]~30_combout\,
	datac => \cpu_top_i|alu_i|Add1~27_combout\,
	datad => \cpu_top_i|muxa_i|oQ[8]~244_combout\,
	combout => \cpu_top_i|alu_i|oC[8]~31_combout\);

-- Location: LCCOMB_X32_Y14_N20
\cpu_top_i|alu_i|oC[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[8]~32_combout\ = (\cpu_top_i|alu_i|oC[8]~31_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[8]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|muxa_i|oQ[8]~244_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datad => \cpu_top_i|alu_i|oC[8]~31_combout\,
	combout => \cpu_top_i|alu_i|oC[8]~32_combout\);

-- Location: FF_X29_Y15_N31
\cpu_top_i|r5_i|sREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(8));

-- Location: LCCOMB_X28_Y14_N2
\cpu_top_i|muxa_i|oQ[8]~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~241_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|r0_i|sREG\(8)) # ((\cpu_top_i|muxa_i|oQ[7]~428_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|r7_i|sREG\(8) & 
-- !\cpu_top_i|muxa_i|oQ[7]~428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r0_i|sREG\(8),
	datac => \cpu_top_i|r7_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~241_combout\);

-- Location: FF_X29_Y13_N11
\data_ram_i|rMEM[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][8]~q\);

-- Location: FF_X29_Y13_N17
\data_ram_i|rMEM[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][8]~q\);

-- Location: LCCOMB_X26_Y14_N4
\data_ram_i|rMEM[13][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[13][8]~feeder_combout\);

-- Location: FF_X26_Y14_N5
\data_ram_i|rMEM[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][8]~q\);

-- Location: FF_X29_Y11_N27
\data_ram_i|rMEM[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][8]~q\);

-- Location: LCCOMB_X29_Y11_N26
\cpu_top_i|muxa_i|oQ[8]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~226_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[13][8]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[12][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[13][8]~q\,
	datac => \data_ram_i|rMEM[12][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~226_combout\);

-- Location: LCCOMB_X29_Y13_N16
\cpu_top_i|muxa_i|oQ[8]~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~227_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~226_combout\ & ((\data_ram_i|rMEM[15][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~226_combout\ & (\data_ram_i|rMEM[14][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[14][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[15][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~226_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~227_combout\);

-- Location: LCCOMB_X28_Y11_N26
\data_ram_i|rMEM[6][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[6][8]~feeder_combout\);

-- Location: FF_X28_Y11_N27
\data_ram_i|rMEM[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][8]~q\);

-- Location: FF_X27_Y13_N5
\data_ram_i|rMEM[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][8]~q\);

-- Location: FF_X33_Y15_N17
\data_ram_i|rMEM[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][8]~q\);

-- Location: FF_X27_Y16_N19
\data_ram_i|rMEM[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][8]~q\);

-- Location: LCCOMB_X27_Y16_N18
\cpu_top_i|muxa_i|oQ[8]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~221_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][8]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][8]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][8]~q\,
	datac => \data_ram_i|rMEM[4][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~221_combout\);

-- Location: LCCOMB_X27_Y13_N4
\cpu_top_i|muxa_i|oQ[8]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~222_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~221_combout\ & ((\data_ram_i|rMEM[7][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~221_combout\ & (\data_ram_i|rMEM[6][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[7][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~221_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~222_combout\);

-- Location: FF_X33_Y15_N11
\data_ram_i|rMEM[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][8]~q\);

-- Location: FF_X26_Y13_N31
\data_ram_i|rMEM[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][8]~q\);

-- Location: LCCOMB_X28_Y15_N26
\data_ram_i|rMEM[2][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[2][8]~feeder_combout\);

-- Location: FF_X28_Y15_N27
\data_ram_i|rMEM[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][8]~q\);

-- Location: FF_X25_Y12_N31
\data_ram_i|rMEM[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][8]~q\);

-- Location: LCCOMB_X25_Y12_N30
\cpu_top_i|muxa_i|oQ[8]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~223_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[2][8]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[2][8]~q\,
	datac => \data_ram_i|rMEM[0][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~223_combout\);

-- Location: LCCOMB_X26_Y13_N30
\cpu_top_i|muxa_i|oQ[8]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~224_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~223_combout\ & ((\data_ram_i|rMEM[3][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~223_combout\ & (\data_ram_i|rMEM[1][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[3][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~223_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~224_combout\);

-- Location: LCCOMB_X27_Y13_N26
\cpu_top_i|muxa_i|oQ[8]~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~225_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\cpu_top_i|mubx_i|oQ[2]~24_combout\)) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[8]~222_combout\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~224_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|muxa_i|oQ[8]~222_combout\,
	datad => \cpu_top_i|muxa_i|oQ[8]~224_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~225_combout\);

-- Location: LCCOMB_X36_Y12_N10
\data_ram_i|rMEM[9][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[9][8]~feeder_combout\);

-- Location: FF_X36_Y12_N11
\data_ram_i|rMEM[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][8]~q\);

-- Location: FF_X33_Y14_N11
\data_ram_i|rMEM[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][8]~q\);

-- Location: LCCOMB_X33_Y14_N28
\data_ram_i|rMEM[10][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[10][8]~feeder_combout\);

-- Location: FF_X33_Y14_N29
\data_ram_i|rMEM[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][8]~q\);

-- Location: FF_X34_Y12_N7
\data_ram_i|rMEM[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][8]~q\);

-- Location: LCCOMB_X34_Y12_N6
\cpu_top_i|muxa_i|oQ[8]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~219_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[10][8]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[8][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[10][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~219_combout\);

-- Location: LCCOMB_X33_Y14_N10
\cpu_top_i|muxa_i|oQ[8]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~220_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~219_combout\ & ((\data_ram_i|rMEM[11][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~219_combout\ & (\data_ram_i|rMEM[9][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][8]~q\,
	datac => \data_ram_i|rMEM[11][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~219_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~220_combout\);

-- Location: LCCOMB_X28_Y13_N6
\cpu_top_i|muxa_i|oQ[8]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~228_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~225_combout\ & (\cpu_top_i|muxa_i|oQ[8]~227_combout\)) # (!\cpu_top_i|muxa_i|oQ[8]~225_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~220_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[8]~227_combout\,
	datac => \cpu_top_i|muxa_i|oQ[8]~225_combout\,
	datad => \cpu_top_i|muxa_i|oQ[8]~220_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~228_combout\);

-- Location: LCCOMB_X28_Y13_N8
\cpu_top_i|muxa_i|oQ[8]~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~229_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~228_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[8]~228_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~229_combout\);

-- Location: LCCOMB_X32_Y16_N20
\data_ram_i|rMEM[25][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[25][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[25][8]~feeder_combout\);

-- Location: FF_X32_Y16_N21
\data_ram_i|rMEM[25][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[25][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][8]~q\);

-- Location: FF_X32_Y16_N23
\data_ram_i|rMEM[29][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][8]~q\);

-- Location: LCCOMB_X36_Y14_N6
\data_ram_i|rMEM[21][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[21][8]~feeder_combout\);

-- Location: FF_X36_Y14_N7
\data_ram_i|rMEM[21][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][8]~q\);

-- Location: FF_X33_Y16_N3
\data_ram_i|rMEM[17][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][8]~q\);

-- Location: LCCOMB_X33_Y16_N2
\cpu_top_i|muxa_i|oQ[8]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~230_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][8]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][8]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[21][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[17][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~230_combout\);

-- Location: LCCOMB_X32_Y16_N22
\cpu_top_i|muxa_i|oQ[8]~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~231_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~230_combout\ & ((\data_ram_i|rMEM[29][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~230_combout\ & (\data_ram_i|rMEM[25][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][8]~q\,
	datac => \data_ram_i|rMEM[29][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~230_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~231_combout\);

-- Location: LCCOMB_X34_Y13_N2
\data_ram_i|rMEM[27][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[27][8]~feeder_combout\);

-- Location: FF_X34_Y13_N3
\data_ram_i|rMEM[27][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][8]~q\);

-- Location: FF_X33_Y13_N31
\data_ram_i|rMEM[31][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][8]~q\);

-- Location: FF_X33_Y16_N9
\data_ram_i|rMEM[23][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][8]~q\);

-- Location: FF_X33_Y13_N17
\data_ram_i|rMEM[19][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][8]~q\);

-- Location: LCCOMB_X33_Y13_N16
\cpu_top_i|muxa_i|oQ[8]~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~237_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][8]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][8]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~237_combout\);

-- Location: LCCOMB_X33_Y13_N30
\cpu_top_i|muxa_i|oQ[8]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~238_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~237_combout\ & ((\data_ram_i|rMEM[31][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~237_combout\ & (\data_ram_i|rMEM[27][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[27][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[31][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~237_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~238_combout\);

-- Location: LCCOMB_X33_Y11_N16
\data_ram_i|rMEM[24][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[24][8]~feeder_combout\);

-- Location: FF_X33_Y11_N17
\data_ram_i|rMEM[24][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][8]~q\);

-- Location: FF_X27_Y15_N27
\data_ram_i|rMEM[28][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][8]~q\);

-- Location: LCCOMB_X35_Y14_N14
\data_ram_i|rMEM[20][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[20][8]~feeder_combout\);

-- Location: FF_X35_Y14_N15
\data_ram_i|rMEM[20][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][8]~q\);

-- Location: FF_X33_Y12_N17
\data_ram_i|rMEM[16][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][8]~q\);

-- Location: LCCOMB_X33_Y12_N16
\cpu_top_i|muxa_i|oQ[8]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~234_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][8]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][8]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][8]~q\,
	datac => \data_ram_i|rMEM[16][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~234_combout\);

-- Location: LCCOMB_X27_Y15_N26
\cpu_top_i|muxa_i|oQ[8]~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~235_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~234_combout\ & ((\data_ram_i|rMEM[28][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~234_combout\ & (\data_ram_i|rMEM[24][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][8]~q\,
	datac => \data_ram_i|rMEM[28][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~234_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~235_combout\);

-- Location: FF_X31_Y11_N19
\data_ram_i|rMEM[26][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][8]~q\);

-- Location: FF_X30_Y11_N15
\data_ram_i|rMEM[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][8]~q\);

-- Location: LCCOMB_X32_Y11_N0
\data_ram_i|rMEM[22][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][8]~feeder_combout\ = \cpu_top_i|alu_i|oC[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \data_ram_i|rMEM[22][8]~feeder_combout\);

-- Location: FF_X32_Y11_N1
\data_ram_i|rMEM[22][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][8]~q\);

-- Location: FF_X32_Y11_N27
\data_ram_i|rMEM[18][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[8]~32_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][8]~q\);

-- Location: LCCOMB_X32_Y11_N26
\cpu_top_i|muxa_i|oQ[8]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~232_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][8]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][8]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][8]~q\,
	datac => \data_ram_i|rMEM[18][8]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~232_combout\);

-- Location: LCCOMB_X30_Y11_N14
\cpu_top_i|muxa_i|oQ[8]~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~233_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~232_combout\ & ((\data_ram_i|rMEM[30][8]~q\))) # (!\cpu_top_i|muxa_i|oQ[8]~232_combout\ & (\data_ram_i|rMEM[26][8]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][8]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[30][8]~q\,
	datad => \cpu_top_i|muxa_i|oQ[8]~232_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~233_combout\);

-- Location: LCCOMB_X27_Y15_N12
\cpu_top_i|muxa_i|oQ[8]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~236_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\) # ((\cpu_top_i|muxa_i|oQ[8]~233_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[8]~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[8]~235_combout\,
	datad => \cpu_top_i|muxa_i|oQ[8]~233_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~236_combout\);

-- Location: LCCOMB_X27_Y15_N10
\cpu_top_i|muxa_i|oQ[8]~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~239_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~236_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~238_combout\))) # (!\cpu_top_i|muxa_i|oQ[8]~236_combout\ & (\cpu_top_i|muxa_i|oQ[8]~231_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[8]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[8]~231_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[8]~238_combout\,
	datad => \cpu_top_i|muxa_i|oQ[8]~236_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~239_combout\);

-- Location: LCCOMB_X27_Y15_N28
\cpu_top_i|muxa_i|oQ[8]~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~240_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~229_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~239_combout\))) # (!\cpu_top_i|muxa_i|oQ[8]~229_combout\ & (\cpu_top_i|r3_i|sREG\(8))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[8]~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[8]~229_combout\,
	datac => \cpu_top_i|r3_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[8]~239_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~240_combout\);

-- Location: LCCOMB_X28_Y14_N8
\cpu_top_i|muxa_i|oQ[8]~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~242_combout\ = (\cpu_top_i|muxa_i|oQ[8]~241_combout\ & (((\cpu_top_i|r2_i|sREG\(8))) # (!\cpu_top_i|muxa_i|oQ[7]~428_combout\))) # (!\cpu_top_i|muxa_i|oQ[8]~241_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[8]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[8]~241_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r2_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[8]~240_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~242_combout\);

-- Location: LCCOMB_X29_Y14_N16
\cpu_top_i|muxa_i|oQ[8]~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~243_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(8))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[8]~242_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[8]~242_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~243_combout\);

-- Location: LCCOMB_X29_Y14_N26
\cpu_top_i|muxa_i|oQ[8]~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[8]~244_combout\ = (\cpu_top_i|muxa_i|oQ[8]~243_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(8),
	datad => \cpu_top_i|muxa_i|oQ[8]~243_combout\,
	combout => \cpu_top_i|muxa_i|oQ[8]~244_combout\);

-- Location: LCCOMB_X31_Y14_N2
\cpu_top_i|alu_i|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~30_combout\ = ((\cpu_top_i|alu_i|Add1~29_combout\ $ (\cpu_top_i|muxa_i|oQ[9]~270_combout\ $ (!\cpu_top_i|alu_i|Add1~28\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~31\ = CARRY((\cpu_top_i|alu_i|Add1~29_combout\ & ((\cpu_top_i|muxa_i|oQ[9]~270_combout\) # (!\cpu_top_i|alu_i|Add1~28\))) # (!\cpu_top_i|alu_i|Add1~29_combout\ & (\cpu_top_i|muxa_i|oQ[9]~270_combout\ & !\cpu_top_i|alu_i|Add1~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~29_combout\,
	datab => \cpu_top_i|muxa_i|oQ[9]~270_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~28\,
	combout => \cpu_top_i|alu_i|Add1~30_combout\,
	cout => \cpu_top_i|alu_i|Add1~31\);

-- Location: LCCOMB_X32_Y14_N26
\cpu_top_i|alu_i|oC[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[9]~34_combout\ = (\cpu_top_i|muxa_i|oQ[9]~270_combout\ & ((\cpu_top_i|alu_i|oC[9]~33_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~30_combout\)))) # (!\cpu_top_i|muxa_i|oQ[9]~270_combout\ & 
-- (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[9]~270_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[9]~33_combout\,
	datad => \cpu_top_i|alu_i|Add1~30_combout\,
	combout => \cpu_top_i|alu_i|oC[9]~34_combout\);

-- Location: LCCOMB_X32_Y14_N0
\cpu_top_i|alu_i|oC[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[9]~35_combout\ = (\cpu_top_i|alu_i|oC[9]~34_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[9]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datac => \cpu_top_i|alu_i|oC[9]~34_combout\,
	datad => \cpu_top_i|muxa_i|oQ[9]~270_combout\,
	combout => \cpu_top_i|alu_i|oC[9]~35_combout\);

-- Location: FF_X29_Y15_N15
\cpu_top_i|r7_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(9));

-- Location: FF_X32_Y14_N1
\cpu_top_i|r6_i|sREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[9]~35_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(9));

-- Location: LCCOMB_X29_Y13_N6
\cpu_top_i|mubx_i|oQ[9]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[9]~45_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (((\cpu_top_i|r6_i|sREG\(9)) # (\instr_rom_i|oQ[0]~41_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & (\cpu_top_i|r4_i|sREG\(9) & ((!\instr_rom_i|oQ[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r4_i|sREG\(9),
	datab => \cpu_top_i|r6_i|sREG\(9),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \instr_rom_i|oQ[0]~41_combout\,
	combout => \cpu_top_i|mubx_i|oQ[9]~45_combout\);

-- Location: LCCOMB_X26_Y15_N4
\cpu_top_i|mubx_i|oQ[9]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[9]~46_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[9]~45_combout\ & (\cpu_top_i|r7_i|sREG\(9))) # (!\cpu_top_i|mubx_i|oQ[9]~45_combout\ & ((\cpu_top_i|r5_i|sREG\(9)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[9]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(9),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r5_i|sREG\(9),
	datad => \cpu_top_i|mubx_i|oQ[9]~45_combout\,
	combout => \cpu_top_i|mubx_i|oQ[9]~46_combout\);

-- Location: LCCOMB_X26_Y15_N16
\cpu_top_i|mubx_i|oQ[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[9]~49_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[9]~46_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[9]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[9]~46_combout\,
	datad => \cpu_top_i|mubx_i|oQ[9]~48_combout\,
	combout => \cpu_top_i|mubx_i|oQ[9]~49_combout\);

-- Location: LCCOMB_X26_Y15_N14
\cpu_top_i|alu_i|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~29_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[9]~49_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[9]~49_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \cpu_top_i|mubx_i|oQ[9]~49_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~29_combout\);

-- Location: LCCOMB_X31_Y14_N4
\cpu_top_i|alu_i|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~33_combout\ = (\cpu_top_i|muxa_i|oQ[10]~296_combout\ & ((\cpu_top_i|alu_i|Add1~32_combout\ & (\cpu_top_i|alu_i|Add1~31\ & VCC)) # (!\cpu_top_i|alu_i|Add1~32_combout\ & (!\cpu_top_i|alu_i|Add1~31\)))) # 
-- (!\cpu_top_i|muxa_i|oQ[10]~296_combout\ & ((\cpu_top_i|alu_i|Add1~32_combout\ & (!\cpu_top_i|alu_i|Add1~31\)) # (!\cpu_top_i|alu_i|Add1~32_combout\ & ((\cpu_top_i|alu_i|Add1~31\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~34\ = CARRY((\cpu_top_i|muxa_i|oQ[10]~296_combout\ & (!\cpu_top_i|alu_i|Add1~32_combout\ & !\cpu_top_i|alu_i|Add1~31\)) # (!\cpu_top_i|muxa_i|oQ[10]~296_combout\ & ((!\cpu_top_i|alu_i|Add1~31\) # 
-- (!\cpu_top_i|alu_i|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[10]~296_combout\,
	datab => \cpu_top_i|alu_i|Add1~32_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~31\,
	combout => \cpu_top_i|alu_i|Add1~33_combout\,
	cout => \cpu_top_i|alu_i|Add1~34\);

-- Location: LCCOMB_X30_Y16_N18
\cpu_top_i|alu_i|oC[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[10]~36_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & ((\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[10]~51_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[10]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[10]~51_combout\,
	datab => \cpu_top_i|mubx_i|oQ[10]~53_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \instr_rom_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|alu_i|oC[10]~36_combout\);

-- Location: LCCOMB_X32_Y14_N2
\cpu_top_i|alu_i|oC[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[10]~37_combout\ = (\cpu_top_i|alu_i|oC[0]~7_combout\ & ((\cpu_top_i|alu_i|Add1~33_combout\) # ((\cpu_top_i|muxa_i|oQ[10]~296_combout\ & \cpu_top_i|alu_i|oC[10]~36_combout\)))) # (!\cpu_top_i|alu_i|oC[0]~7_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[10]~296_combout\ & ((\cpu_top_i|alu_i|oC[10]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datab => \cpu_top_i|muxa_i|oQ[10]~296_combout\,
	datac => \cpu_top_i|alu_i|Add1~33_combout\,
	datad => \cpu_top_i|alu_i|oC[10]~36_combout\,
	combout => \cpu_top_i|alu_i|oC[10]~37_combout\);

-- Location: LCCOMB_X32_Y14_N28
\cpu_top_i|alu_i|oC[10]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[10]~38_combout\ = (\cpu_top_i|alu_i|oC[10]~37_combout\) # ((!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[10]~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|muxa_i|oQ[10]~296_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datad => \cpu_top_i|alu_i|oC[10]~37_combout\,
	combout => \cpu_top_i|alu_i|oC[10]~38_combout\);

-- Location: FF_X29_Y16_N1
\cpu_top_i|r5_i|sREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(10));

-- Location: LCCOMB_X29_Y16_N2
\cpu_top_i|muxa_i|oQ[10]~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~293_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\) # ((\cpu_top_i|r0_i|sREG\(10))))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- (\cpu_top_i|r7_i|sREG\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(10),
	datad => \cpu_top_i|r0_i|sREG\(10),
	combout => \cpu_top_i|muxa_i|oQ[10]~293_combout\);

-- Location: LCCOMB_X29_Y10_N22
\data_ram_i|rMEM[14][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[14][10]~feeder_combout\);

-- Location: FF_X29_Y10_N23
\data_ram_i|rMEM[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][10]~q\);

-- Location: FF_X28_Y10_N17
\data_ram_i|rMEM[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][10]~q\);

-- Location: FF_X28_Y10_N19
\data_ram_i|rMEM[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][10]~q\);

-- Location: LCCOMB_X26_Y14_N28
\data_ram_i|rMEM[13][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[13][10]~feeder_combout\);

-- Location: FF_X26_Y14_N29
\data_ram_i|rMEM[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][10]~q\);

-- Location: LCCOMB_X28_Y10_N18
\cpu_top_i|muxa_i|oQ[10]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~278_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|mubx_i|oQ[0]~14_combout\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[13][10]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[12][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[12][10]~q\,
	datad => \data_ram_i|rMEM[13][10]~q\,
	combout => \cpu_top_i|muxa_i|oQ[10]~278_combout\);

-- Location: LCCOMB_X28_Y10_N16
\cpu_top_i|muxa_i|oQ[10]~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~279_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~278_combout\ & ((\data_ram_i|rMEM[15][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~278_combout\ & (\data_ram_i|rMEM[14][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][10]~q\,
	datac => \data_ram_i|rMEM[15][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~278_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~279_combout\);

-- Location: FF_X31_Y16_N1
\data_ram_i|rMEM[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][10]~q\);

-- Location: FF_X27_Y13_N15
\data_ram_i|rMEM[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][10]~q\);

-- Location: FF_X32_Y17_N7
\data_ram_i|rMEM[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][10]~q\);

-- Location: FF_X31_Y16_N19
\data_ram_i|rMEM[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][10]~q\);

-- Location: LCCOMB_X31_Y16_N18
\cpu_top_i|muxa_i|oQ[10]~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~273_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][10]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][10]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[5][10]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[4][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~273_combout\);

-- Location: LCCOMB_X27_Y13_N14
\cpu_top_i|muxa_i|oQ[10]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~274_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~273_combout\ & ((\data_ram_i|rMEM[7][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~273_combout\ & (\data_ram_i|rMEM[6][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][10]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[7][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~273_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~274_combout\);

-- Location: LCCOMB_X33_Y15_N26
\data_ram_i|rMEM[1][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[1][10]~feeder_combout\);

-- Location: FF_X33_Y15_N27
\data_ram_i|rMEM[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][10]~q\);

-- Location: FF_X26_Y13_N25
\data_ram_i|rMEM[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][10]~q\);

-- Location: LCCOMB_X28_Y15_N8
\data_ram_i|rMEM[2][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[2][10]~feeder_combout\);

-- Location: FF_X28_Y15_N9
\data_ram_i|rMEM[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][10]~q\);

-- Location: FF_X25_Y13_N29
\data_ram_i|rMEM[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][10]~q\);

-- Location: LCCOMB_X25_Y13_N28
\cpu_top_i|muxa_i|oQ[10]~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~275_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[2][10]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[2][10]~q\,
	datac => \data_ram_i|rMEM[0][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~275_combout\);

-- Location: LCCOMB_X26_Y13_N24
\cpu_top_i|muxa_i|oQ[10]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~276_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~275_combout\ & ((\data_ram_i|rMEM[3][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~275_combout\ & (\data_ram_i|rMEM[1][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][10]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[3][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~275_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~276_combout\);

-- Location: LCCOMB_X27_Y13_N16
\cpu_top_i|muxa_i|oQ[10]~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~277_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\cpu_top_i|mubx_i|oQ[2]~24_combout\)) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[10]~274_combout\)) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|muxa_i|oQ[10]~274_combout\,
	datad => \cpu_top_i|muxa_i|oQ[10]~276_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~277_combout\);

-- Location: LCCOMB_X31_Y17_N20
\data_ram_i|rMEM[9][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[9][10]~feeder_combout\);

-- Location: FF_X31_Y17_N21
\data_ram_i|rMEM[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][10]~q\);

-- Location: FF_X33_Y14_N5
\data_ram_i|rMEM[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][10]~q\);

-- Location: FF_X32_Y17_N9
\data_ram_i|rMEM[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][10]~q\);

-- Location: FF_X35_Y14_N11
\data_ram_i|rMEM[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][10]~q\);

-- Location: LCCOMB_X35_Y14_N10
\cpu_top_i|muxa_i|oQ[10]~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~271_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[10][10]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[8][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[10][10]~q\,
	datac => \data_ram_i|rMEM[8][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~271_combout\);

-- Location: LCCOMB_X33_Y14_N4
\cpu_top_i|muxa_i|oQ[10]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~272_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~271_combout\ & ((\data_ram_i|rMEM[11][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~271_combout\ & (\data_ram_i|rMEM[9][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[9][10]~q\,
	datac => \data_ram_i|rMEM[11][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~271_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~272_combout\);

-- Location: LCCOMB_X28_Y13_N10
\cpu_top_i|muxa_i|oQ[10]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~280_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~277_combout\ & (\cpu_top_i|muxa_i|oQ[10]~279_combout\)) # (!\cpu_top_i|muxa_i|oQ[10]~277_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~272_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|muxa_i|oQ[10]~279_combout\,
	datac => \cpu_top_i|muxa_i|oQ[10]~277_combout\,
	datad => \cpu_top_i|muxa_i|oQ[10]~272_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~280_combout\);

-- Location: LCCOMB_X28_Y13_N0
\cpu_top_i|muxa_i|oQ[10]~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~281_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~280_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(10),
	datad => \cpu_top_i|muxa_i|oQ[10]~280_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~281_combout\);

-- Location: LCCOMB_X34_Y13_N14
\data_ram_i|rMEM[27][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[27][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[27][10]~feeder_combout\);

-- Location: FF_X34_Y13_N15
\data_ram_i|rMEM[27][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[27][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][10]~q\);

-- Location: FF_X34_Y13_N17
\data_ram_i|rMEM[31][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][10]~q\);

-- Location: LCCOMB_X34_Y14_N0
\data_ram_i|rMEM[23][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[23][10]~feeder_combout\);

-- Location: FF_X34_Y14_N1
\data_ram_i|rMEM[23][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][10]~q\);

-- Location: FF_X33_Y11_N27
\data_ram_i|rMEM[19][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][10]~q\);

-- Location: LCCOMB_X33_Y11_N26
\cpu_top_i|muxa_i|oQ[10]~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~289_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][10]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][10]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[23][10]~q\,
	datac => \data_ram_i|rMEM[19][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~289_combout\);

-- Location: LCCOMB_X34_Y13_N16
\cpu_top_i|muxa_i|oQ[10]~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~290_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~289_combout\ & ((\data_ram_i|rMEM[31][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~289_combout\ & (\data_ram_i|rMEM[27][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[27][10]~q\,
	datac => \data_ram_i|rMEM[31][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~289_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~290_combout\);

-- Location: FF_X31_Y11_N11
\data_ram_i|rMEM[26][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][10]~q\);

-- Location: FF_X32_Y13_N7
\data_ram_i|rMEM[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][10]~q\);

-- Location: LCCOMB_X33_Y12_N0
\data_ram_i|rMEM[22][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[22][10]~feeder_combout\);

-- Location: FF_X33_Y12_N1
\data_ram_i|rMEM[22][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][10]~q\);

-- Location: FF_X32_Y13_N1
\data_ram_i|rMEM[18][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][10]~q\);

-- Location: LCCOMB_X32_Y13_N0
\cpu_top_i|muxa_i|oQ[10]~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~284_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][10]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][10]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[22][10]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[18][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~284_combout\);

-- Location: LCCOMB_X32_Y13_N6
\cpu_top_i|muxa_i|oQ[10]~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~285_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~284_combout\ & ((\data_ram_i|rMEM[30][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~284_combout\ & (\data_ram_i|rMEM[26][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[26][10]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[30][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~284_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~285_combout\);

-- Location: LCCOMB_X31_Y13_N28
\data_ram_i|rMEM[24][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[24][10]~feeder_combout\);

-- Location: FF_X31_Y13_N29
\data_ram_i|rMEM[24][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][10]~q\);

-- Location: FF_X31_Y13_N27
\data_ram_i|rMEM[28][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][10]~q\);

-- Location: LCCOMB_X35_Y14_N4
\data_ram_i|rMEM[20][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[20][10]~feeder_combout\);

-- Location: FF_X35_Y14_N5
\data_ram_i|rMEM[20][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][10]~q\);

-- Location: FF_X33_Y12_N27
\data_ram_i|rMEM[16][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][10]~q\);

-- Location: LCCOMB_X33_Y12_N26
\cpu_top_i|muxa_i|oQ[10]~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~286_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][10]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][10]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][10]~q\,
	datac => \data_ram_i|rMEM[16][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~286_combout\);

-- Location: LCCOMB_X31_Y13_N26
\cpu_top_i|muxa_i|oQ[10]~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~287_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~286_combout\ & ((\data_ram_i|rMEM[28][10]~q\))) # (!\cpu_top_i|muxa_i|oQ[10]~286_combout\ & (\data_ram_i|rMEM[24][10]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][10]~q\,
	datac => \data_ram_i|rMEM[28][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~286_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~287_combout\);

-- Location: LCCOMB_X28_Y13_N30
\cpu_top_i|muxa_i|oQ[10]~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~288_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\) # ((\cpu_top_i|muxa_i|oQ[10]~285_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- ((\cpu_top_i|muxa_i|oQ[10]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[10]~285_combout\,
	datad => \cpu_top_i|muxa_i|oQ[10]~287_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~288_combout\);

-- Location: LCCOMB_X32_Y16_N18
\data_ram_i|rMEM[29][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[29][10]~feeder_combout\ = \cpu_top_i|alu_i|oC[10]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[10]~38_combout\,
	combout => \data_ram_i|rMEM[29][10]~feeder_combout\);

-- Location: FF_X32_Y16_N19
\data_ram_i|rMEM[29][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[29][10]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][10]~q\);

-- Location: FF_X32_Y16_N29
\data_ram_i|rMEM[25][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][10]~q\);

-- Location: FF_X36_Y14_N23
\data_ram_i|rMEM[21][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][10]~q\);

-- Location: FF_X33_Y16_N29
\data_ram_i|rMEM[17][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[10]~38_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][10]~q\);

-- Location: LCCOMB_X33_Y16_N28
\cpu_top_i|muxa_i|oQ[10]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~282_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][10]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][10]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][10]~q\,
	datac => \data_ram_i|rMEM[17][10]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~282_combout\);

-- Location: LCCOMB_X32_Y16_N28
\cpu_top_i|muxa_i|oQ[10]~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~283_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~282_combout\ & (\data_ram_i|rMEM[29][10]~q\)) # (!\cpu_top_i|muxa_i|oQ[10]~282_combout\ & ((\data_ram_i|rMEM[25][10]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[29][10]~q\,
	datac => \data_ram_i|rMEM[25][10]~q\,
	datad => \cpu_top_i|muxa_i|oQ[10]~282_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~283_combout\);

-- Location: LCCOMB_X28_Y13_N28
\cpu_top_i|muxa_i|oQ[10]~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~291_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~288_combout\ & (\cpu_top_i|muxa_i|oQ[10]~290_combout\)) # (!\cpu_top_i|muxa_i|oQ[10]~288_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~283_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[10]~290_combout\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \cpu_top_i|muxa_i|oQ[10]~288_combout\,
	datad => \cpu_top_i|muxa_i|oQ[10]~283_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~291_combout\);

-- Location: LCCOMB_X28_Y13_N24
\cpu_top_i|muxa_i|oQ[10]~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~292_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~281_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~291_combout\))) # (!\cpu_top_i|muxa_i|oQ[10]~281_combout\ & (\cpu_top_i|r3_i|sREG\(10))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[10]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[10]~281_combout\,
	datac => \cpu_top_i|r3_i|sREG\(10),
	datad => \cpu_top_i|muxa_i|oQ[10]~291_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~292_combout\);

-- Location: LCCOMB_X29_Y14_N10
\cpu_top_i|muxa_i|oQ[10]~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~294_combout\ = (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~293_combout\ & (\cpu_top_i|r2_i|sREG\(10))) # (!\cpu_top_i|muxa_i|oQ[10]~293_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~292_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (((\cpu_top_i|muxa_i|oQ[10]~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(10),
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|muxa_i|oQ[10]~293_combout\,
	datad => \cpu_top_i|muxa_i|oQ[10]~292_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~294_combout\);

-- Location: LCCOMB_X29_Y14_N24
\cpu_top_i|muxa_i|oQ[10]~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~295_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(10))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[10]~294_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(10),
	datad => \cpu_top_i|muxa_i|oQ[10]~294_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~295_combout\);

-- Location: LCCOMB_X29_Y14_N4
\cpu_top_i|muxa_i|oQ[10]~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[10]~296_combout\ = (\cpu_top_i|muxa_i|oQ[10]~295_combout\) # ((\cpu_top_i|muxa_i|oQ[7]~0_combout\ & \cpu_top_i|r5_i|sREG\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r5_i|sREG\(10),
	datad => \cpu_top_i|muxa_i|oQ[10]~295_combout\,
	combout => \cpu_top_i|muxa_i|oQ[10]~296_combout\);

-- Location: LCCOMB_X31_Y14_N6
\cpu_top_i|alu_i|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~36_combout\ = ((\cpu_top_i|alu_i|Add1~35_combout\ $ (\cpu_top_i|muxa_i|oQ[11]~322_combout\ $ (!\cpu_top_i|alu_i|Add1~34\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~37\ = CARRY((\cpu_top_i|alu_i|Add1~35_combout\ & ((\cpu_top_i|muxa_i|oQ[11]~322_combout\) # (!\cpu_top_i|alu_i|Add1~34\))) # (!\cpu_top_i|alu_i|Add1~35_combout\ & (\cpu_top_i|muxa_i|oQ[11]~322_combout\ & !\cpu_top_i|alu_i|Add1~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~35_combout\,
	datab => \cpu_top_i|muxa_i|oQ[11]~322_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~34\,
	combout => \cpu_top_i|alu_i|Add1~36_combout\,
	cout => \cpu_top_i|alu_i|Add1~37\);

-- Location: LCCOMB_X30_Y14_N14
\cpu_top_i|alu_i|oC[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[11]~40_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & (\cpu_top_i|mubx_i|oQ[11]~59_combout\ & \cpu_top_i|muxa_i|oQ[11]~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datac => \cpu_top_i|mubx_i|oQ[11]~59_combout\,
	datad => \cpu_top_i|muxa_i|oQ[11]~322_combout\,
	combout => \cpu_top_i|alu_i|oC[11]~40_combout\);

-- Location: LCCOMB_X32_Y14_N4
\cpu_top_i|alu_i|oC[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[11]~41_combout\ = (\cpu_top_i|alu_i|oC[11]~39_combout\) # ((\cpu_top_i|alu_i|oC[11]~40_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datab => \cpu_top_i|alu_i|oC[11]~39_combout\,
	datac => \cpu_top_i|alu_i|Add1~36_combout\,
	datad => \cpu_top_i|alu_i|oC[11]~40_combout\,
	combout => \cpu_top_i|alu_i|oC[11]~41_combout\);

-- Location: FF_X29_Y16_N23
\cpu_top_i|r7_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(11));

-- Location: FF_X32_Y14_N5
\cpu_top_i|r6_i|sREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[11]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(11));

-- Location: LCCOMB_X28_Y14_N20
\cpu_top_i|mubx_i|oQ[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[11]~55_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & (((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & ((\instr_rom_i|oQ[1]~21_combout\ & (\cpu_top_i|r6_i|sREG\(11))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- ((\cpu_top_i|r4_i|sREG\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r6_i|sREG\(11),
	datac => \instr_rom_i|oQ[1]~21_combout\,
	datad => \cpu_top_i|r4_i|sREG\(11),
	combout => \cpu_top_i|mubx_i|oQ[11]~55_combout\);

-- Location: LCCOMB_X28_Y14_N10
\cpu_top_i|mubx_i|oQ[11]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[11]~56_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[11]~55_combout\ & (\cpu_top_i|r7_i|sREG\(11))) # (!\cpu_top_i|mubx_i|oQ[11]~55_combout\ & ((\cpu_top_i|r5_i|sREG\(11)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[11]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(11),
	datab => \cpu_top_i|r5_i|sREG\(11),
	datac => \instr_rom_i|oQ[0]~41_combout\,
	datad => \cpu_top_i|mubx_i|oQ[11]~55_combout\,
	combout => \cpu_top_i|mubx_i|oQ[11]~56_combout\);

-- Location: LCCOMB_X28_Y16_N14
\cpu_top_i|mubx_i|oQ[11]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[11]~57_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(11)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(11) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(11),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(11),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[11]~57_combout\);

-- Location: LCCOMB_X28_Y13_N26
\cpu_top_i|mubx_i|oQ[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[11]~58_combout\ = (\cpu_top_i|mubx_i|oQ[11]~57_combout\ & (((\cpu_top_i|r3_i|sREG\(11)) # (!\instr_rom_i|oQ[1]~21_combout\)))) # (!\cpu_top_i|mubx_i|oQ[11]~57_combout\ & (\cpu_top_i|r2_i|sREG\(11) & 
-- ((\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r2_i|sREG\(11),
	datab => \cpu_top_i|mubx_i|oQ[11]~57_combout\,
	datac => \cpu_top_i|r3_i|sREG\(11),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[11]~58_combout\);

-- Location: LCCOMB_X30_Y14_N8
\cpu_top_i|mubx_i|oQ[11]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[11]~59_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[11]~56_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[11]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[11]~56_combout\,
	datad => \cpu_top_i|mubx_i|oQ[11]~58_combout\,
	combout => \cpu_top_i|mubx_i|oQ[11]~59_combout\);

-- Location: LCCOMB_X29_Y14_N8
\cpu_top_i|alu_i|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~35_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\instr_rom_i|oQ[10]~45_combout\) # ((\cpu_top_i|mubx_i|oQ[11]~59_combout\) # (\instr_rom_i|oQ[11]~27_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & 
-- (((!\cpu_top_i|mubx_i|oQ[11]~59_combout\ & !\instr_rom_i|oQ[11]~27_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[9]~29_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datac => \cpu_top_i|mubx_i|oQ[11]~59_combout\,
	datad => \instr_rom_i|oQ[11]~27_combout\,
	combout => \cpu_top_i|alu_i|Add1~35_combout\);

-- Location: LCCOMB_X31_Y14_N8
\cpu_top_i|alu_i|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~39_combout\ = (\cpu_top_i|muxa_i|oQ[12]~348_combout\ & ((\cpu_top_i|alu_i|Add1~38_combout\ & (\cpu_top_i|alu_i|Add1~37\ & VCC)) # (!\cpu_top_i|alu_i|Add1~38_combout\ & (!\cpu_top_i|alu_i|Add1~37\)))) # 
-- (!\cpu_top_i|muxa_i|oQ[12]~348_combout\ & ((\cpu_top_i|alu_i|Add1~38_combout\ & (!\cpu_top_i|alu_i|Add1~37\)) # (!\cpu_top_i|alu_i|Add1~38_combout\ & ((\cpu_top_i|alu_i|Add1~37\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~40\ = CARRY((\cpu_top_i|muxa_i|oQ[12]~348_combout\ & (!\cpu_top_i|alu_i|Add1~38_combout\ & !\cpu_top_i|alu_i|Add1~37\)) # (!\cpu_top_i|muxa_i|oQ[12]~348_combout\ & ((!\cpu_top_i|alu_i|Add1~37\) # 
-- (!\cpu_top_i|alu_i|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[12]~348_combout\,
	datab => \cpu_top_i|alu_i|Add1~38_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~37\,
	combout => \cpu_top_i|alu_i|Add1~39_combout\,
	cout => \cpu_top_i|alu_i|Add1~40\);

-- Location: LCCOMB_X30_Y14_N28
\cpu_top_i|alu_i|oC[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[12]~43_combout\ = (\cpu_top_i|alu_i|oC[0]~5_combout\ & (\cpu_top_i|mubx_i|oQ[12]~64_combout\ & \cpu_top_i|muxa_i|oQ[12]~348_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datac => \cpu_top_i|mubx_i|oQ[12]~64_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~348_combout\,
	combout => \cpu_top_i|alu_i|oC[12]~43_combout\);

-- Location: LCCOMB_X31_Y14_N24
\cpu_top_i|alu_i|oC[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[12]~44_combout\ = (\cpu_top_i|alu_i|oC[12]~42_combout\) # ((\cpu_top_i|alu_i|oC[12]~43_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[12]~42_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|Add1~39_combout\,
	datad => \cpu_top_i|alu_i|oC[12]~43_combout\,
	combout => \cpu_top_i|alu_i|oC[12]~44_combout\);

-- Location: FF_X29_Y16_N15
\cpu_top_i|r5_i|sREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(12));

-- Location: LCCOMB_X29_Y16_N20
\cpu_top_i|muxa_i|oQ[12]~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~345_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\) # ((\cpu_top_i|r0_i|sREG\(12))))) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & 
-- (\cpu_top_i|r7_i|sREG\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(12),
	datad => \cpu_top_i|r0_i|sREG\(12),
	combout => \cpu_top_i|muxa_i|oQ[12]~345_combout\);

-- Location: LCCOMB_X26_Y14_N10
\data_ram_i|rMEM[13][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[13][12]~feeder_combout\);

-- Location: FF_X26_Y14_N11
\data_ram_i|rMEM[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][12]~q\);

-- Location: FF_X29_Y11_N21
\data_ram_i|rMEM[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][12]~q\);

-- Location: LCCOMB_X29_Y11_N20
\cpu_top_i|muxa_i|oQ[12]~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~330_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[13][12]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[12][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[13][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[12][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~330_combout\);

-- Location: FF_X29_Y13_N15
\data_ram_i|rMEM[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][12]~q\);

-- Location: FF_X29_Y13_N13
\data_ram_i|rMEM[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][12]~q\);

-- Location: LCCOMB_X29_Y13_N14
\cpu_top_i|muxa_i|oQ[12]~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~331_combout\ = (\cpu_top_i|muxa_i|oQ[12]~330_combout\ & (((\data_ram_i|rMEM[15][12]~q\)) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\))) # (!\cpu_top_i|muxa_i|oQ[12]~330_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & 
-- ((\data_ram_i|rMEM[14][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[12]~330_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[15][12]~q\,
	datad => \data_ram_i|rMEM[14][12]~q\,
	combout => \cpu_top_i|muxa_i|oQ[12]~331_combout\);

-- Location: LCCOMB_X31_Y16_N8
\data_ram_i|rMEM[6][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[6][12]~feeder_combout\);

-- Location: FF_X31_Y16_N9
\data_ram_i|rMEM[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][12]~q\);

-- Location: FF_X35_Y13_N7
\data_ram_i|rMEM[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][12]~q\);

-- Location: LCCOMB_X32_Y17_N4
\data_ram_i|rMEM[5][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[5][12]~feeder_combout\);

-- Location: FF_X32_Y17_N5
\data_ram_i|rMEM[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][12]~q\);

-- Location: LCCOMB_X31_Y16_N14
\data_ram_i|rMEM[4][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[4][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[4][12]~feeder_combout\);

-- Location: FF_X31_Y16_N15
\data_ram_i|rMEM[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[4][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][12]~q\);

-- Location: LCCOMB_X35_Y13_N28
\cpu_top_i|muxa_i|oQ[12]~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~323_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[5][12]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[4][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[5][12]~q\,
	datab => \data_ram_i|rMEM[4][12]~q\,
	datac => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~323_combout\);

-- Location: LCCOMB_X35_Y13_N6
\cpu_top_i|muxa_i|oQ[12]~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~324_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~323_combout\ & ((\data_ram_i|rMEM[7][12]~q\))) # (!\cpu_top_i|muxa_i|oQ[12]~323_combout\ & (\data_ram_i|rMEM[6][12]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[7][12]~q\,
	datad => \cpu_top_i|muxa_i|oQ[12]~323_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~324_combout\);

-- Location: LCCOMB_X27_Y11_N8
\data_ram_i|rMEM[1][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[1][12]~feeder_combout\);

-- Location: FF_X27_Y11_N9
\data_ram_i|rMEM[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][12]~q\);

-- Location: FF_X26_Y13_N9
\data_ram_i|rMEM[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][12]~q\);

-- Location: FF_X28_Y15_N5
\data_ram_i|rMEM[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][12]~q\);

-- Location: FF_X27_Y11_N7
\data_ram_i|rMEM[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][12]~q\);

-- Location: LCCOMB_X27_Y11_N6
\cpu_top_i|muxa_i|oQ[12]~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~327_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[2][12]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[0][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[0][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~327_combout\);

-- Location: LCCOMB_X26_Y13_N8
\cpu_top_i|muxa_i|oQ[12]~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~328_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~327_combout\ & ((\data_ram_i|rMEM[3][12]~q\))) # (!\cpu_top_i|muxa_i|oQ[12]~327_combout\ & (\data_ram_i|rMEM[1][12]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[1][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[3][12]~q\,
	datad => \cpu_top_i|muxa_i|oQ[12]~327_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~328_combout\);

-- Location: LCCOMB_X32_Y17_N18
\data_ram_i|rMEM[10][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[10][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[10][12]~feeder_combout\);

-- Location: FF_X32_Y17_N19
\data_ram_i|rMEM[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[10][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][12]~q\);

-- Location: FF_X34_Y12_N23
\data_ram_i|rMEM[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][12]~q\);

-- Location: LCCOMB_X34_Y12_N22
\cpu_top_i|muxa_i|oQ[12]~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~325_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[10][12]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[8][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[10][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~325_combout\);

-- Location: FF_X33_Y14_N7
\data_ram_i|rMEM[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][12]~q\);

-- Location: LCCOMB_X31_Y17_N26
\data_ram_i|rMEM[9][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[9][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[9][12]~feeder_combout\);

-- Location: FF_X31_Y17_N27
\data_ram_i|rMEM[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[9][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][12]~q\);

-- Location: LCCOMB_X34_Y12_N0
\cpu_top_i|muxa_i|oQ[12]~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~326_combout\ = (\cpu_top_i|muxa_i|oQ[12]~325_combout\ & ((\data_ram_i|rMEM[11][12]~q\) # ((!\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|muxa_i|oQ[12]~325_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- \data_ram_i|rMEM[9][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[12]~325_combout\,
	datab => \data_ram_i|rMEM[11][12]~q\,
	datac => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datad => \data_ram_i|rMEM[9][12]~q\,
	combout => \cpu_top_i|muxa_i|oQ[12]~326_combout\);

-- Location: LCCOMB_X26_Y13_N18
\cpu_top_i|muxa_i|oQ[12]~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~329_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\) # ((\cpu_top_i|muxa_i|oQ[12]~326_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[12]~328_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|muxa_i|oQ[12]~328_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~326_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~329_combout\);

-- Location: LCCOMB_X26_Y13_N16
\cpu_top_i|muxa_i|oQ[12]~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~332_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~329_combout\ & (\cpu_top_i|muxa_i|oQ[12]~331_combout\)) # (!\cpu_top_i|muxa_i|oQ[12]~329_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~324_combout\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|muxa_i|oQ[12]~331_combout\,
	datac => \cpu_top_i|muxa_i|oQ[12]~324_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~329_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~332_combout\);

-- Location: LCCOMB_X26_Y13_N10
\cpu_top_i|muxa_i|oQ[12]~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~333_combout\ = (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|muxa_i|oQ[7]~5_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~332_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|r4_i|sREG\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(12),
	datad => \cpu_top_i|muxa_i|oQ[12]~332_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~333_combout\);

-- Location: FF_X35_Y15_N31
\data_ram_i|rMEM[29][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][12]~q\);

-- Location: FF_X36_Y14_N27
\data_ram_i|rMEM[21][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][12]~q\);

-- Location: FF_X35_Y15_N21
\data_ram_i|rMEM[25][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][12]~q\);

-- Location: FF_X36_Y14_N13
\data_ram_i|rMEM[17][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][12]~q\);

-- Location: LCCOMB_X36_Y14_N12
\cpu_top_i|muxa_i|oQ[12]~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~334_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[25][12]~q\) # ((\cpu_top_i|mubx_i|oQ[2]~24_combout\)))) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\data_ram_i|rMEM[17][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[25][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[17][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~334_combout\);

-- Location: LCCOMB_X36_Y14_N26
\cpu_top_i|muxa_i|oQ[12]~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~335_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~334_combout\ & (\data_ram_i|rMEM[29][12]~q\)) # (!\cpu_top_i|muxa_i|oQ[12]~334_combout\ & ((\data_ram_i|rMEM[21][12]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[29][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[21][12]~q\,
	datad => \cpu_top_i|muxa_i|oQ[12]~334_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~335_combout\);

-- Location: LCCOMB_X34_Y14_N16
\data_ram_i|rMEM[23][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[23][12]~feeder_combout\);

-- Location: FF_X34_Y14_N17
\data_ram_i|rMEM[23][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][12]~q\);

-- Location: FF_X34_Y11_N13
\data_ram_i|rMEM[31][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][12]~q\);

-- Location: FF_X30_Y11_N23
\data_ram_i|rMEM[27][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][12]~q\);

-- Location: FF_X33_Y11_N29
\data_ram_i|rMEM[19][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][12]~q\);

-- Location: LCCOMB_X33_Y11_N28
\cpu_top_i|muxa_i|oQ[12]~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~341_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[27][12]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[19][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[27][12]~q\,
	datac => \data_ram_i|rMEM[19][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~341_combout\);

-- Location: LCCOMB_X34_Y11_N12
\cpu_top_i|muxa_i|oQ[12]~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~342_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~341_combout\ & ((\data_ram_i|rMEM[31][12]~q\))) # (!\cpu_top_i|muxa_i|oQ[12]~341_combout\ & (\data_ram_i|rMEM[23][12]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[23][12]~q\,
	datac => \data_ram_i|rMEM[31][12]~q\,
	datad => \cpu_top_i|muxa_i|oQ[12]~341_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~342_combout\);

-- Location: FF_X32_Y11_N5
\data_ram_i|rMEM[22][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][12]~q\);

-- Location: FF_X32_Y13_N13
\data_ram_i|rMEM[18][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][12]~q\);

-- Location: LCCOMB_X32_Y13_N12
\cpu_top_i|muxa_i|oQ[12]~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~336_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[22][12]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[18][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[22][12]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[18][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~336_combout\);

-- Location: LCCOMB_X31_Y11_N30
\data_ram_i|rMEM[26][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[26][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[26][12]~feeder_combout\);

-- Location: FF_X31_Y11_N31
\data_ram_i|rMEM[26][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[26][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][12]~q\);

-- Location: FF_X32_Y13_N3
\data_ram_i|rMEM[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][12]~q\);

-- Location: LCCOMB_X32_Y13_N2
\cpu_top_i|muxa_i|oQ[12]~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~337_combout\ = (\cpu_top_i|muxa_i|oQ[12]~336_combout\ & (((\data_ram_i|rMEM[30][12]~q\) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|muxa_i|oQ[12]~336_combout\ & (\data_ram_i|rMEM[26][12]~q\ & 
-- ((\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[12]~336_combout\,
	datab => \data_ram_i|rMEM[26][12]~q\,
	datac => \data_ram_i|rMEM[30][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~337_combout\);

-- Location: LCCOMB_X33_Y11_N14
\data_ram_i|rMEM[24][12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[24][12]~feeder_combout\ = \cpu_top_i|alu_i|oC[12]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[12]~44_combout\,
	combout => \data_ram_i|rMEM[24][12]~feeder_combout\);

-- Location: FF_X33_Y11_N15
\data_ram_i|rMEM[24][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[24][12]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][12]~q\);

-- Location: FF_X34_Y16_N3
\data_ram_i|rMEM[28][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][12]~q\);

-- Location: FF_X35_Y14_N13
\data_ram_i|rMEM[20][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][12]~q\);

-- Location: FF_X34_Y16_N17
\data_ram_i|rMEM[16][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[12]~44_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][12]~q\);

-- Location: LCCOMB_X34_Y16_N16
\cpu_top_i|muxa_i|oQ[12]~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~338_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[20][12]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[16][12]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][12]~q\,
	datac => \data_ram_i|rMEM[16][12]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~338_combout\);

-- Location: LCCOMB_X34_Y16_N2
\cpu_top_i|muxa_i|oQ[12]~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~339_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~338_combout\ & ((\data_ram_i|rMEM[28][12]~q\))) # (!\cpu_top_i|muxa_i|oQ[12]~338_combout\ & (\data_ram_i|rMEM[24][12]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[24][12]~q\,
	datac => \data_ram_i|rMEM[28][12]~q\,
	datad => \cpu_top_i|muxa_i|oQ[12]~338_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~339_combout\);

-- Location: LCCOMB_X27_Y14_N6
\cpu_top_i|muxa_i|oQ[12]~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~340_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|mubx_i|oQ[1]~9_combout\)) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|muxa_i|oQ[12]~337_combout\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~339_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \cpu_top_i|muxa_i|oQ[12]~337_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~339_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~340_combout\);

-- Location: LCCOMB_X27_Y14_N0
\cpu_top_i|muxa_i|oQ[12]~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~343_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~340_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~342_combout\))) # (!\cpu_top_i|muxa_i|oQ[12]~340_combout\ & (\cpu_top_i|muxa_i|oQ[12]~335_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|muxa_i|oQ[12]~335_combout\,
	datac => \cpu_top_i|muxa_i|oQ[12]~342_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~340_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~343_combout\);

-- Location: LCCOMB_X27_Y14_N28
\cpu_top_i|muxa_i|oQ[12]~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~344_combout\ = (\cpu_top_i|muxa_i|oQ[12]~333_combout\ & (((\cpu_top_i|muxa_i|oQ[12]~343_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~6_combout\))) # (!\cpu_top_i|muxa_i|oQ[12]~333_combout\ & (\cpu_top_i|muxa_i|oQ[7]~6_combout\ & 
-- (\cpu_top_i|r3_i|sREG\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[12]~333_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	datac => \cpu_top_i|r3_i|sREG\(12),
	datad => \cpu_top_i|muxa_i|oQ[12]~343_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~344_combout\);

-- Location: LCCOMB_X27_Y14_N2
\cpu_top_i|muxa_i|oQ[12]~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~346_combout\ = (\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~345_combout\ & (\cpu_top_i|r2_i|sREG\(12))) # (!\cpu_top_i|muxa_i|oQ[12]~345_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~344_combout\))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|muxa_i|oQ[12]~345_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datab => \cpu_top_i|muxa_i|oQ[12]~345_combout\,
	datac => \cpu_top_i|r2_i|sREG\(12),
	datad => \cpu_top_i|muxa_i|oQ[12]~344_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~346_combout\);

-- Location: LCCOMB_X30_Y14_N0
\cpu_top_i|muxa_i|oQ[12]~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~347_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(12))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[12]~346_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r1_i|sREG\(12),
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~346_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~347_combout\);

-- Location: LCCOMB_X30_Y14_N2
\cpu_top_i|muxa_i|oQ[12]~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[12]~348_combout\ = (\cpu_top_i|muxa_i|oQ[12]~347_combout\) # ((\cpu_top_i|r5_i|sREG\(12) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(12),
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[12]~347_combout\,
	combout => \cpu_top_i|muxa_i|oQ[12]~348_combout\);

-- Location: LCCOMB_X31_Y14_N10
\cpu_top_i|alu_i|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~42_combout\ = ((\cpu_top_i|alu_i|Add1~41_combout\ $ (\cpu_top_i|muxa_i|oQ[13]~374_combout\ $ (!\cpu_top_i|alu_i|Add1~40\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~43\ = CARRY((\cpu_top_i|alu_i|Add1~41_combout\ & ((\cpu_top_i|muxa_i|oQ[13]~374_combout\) # (!\cpu_top_i|alu_i|Add1~40\))) # (!\cpu_top_i|alu_i|Add1~41_combout\ & (\cpu_top_i|muxa_i|oQ[13]~374_combout\ & !\cpu_top_i|alu_i|Add1~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~41_combout\,
	datab => \cpu_top_i|muxa_i|oQ[13]~374_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~40\,
	combout => \cpu_top_i|alu_i|Add1~42_combout\,
	cout => \cpu_top_i|alu_i|Add1~43\);

-- Location: LCCOMB_X31_Y14_N26
\cpu_top_i|alu_i|oC[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[13]~47_combout\ = (\cpu_top_i|alu_i|oC[13]~45_combout\) # ((\cpu_top_i|alu_i|oC[13]~46_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[13]~45_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[13]~46_combout\,
	datad => \cpu_top_i|alu_i|Add1~42_combout\,
	combout => \cpu_top_i|alu_i|oC[13]~47_combout\);

-- Location: FF_X27_Y14_N15
\cpu_top_i|r3_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(13));

-- Location: LCCOMB_X28_Y16_N18
\cpu_top_i|mubx_i|oQ[13]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[13]~67_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(13)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(13),
	datad => \cpu_top_i|r1_i|sREG\(13),
	combout => \cpu_top_i|mubx_i|oQ[13]~67_combout\);

-- Location: LCCOMB_X27_Y14_N8
\cpu_top_i|mubx_i|oQ[13]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[13]~68_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[13]~67_combout\ & (\cpu_top_i|r3_i|sREG\(13))) # (!\cpu_top_i|mubx_i|oQ[13]~67_combout\ & ((\cpu_top_i|r2_i|sREG\(13)))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[13]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \cpu_top_i|r3_i|sREG\(13),
	datac => \cpu_top_i|r2_i|sREG\(13),
	datad => \cpu_top_i|mubx_i|oQ[13]~67_combout\,
	combout => \cpu_top_i|mubx_i|oQ[13]~68_combout\);

-- Location: FF_X31_Y14_N27
\cpu_top_i|r6_i|sREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oC[13]~47_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(13));

-- Location: LCCOMB_X25_Y14_N14
\cpu_top_i|mubx_i|oQ[13]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[13]~65_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|r6_i|sREG\(13)) # ((\instr_rom_i|oQ[0]~41_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & (((!\instr_rom_i|oQ[0]~41_combout\ & \cpu_top_i|r4_i|sREG\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r6_i|sREG\(13),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \instr_rom_i|oQ[0]~41_combout\,
	datad => \cpu_top_i|r4_i|sREG\(13),
	combout => \cpu_top_i|mubx_i|oQ[13]~65_combout\);

-- Location: LCCOMB_X29_Y16_N26
\cpu_top_i|mubx_i|oQ[13]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[13]~66_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[13]~65_combout\ & (\cpu_top_i|r7_i|sREG\(13))) # (!\cpu_top_i|mubx_i|oQ[13]~65_combout\ & ((\cpu_top_i|r5_i|sREG\(13)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[13]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r7_i|sREG\(13),
	datac => \cpu_top_i|r5_i|sREG\(13),
	datad => \cpu_top_i|mubx_i|oQ[13]~65_combout\,
	combout => \cpu_top_i|mubx_i|oQ[13]~66_combout\);

-- Location: LCCOMB_X28_Y14_N28
\cpu_top_i|mubx_i|oQ[13]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[13]~69_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[13]~66_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[13]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[13]~68_combout\,
	datac => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[13]~66_combout\,
	combout => \cpu_top_i|mubx_i|oQ[13]~69_combout\);

-- Location: LCCOMB_X28_Y14_N14
\cpu_top_i|alu_i|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~41_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # ((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[13]~69_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & 
-- ((\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[13]~69_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~45_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[9]~29_combout\,
	datad => \cpu_top_i|mubx_i|oQ[13]~69_combout\,
	combout => \cpu_top_i|alu_i|Add1~41_combout\);

-- Location: LCCOMB_X31_Y14_N12
\cpu_top_i|alu_i|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~45_combout\ = (\cpu_top_i|alu_i|Add1~44_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~400_combout\ & (\cpu_top_i|alu_i|Add1~43\ & VCC)) # (!\cpu_top_i|muxa_i|oQ[14]~400_combout\ & (!\cpu_top_i|alu_i|Add1~43\)))) # 
-- (!\cpu_top_i|alu_i|Add1~44_combout\ & ((\cpu_top_i|muxa_i|oQ[14]~400_combout\ & (!\cpu_top_i|alu_i|Add1~43\)) # (!\cpu_top_i|muxa_i|oQ[14]~400_combout\ & ((\cpu_top_i|alu_i|Add1~43\) # (GND)))))
-- \cpu_top_i|alu_i|Add1~46\ = CARRY((\cpu_top_i|alu_i|Add1~44_combout\ & (!\cpu_top_i|muxa_i|oQ[14]~400_combout\ & !\cpu_top_i|alu_i|Add1~43\)) # (!\cpu_top_i|alu_i|Add1~44_combout\ & ((!\cpu_top_i|alu_i|Add1~43\) # 
-- (!\cpu_top_i|muxa_i|oQ[14]~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~44_combout\,
	datab => \cpu_top_i|muxa_i|oQ[14]~400_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~43\,
	combout => \cpu_top_i|alu_i|Add1~45_combout\,
	cout => \cpu_top_i|alu_i|Add1~46\);

-- Location: LCCOMB_X32_Y14_N16
\cpu_top_i|alu_i|oC[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[14]~50_combout\ = (\cpu_top_i|alu_i|oC[14]~49_combout\) # ((\cpu_top_i|alu_i|oC[14]~48_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[14]~49_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[14]~48_combout\,
	datad => \cpu_top_i|alu_i|Add1~45_combout\,
	combout => \cpu_top_i|alu_i|oC[14]~50_combout\);

-- Location: FF_X28_Y16_N11
\cpu_top_i|r0_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r0_i|sREG\(15));

-- Location: FF_X31_Y14_N21
\cpu_top_i|r1_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r1_i|sREG\(15));

-- Location: LCCOMB_X28_Y16_N10
\cpu_top_i|mubx_i|oQ[15]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[15]~77_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (\instr_rom_i|oQ[0]~41_combout\)) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(15)))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (\cpu_top_i|r0_i|sREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r0_i|sREG\(15),
	datad => \cpu_top_i|r1_i|sREG\(15),
	combout => \cpu_top_i|mubx_i|oQ[15]~77_combout\);

-- Location: FF_X27_Y14_N13
\cpu_top_i|r3_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r3_i|sREG\(15));

-- Location: FF_X28_Y14_N27
\cpu_top_i|r2_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[2]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r2_i|sREG\(15));

-- Location: LCCOMB_X27_Y14_N12
\cpu_top_i|mubx_i|oQ[15]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[15]~78_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[15]~77_combout\ & (\cpu_top_i|r3_i|sREG\(15))) # (!\cpu_top_i|mubx_i|oQ[15]~77_combout\ & ((\cpu_top_i|r2_i|sREG\(15)))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (\cpu_top_i|mubx_i|oQ[15]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \cpu_top_i|mubx_i|oQ[15]~77_combout\,
	datac => \cpu_top_i|r3_i|sREG\(15),
	datad => \cpu_top_i|r2_i|sREG\(15),
	combout => \cpu_top_i|mubx_i|oQ[15]~78_combout\);

-- Location: FF_X28_Y14_N17
\cpu_top_i|r7_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[7]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r7_i|sREG\(15));

-- Location: FF_X29_Y16_N5
\cpu_top_i|r5_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r5_i|sREG\(15));

-- Location: FF_X30_Y13_N3
\cpu_top_i|r6_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(15));

-- Location: FF_X30_Y10_N25
\cpu_top_i|r4_i|sREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[4]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r4_i|sREG\(15));

-- Location: LCCOMB_X30_Y13_N2
\cpu_top_i|mubx_i|oQ[15]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[15]~75_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\instr_rom_i|oQ[0]~41_combout\) # ((\cpu_top_i|r6_i|sREG\(15))))) # (!\instr_rom_i|oQ[1]~21_combout\ & (!\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r4_i|sREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(15),
	datad => \cpu_top_i|r4_i|sREG\(15),
	combout => \cpu_top_i|mubx_i|oQ[15]~75_combout\);

-- Location: LCCOMB_X29_Y16_N4
\cpu_top_i|mubx_i|oQ[15]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[15]~76_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|mubx_i|oQ[15]~75_combout\ & (\cpu_top_i|r7_i|sREG\(15))) # (!\cpu_top_i|mubx_i|oQ[15]~75_combout\ & ((\cpu_top_i|r5_i|sREG\(15)))))) # (!\instr_rom_i|oQ[0]~41_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[15]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r7_i|sREG\(15),
	datac => \cpu_top_i|r5_i|sREG\(15),
	datad => \cpu_top_i|mubx_i|oQ[15]~75_combout\,
	combout => \cpu_top_i|mubx_i|oQ[15]~76_combout\);

-- Location: LCCOMB_X27_Y14_N22
\cpu_top_i|mubx_i|oQ[15]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[15]~79_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[15]~76_combout\))) # (!\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[15]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[15]~78_combout\,
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datad => \cpu_top_i|mubx_i|oQ[15]~76_combout\,
	combout => \cpu_top_i|mubx_i|oQ[15]~79_combout\);

-- Location: LCCOMB_X30_Y10_N24
\cpu_top_i|muxa_i|oQ[15]~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~411_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (((\cpu_top_i|muxa_i|oQ[7]~6_combout\)))) # (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~6_combout\ & (\cpu_top_i|r3_i|sREG\(15))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~6_combout\ & ((\cpu_top_i|r4_i|sREG\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r3_i|sREG\(15),
	datab => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datac => \cpu_top_i|r4_i|sREG\(15),
	datad => \cpu_top_i|muxa_i|oQ[7]~6_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~411_combout\);

-- Location: FF_X31_Y17_N25
\data_ram_i|rMEM[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[9][15]~q\);

-- Location: FF_X34_Y12_N15
\data_ram_i|rMEM[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[8][15]~q\);

-- Location: LCCOMB_X34_Y12_N14
\cpu_top_i|muxa_i|oQ[15]~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~401_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[9][15]~q\) # ((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\data_ram_i|rMEM[8][15]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[9][15]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[8][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~401_combout\);

-- Location: FF_X33_Y14_N13
\data_ram_i|rMEM[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[11][15]~q\);

-- Location: FF_X33_Y14_N27
\data_ram_i|rMEM[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[10][15]~q\);

-- Location: LCCOMB_X33_Y14_N12
\cpu_top_i|muxa_i|oQ[15]~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~402_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~401_combout\ & (\data_ram_i|rMEM[11][15]~q\)) # (!\cpu_top_i|muxa_i|oQ[15]~401_combout\ & ((\data_ram_i|rMEM[10][15]~q\))))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\cpu_top_i|muxa_i|oQ[15]~401_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[15]~401_combout\,
	datac => \data_ram_i|rMEM[11][15]~q\,
	datad => \data_ram_i|rMEM[10][15]~q\,
	combout => \cpu_top_i|muxa_i|oQ[15]~402_combout\);

-- Location: LCCOMB_X26_Y14_N20
\data_ram_i|rMEM[13][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[13][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[13][15]~feeder_combout\);

-- Location: FF_X26_Y14_N21
\data_ram_i|rMEM[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[13][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[13][15]~q\);

-- Location: FF_X26_Y14_N15
\data_ram_i|rMEM[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[15][15]~q\);

-- Location: LCCOMB_X29_Y10_N18
\data_ram_i|rMEM[14][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[14][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[14][15]~feeder_combout\);

-- Location: FF_X29_Y10_N19
\data_ram_i|rMEM[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[14][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[14][15]~q\);

-- Location: FF_X29_Y10_N21
\data_ram_i|rMEM[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[12][15]~q\);

-- Location: LCCOMB_X29_Y10_N20
\cpu_top_i|muxa_i|oQ[15]~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~408_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[14][15]~q\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\data_ram_i|rMEM[12][15]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[14][15]~q\,
	datac => \data_ram_i|rMEM[12][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~408_combout\);

-- Location: LCCOMB_X26_Y14_N14
\cpu_top_i|muxa_i|oQ[15]~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~409_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~408_combout\ & ((\data_ram_i|rMEM[15][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~408_combout\ & (\data_ram_i|rMEM[13][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[13][15]~q\,
	datac => \data_ram_i|rMEM[15][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~408_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~409_combout\);

-- Location: LCCOMB_X28_Y15_N6
\data_ram_i|rMEM[2][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[2][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[2][15]~feeder_combout\);

-- Location: FF_X28_Y15_N7
\data_ram_i|rMEM[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[2][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[2][15]~q\);

-- Location: FF_X35_Y13_N21
\data_ram_i|rMEM[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[3][15]~q\);

-- Location: LCCOMB_X27_Y11_N30
\data_ram_i|rMEM[1][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[1][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[1][15]~feeder_combout\);

-- Location: FF_X27_Y11_N31
\data_ram_i|rMEM[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[1][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[1][15]~q\);

-- Location: FF_X31_Y10_N25
\data_ram_i|rMEM[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[0][15]~q\);

-- Location: LCCOMB_X31_Y10_N24
\cpu_top_i|muxa_i|oQ[15]~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~405_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~14_combout\)))) # (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\data_ram_i|rMEM[1][15]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\data_ram_i|rMEM[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \data_ram_i|rMEM[1][15]~q\,
	datac => \data_ram_i|rMEM[0][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~405_combout\);

-- Location: LCCOMB_X35_Y13_N20
\cpu_top_i|muxa_i|oQ[15]~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~406_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~405_combout\ & ((\data_ram_i|rMEM[3][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~405_combout\ & (\data_ram_i|rMEM[2][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[2][15]~q\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \data_ram_i|rMEM[3][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~405_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~406_combout\);

-- Location: LCCOMB_X29_Y17_N28
\data_ram_i|rMEM[5][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[5][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[5][15]~feeder_combout\);

-- Location: FF_X29_Y17_N29
\data_ram_i|rMEM[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[5][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[5][15]~q\);

-- Location: FF_X35_Y13_N19
\data_ram_i|rMEM[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[7][15]~q\);

-- Location: LCCOMB_X31_Y16_N4
\data_ram_i|rMEM[6][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[6][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[6][15]~feeder_combout\);

-- Location: FF_X31_Y16_N5
\data_ram_i|rMEM[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[6][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[6][15]~q\);

-- Location: FF_X31_Y16_N3
\data_ram_i|rMEM[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[4][15]~q\);

-- Location: LCCOMB_X31_Y16_N2
\cpu_top_i|muxa_i|oQ[15]~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~403_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|mubx_i|oQ[1]~9_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (\data_ram_i|rMEM[6][15]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\data_ram_i|rMEM[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[6][15]~q\,
	datab => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datac => \data_ram_i|rMEM[4][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~403_combout\);

-- Location: LCCOMB_X35_Y13_N18
\cpu_top_i|muxa_i|oQ[15]~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~404_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~403_combout\ & ((\data_ram_i|rMEM[7][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~403_combout\ & (\data_ram_i|rMEM[5][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \data_ram_i|rMEM[5][15]~q\,
	datac => \data_ram_i|rMEM[7][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~403_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~404_combout\);

-- Location: LCCOMB_X34_Y13_N18
\cpu_top_i|muxa_i|oQ[15]~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~407_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\cpu_top_i|mubx_i|oQ[2]~24_combout\)) # (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~404_combout\))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|muxa_i|oQ[15]~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|muxa_i|oQ[15]~406_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~404_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~407_combout\);

-- Location: LCCOMB_X33_Y14_N14
\cpu_top_i|muxa_i|oQ[15]~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~410_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~407_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~409_combout\))) # (!\cpu_top_i|muxa_i|oQ[15]~407_combout\ & (\cpu_top_i|muxa_i|oQ[15]~402_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[15]~402_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \cpu_top_i|muxa_i|oQ[15]~409_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~407_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~410_combout\);

-- Location: LCCOMB_X31_Y10_N10
\data_ram_i|rMEM[22][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[22][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[22][15]~feeder_combout\);

-- Location: FF_X31_Y10_N11
\data_ram_i|rMEM[22][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[22][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[22][15]~q\);

-- Location: FF_X32_Y13_N23
\data_ram_i|rMEM[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[30][15]~q\);

-- Location: FF_X32_Y13_N29
\data_ram_i|rMEM[18][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[18][15]~q\);

-- Location: FF_X31_Y11_N5
\data_ram_i|rMEM[26][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[26][15]~q\);

-- Location: LCCOMB_X32_Y13_N28
\cpu_top_i|muxa_i|oQ[15]~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~412_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[3]~19_combout\)) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[26][15]~q\))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[18][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datac => \data_ram_i|rMEM[18][15]~q\,
	datad => \data_ram_i|rMEM[26][15]~q\,
	combout => \cpu_top_i|muxa_i|oQ[15]~412_combout\);

-- Location: LCCOMB_X32_Y13_N22
\cpu_top_i|muxa_i|oQ[15]~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~413_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~412_combout\ & ((\data_ram_i|rMEM[30][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~412_combout\ & (\data_ram_i|rMEM[22][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[22][15]~q\,
	datac => \data_ram_i|rMEM[30][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~412_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~413_combout\);

-- Location: FF_X34_Y13_N5
\data_ram_i|rMEM[27][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[27][15]~q\);

-- Location: FF_X34_Y13_N27
\data_ram_i|rMEM[31][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[31][15]~q\);

-- Location: LCCOMB_X34_Y14_N18
\data_ram_i|rMEM[23][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[23][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[23][15]~feeder_combout\);

-- Location: FF_X34_Y14_N19
\data_ram_i|rMEM[23][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[23][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[23][15]~q\);

-- Location: FF_X33_Y13_N9
\data_ram_i|rMEM[19][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[19][15]~q\);

-- Location: LCCOMB_X33_Y13_N8
\cpu_top_i|muxa_i|oQ[15]~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~419_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[23][15]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[19][15]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_ram_i|rMEM[23][15]~q\,
	datab => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datac => \data_ram_i|rMEM[19][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~419_combout\);

-- Location: LCCOMB_X34_Y13_N26
\cpu_top_i|muxa_i|oQ[15]~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~420_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~419_combout\ & ((\data_ram_i|rMEM[31][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~419_combout\ & (\data_ram_i|rMEM[27][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[27][15]~q\,
	datac => \data_ram_i|rMEM[31][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~419_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~420_combout\);

-- Location: LCCOMB_X34_Y11_N24
\data_ram_i|rMEM[20][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[20][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[20][15]~feeder_combout\);

-- Location: FF_X34_Y11_N25
\data_ram_i|rMEM[20][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[20][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[20][15]~q\);

-- Location: FF_X34_Y16_N31
\data_ram_i|rMEM[28][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[28][15]~q\);

-- Location: FF_X33_Y10_N3
\data_ram_i|rMEM[24][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[24][15]~q\);

-- Location: FF_X34_Y16_N29
\data_ram_i|rMEM[16][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[16][15]~q\);

-- Location: LCCOMB_X34_Y16_N28
\cpu_top_i|muxa_i|oQ[15]~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~416_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (\data_ram_i|rMEM[24][15]~q\)) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\data_ram_i|rMEM[16][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[24][15]~q\,
	datac => \data_ram_i|rMEM[16][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~416_combout\);

-- Location: LCCOMB_X34_Y16_N30
\cpu_top_i|muxa_i|oQ[15]~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~417_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~416_combout\ & ((\data_ram_i|rMEM[28][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~416_combout\ & (\data_ram_i|rMEM[20][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[20][15]~q\,
	datac => \data_ram_i|rMEM[28][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~416_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~417_combout\);

-- Location: FF_X30_Y16_N31
\data_ram_i|rMEM[25][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[25][15]~q\);

-- Location: FF_X30_Y16_N17
\data_ram_i|rMEM[29][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[29][15]~q\);

-- Location: LCCOMB_X34_Y15_N16
\data_ram_i|rMEM[21][15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_ram_i|rMEM[21][15]~feeder_combout\ = \cpu_top_i|alu_i|oC[15]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_top_i|alu_i|oC[15]~52_combout\,
	combout => \data_ram_i|rMEM[21][15]~feeder_combout\);

-- Location: FF_X34_Y15_N17
\data_ram_i|rMEM[21][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \data_ram_i|rMEM[21][15]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \data_ram_i|Decoder0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[21][15]~q\);

-- Location: FF_X31_Y17_N31
\data_ram_i|rMEM[17][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_ram_i|Decoder0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_ram_i|rMEM[17][15]~q\);

-- Location: LCCOMB_X31_Y17_N30
\cpu_top_i|muxa_i|oQ[15]~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~414_combout\ = (\cpu_top_i|mubx_i|oQ[2]~24_combout\ & ((\data_ram_i|rMEM[21][15]~q\) # ((\cpu_top_i|mubx_i|oQ[3]~19_combout\)))) # (!\cpu_top_i|mubx_i|oQ[2]~24_combout\ & (((\data_ram_i|rMEM[17][15]~q\ & 
-- !\cpu_top_i|mubx_i|oQ[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[2]~24_combout\,
	datab => \data_ram_i|rMEM[21][15]~q\,
	datac => \data_ram_i|rMEM[17][15]~q\,
	datad => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~414_combout\);

-- Location: LCCOMB_X30_Y16_N16
\cpu_top_i|muxa_i|oQ[15]~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~415_combout\ = (\cpu_top_i|mubx_i|oQ[3]~19_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~414_combout\ & ((\data_ram_i|rMEM[29][15]~q\))) # (!\cpu_top_i|muxa_i|oQ[15]~414_combout\ & (\data_ram_i|rMEM[25][15]~q\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[3]~19_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[3]~19_combout\,
	datab => \data_ram_i|rMEM[25][15]~q\,
	datac => \data_ram_i|rMEM[29][15]~q\,
	datad => \cpu_top_i|muxa_i|oQ[15]~414_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~415_combout\);

-- Location: LCCOMB_X34_Y16_N0
\cpu_top_i|muxa_i|oQ[15]~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~418_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\cpu_top_i|mubx_i|oQ[1]~9_combout\) # ((\cpu_top_i|muxa_i|oQ[15]~415_combout\)))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & 
-- (\cpu_top_i|muxa_i|oQ[15]~417_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datac => \cpu_top_i|muxa_i|oQ[15]~417_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~415_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~418_combout\);

-- Location: LCCOMB_X33_Y14_N24
\cpu_top_i|muxa_i|oQ[15]~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~421_combout\ = (\cpu_top_i|mubx_i|oQ[1]~9_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~418_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~420_combout\))) # (!\cpu_top_i|muxa_i|oQ[15]~418_combout\ & (\cpu_top_i|muxa_i|oQ[15]~413_combout\)))) # 
-- (!\cpu_top_i|mubx_i|oQ[1]~9_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[1]~9_combout\,
	datab => \cpu_top_i|muxa_i|oQ[15]~413_combout\,
	datac => \cpu_top_i|muxa_i|oQ[15]~420_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~418_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~421_combout\);

-- Location: LCCOMB_X33_Y14_N18
\cpu_top_i|muxa_i|oQ[15]~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~422_combout\ = (\cpu_top_i|muxa_i|oQ[7]~5_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~411_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~421_combout\))) # (!\cpu_top_i|muxa_i|oQ[15]~411_combout\ & (\cpu_top_i|muxa_i|oQ[15]~410_combout\)))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~5_combout\ & (\cpu_top_i|muxa_i|oQ[15]~411_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~5_combout\,
	datab => \cpu_top_i|muxa_i|oQ[15]~411_combout\,
	datac => \cpu_top_i|muxa_i|oQ[15]~410_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~421_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~422_combout\);

-- Location: LCCOMB_X28_Y14_N16
\cpu_top_i|muxa_i|oQ[15]~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~423_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (\cpu_top_i|muxa_i|oQ[7]~428_combout\)) # (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~428_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~422_combout\))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~428_combout\ & (\cpu_top_i|r7_i|sREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~428_combout\,
	datac => \cpu_top_i|r7_i|sREG\(15),
	datad => \cpu_top_i|muxa_i|oQ[15]~422_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~423_combout\);

-- Location: LCCOMB_X28_Y14_N26
\cpu_top_i|muxa_i|oQ[15]~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~424_combout\ = (\cpu_top_i|muxa_i|oQ[7]~30_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~423_combout\ & ((\cpu_top_i|r2_i|sREG\(15)))) # (!\cpu_top_i|muxa_i|oQ[15]~423_combout\ & (\cpu_top_i|r0_i|sREG\(15))))) # 
-- (!\cpu_top_i|muxa_i|oQ[7]~30_combout\ & (((\cpu_top_i|muxa_i|oQ[15]~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~30_combout\,
	datab => \cpu_top_i|r0_i|sREG\(15),
	datac => \cpu_top_i|r2_i|sREG\(15),
	datad => \cpu_top_i|muxa_i|oQ[15]~423_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~424_combout\);

-- Location: LCCOMB_X31_Y14_N20
\cpu_top_i|muxa_i|oQ[15]~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~425_combout\ = (!\cpu_top_i|muxa_i|oQ[7]~0_combout\ & ((\cpu_top_i|muxa_i|oQ[7]~3_combout\ & (\cpu_top_i|r1_i|sREG\(15))) # (!\cpu_top_i|muxa_i|oQ[7]~3_combout\ & ((\cpu_top_i|muxa_i|oQ[15]~424_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[7]~3_combout\,
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datac => \cpu_top_i|r1_i|sREG\(15),
	datad => \cpu_top_i|muxa_i|oQ[15]~424_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~425_combout\);

-- Location: LCCOMB_X31_Y14_N30
\cpu_top_i|muxa_i|oQ[15]~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|muxa_i|oQ[15]~426_combout\ = (\cpu_top_i|muxa_i|oQ[15]~425_combout\) # ((\cpu_top_i|r5_i|sREG\(15) & \cpu_top_i|muxa_i|oQ[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(15),
	datab => \cpu_top_i|muxa_i|oQ[7]~0_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~425_combout\,
	combout => \cpu_top_i|muxa_i|oQ[15]~426_combout\);

-- Location: LCCOMB_X30_Y13_N8
\cpu_top_i|alu_i|oC[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[15]~51_combout\ = (\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ & (\cpu_top_i|mubx_i|oQ[15]~79_combout\ & \cpu_top_i|muxa_i|oQ[15]~426_combout\))) # (!\cpu_top_i|alu_i|oC[15]~53_combout\ & 
-- (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (((\cpu_top_i|muxa_i|oQ[15]~426_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datac => \cpu_top_i|mubx_i|oQ[15]~79_combout\,
	datad => \cpu_top_i|muxa_i|oQ[15]~426_combout\,
	combout => \cpu_top_i|alu_i|oC[15]~51_combout\);

-- Location: LCCOMB_X29_Y14_N22
\cpu_top_i|alu_i|Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~47_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & ((\instr_rom_i|oQ[11]~27_combout\) # ((\instr_rom_i|oQ[10]~45_combout\) # (\cpu_top_i|mubx_i|oQ[15]~79_combout\)))) # (!\instr_rom_i|oQ[9]~29_combout\ & 
-- (((!\instr_rom_i|oQ[11]~27_combout\ & !\cpu_top_i|mubx_i|oQ[15]~79_combout\)) # (!\instr_rom_i|oQ[10]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[9]~29_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datac => \instr_rom_i|oQ[10]~45_combout\,
	datad => \cpu_top_i|mubx_i|oQ[15]~79_combout\,
	combout => \cpu_top_i|alu_i|Add1~47_combout\);

-- Location: LCCOMB_X31_Y14_N14
\cpu_top_i|alu_i|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~48_combout\ = ((\cpu_top_i|muxa_i|oQ[15]~426_combout\ $ (\cpu_top_i|alu_i|Add1~47_combout\ $ (!\cpu_top_i|alu_i|Add1~46\)))) # (GND)
-- \cpu_top_i|alu_i|Add1~49\ = CARRY((\cpu_top_i|muxa_i|oQ[15]~426_combout\ & ((\cpu_top_i|alu_i|Add1~47_combout\) # (!\cpu_top_i|alu_i|Add1~46\))) # (!\cpu_top_i|muxa_i|oQ[15]~426_combout\ & (\cpu_top_i|alu_i|Add1~47_combout\ & !\cpu_top_i|alu_i|Add1~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|muxa_i|oQ[15]~426_combout\,
	datab => \cpu_top_i|alu_i|Add1~47_combout\,
	datad => VCC,
	cin => \cpu_top_i|alu_i|Add1~46\,
	combout => \cpu_top_i|alu_i|Add1~48_combout\,
	cout => \cpu_top_i|alu_i|Add1~49\);

-- Location: LCCOMB_X30_Y13_N26
\cpu_top_i|alu_i|oC[15]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[15]~52_combout\ = (\cpu_top_i|alu_i|oC[15]~51_combout\) # ((\cpu_top_i|alu_i|oC[0]~7_combout\ & \cpu_top_i|alu_i|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~51_combout\,
	datad => \cpu_top_i|alu_i|Add1~48_combout\,
	combout => \cpu_top_i|alu_i|oC[15]~52_combout\);

-- Location: LCCOMB_X29_Y14_N30
\cpu_top_i|alu_i|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Equal12~0_combout\ = (!\cpu_top_i|alu_i|oC[2]~14_combout\ & (!\cpu_top_i|alu_i|oC[0]~8_combout\ & (!\cpu_top_i|alu_i|oC[1]~11_combout\ & !\cpu_top_i|alu_i|oC[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[2]~14_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~8_combout\,
	datac => \cpu_top_i|alu_i|oC[1]~11_combout\,
	datad => \cpu_top_i|alu_i|oC[3]~17_combout\,
	combout => \cpu_top_i|alu_i|Equal12~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\cpu_top_i|alu_i|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Equal12~1_combout\ = (!\cpu_top_i|alu_i|oC[5]~23_combout\ & (!\cpu_top_i|alu_i|oC[7]~29_combout\ & (!\cpu_top_i|alu_i|oC[6]~26_combout\ & !\cpu_top_i|alu_i|oC[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[5]~23_combout\,
	datab => \cpu_top_i|alu_i|oC[7]~29_combout\,
	datac => \cpu_top_i|alu_i|oC[6]~26_combout\,
	datad => \cpu_top_i|alu_i|oC[4]~20_combout\,
	combout => \cpu_top_i|alu_i|Equal12~1_combout\);

-- Location: LCCOMB_X29_Y14_N0
\cpu_top_i|alu_i|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Equal12~2_combout\ = (\cpu_top_i|alu_i|Equal12~0_combout\ & (!\cpu_top_i|alu_i|oC[9]~35_combout\ & (\cpu_top_i|alu_i|Equal12~1_combout\ & !\cpu_top_i|alu_i|oC[8]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Equal12~0_combout\,
	datab => \cpu_top_i|alu_i|oC[9]~35_combout\,
	datac => \cpu_top_i|alu_i|Equal12~1_combout\,
	datad => \cpu_top_i|alu_i|oC[8]~32_combout\,
	combout => \cpu_top_i|alu_i|Equal12~2_combout\);

-- Location: LCCOMB_X29_Y14_N18
\cpu_top_i|alu_i|Equal12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Equal12~3_combout\ = (!\cpu_top_i|alu_i|oC[12]~44_combout\ & (!\cpu_top_i|alu_i|oC[11]~41_combout\ & (!\cpu_top_i|alu_i|oC[10]~38_combout\ & \cpu_top_i|alu_i|Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[12]~44_combout\,
	datab => \cpu_top_i|alu_i|oC[11]~41_combout\,
	datac => \cpu_top_i|alu_i|oC[10]~38_combout\,
	datad => \cpu_top_i|alu_i|Equal12~2_combout\,
	combout => \cpu_top_i|alu_i|Equal12~3_combout\);

-- Location: LCCOMB_X29_Y14_N12
\cpu_top_i|alu_i|Equal12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Equal12~4_combout\ = (!\cpu_top_i|alu_i|oC[14]~50_combout\ & (!\cpu_top_i|alu_i|oC[13]~47_combout\ & (!\cpu_top_i|alu_i|oC[15]~52_combout\ & \cpu_top_i|alu_i|Equal12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[14]~50_combout\,
	datab => \cpu_top_i|alu_i|oC[13]~47_combout\,
	datac => \cpu_top_i|alu_i|oC[15]~52_combout\,
	datad => \cpu_top_i|alu_i|Equal12~3_combout\,
	combout => \cpu_top_i|alu_i|Equal12~4_combout\);

-- Location: FF_X29_Y14_N13
\cpu_top_i|sZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|Equal12~4_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|sZERO~q\);

-- Location: LCCOMB_X30_Y13_N0
\cpu_top_i|alu_i|oCARRY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oCARRY~0_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(1) & ((\cpu_top_i|pc_i|sCNT\(2)) # (!\cpu_top_i|pc_i|sCNT\(0))))) # (!\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(2) & (!\cpu_top_i|pc_i|sCNT\(1) & 
-- !\cpu_top_i|pc_i|sCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|alu_i|oCARRY~0_combout\);

-- Location: LCCOMB_X30_Y13_N30
\cpu_top_i|alu_i|oCARRY~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oCARRY~1_combout\ = (\cpu_top_i|pc_i|sCNT\(0) & (!\cpu_top_i|alu_i|oCARRY~0_combout\ & (!\cpu_top_i|pc_i|sCNT\(4)))) # (!\cpu_top_i|pc_i|sCNT\(0) & ((\instr_rom_i|oQ[10]~16_combout\) # ((!\cpu_top_i|alu_i|oCARRY~0_combout\ & 
-- !\cpu_top_i|pc_i|sCNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(0),
	datab => \cpu_top_i|alu_i|oCARRY~0_combout\,
	datac => \cpu_top_i|pc_i|sCNT\(4),
	datad => \instr_rom_i|oQ[10]~16_combout\,
	combout => \cpu_top_i|alu_i|oCARRY~1_combout\);

-- Location: LCCOMB_X30_Y13_N20
\cpu_top_i|alu_i|oCARRY~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oCARRY~2_combout\ = (!\cpu_top_i|pc_i|sCNT\(1) & \cpu_top_i|pc_i|sCNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cpu_top_i|pc_i|sCNT\(1),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \cpu_top_i|alu_i|oCARRY~2_combout\);

-- Location: LCCOMB_X32_Y12_N8
\cpu_top_i|alu_i|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~50_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & ((!\instr_rom_i|oQ[9]~29_combout\))) # (!\instr_rom_i|oQ[10]~45_combout\ & (!\instr_rom_i|oQ[11]~27_combout\ & \instr_rom_i|oQ[9]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[11]~27_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~50_combout\);

-- Location: LCCOMB_X31_Y14_N16
\cpu_top_i|alu_i|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~51_combout\ = \cpu_top_i|cu_i|Equal11~0_combout\ $ (\cpu_top_i|alu_i|Add1~49\ $ (!\cpu_top_i|alu_i|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|cu_i|Equal11~0_combout\,
	datad => \cpu_top_i|alu_i|Add1~50_combout\,
	cin => \cpu_top_i|alu_i|Add1~49\,
	combout => \cpu_top_i|alu_i|Add1~51_combout\);

-- Location: LCCOMB_X30_Y13_N18
\cpu_top_i|alu_i|oCARRY~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oCARRY~3_combout\ = (\cpu_top_i|alu_i|oCARRY~1_combout\ & ((\cpu_top_i|alu_i|Add1~51_combout\) # ((\cpu_top_i|alu_i|oCARRY~2_combout\ & \instr_rom_i|oQ[10]~16_combout\)))) # (!\cpu_top_i|alu_i|oCARRY~1_combout\ & 
-- (\cpu_top_i|alu_i|oCARRY~2_combout\ & (\instr_rom_i|oQ[10]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oCARRY~1_combout\,
	datab => \cpu_top_i|alu_i|oCARRY~2_combout\,
	datac => \instr_rom_i|oQ[10]~16_combout\,
	datad => \cpu_top_i|alu_i|Add1~51_combout\,
	combout => \cpu_top_i|alu_i|oCARRY~3_combout\);

-- Location: FF_X30_Y13_N19
\cpu_top_i|sCARRY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|alu_i|oCARRY~3_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \cpu_top_i|cu_i|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|sCARRY~q\);

-- Location: FF_X30_Y13_N5
\cpu_top_i|sSIGN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[15]~52_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|sSIGN~q\);

-- Location: LCCOMB_X30_Y13_N4
\cpu_top_i|cu_i|oPC_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oPC_LOAD~0_combout\ = (\instr_rom_i|oQ[9]~29_combout\ & (\cpu_top_i|sCARRY~q\)) # (!\instr_rom_i|oQ[9]~29_combout\ & ((\cpu_top_i|sSIGN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|sCARRY~q\,
	datac => \cpu_top_i|sSIGN~q\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|cu_i|oPC_LOAD~0_combout\);

-- Location: LCCOMB_X31_Y12_N12
\cpu_top_i|cu_i|oPC_LOAD~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oPC_LOAD~1_combout\ = (\instr_rom_i|oQ[10]~45_combout\ & (((!\cpu_top_i|cu_i|oPC_LOAD~0_combout\)))) # (!\instr_rom_i|oQ[10]~45_combout\ & (!\cpu_top_i|sZERO~q\ & (\instr_rom_i|oQ[9]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[10]~45_combout\,
	datab => \cpu_top_i|sZERO~q\,
	datac => \instr_rom_i|oQ[9]~29_combout\,
	datad => \cpu_top_i|cu_i|oPC_LOAD~0_combout\,
	combout => \cpu_top_i|cu_i|oPC_LOAD~1_combout\);

-- Location: LCCOMB_X31_Y12_N26
\cpu_top_i|cu_i|oPC_LOAD~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|cu_i|oPC_LOAD~2_combout\ = (!\cpu_top_i|cu_i|Equal10~0_combout\ & (\instr_rom_i|oQ[11]~27_combout\ $ (!\cpu_top_i|cu_i|oPC_LOAD~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|cu_i|Equal10~0_combout\,
	datab => \instr_rom_i|oQ[11]~27_combout\,
	datad => \cpu_top_i|cu_i|oPC_LOAD~1_combout\,
	combout => \cpu_top_i|cu_i|oPC_LOAD~2_combout\);

-- Location: FF_X28_Y12_N19
\cpu_top_i|pc_i|sCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|pc_i|sCNT[0]~5_combout\,
	asdata => \instr_rom_i|oQ[0]~41_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => \cpu_top_i|cu_i|oPC_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|pc_i|sCNT\(0));

-- Location: LCCOMB_X28_Y12_N20
\cpu_top_i|pc_i|sCNT[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|pc_i|sCNT[1]~7_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT[0]~6\)) # (!\cpu_top_i|pc_i|sCNT\(1) & ((\cpu_top_i|pc_i|sCNT[0]~6\) # (GND)))
-- \cpu_top_i|pc_i|sCNT[1]~8\ = CARRY((!\cpu_top_i|pc_i|sCNT[0]~6\) # (!\cpu_top_i|pc_i|sCNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datad => VCC,
	cin => \cpu_top_i|pc_i|sCNT[0]~6\,
	combout => \cpu_top_i|pc_i|sCNT[1]~7_combout\,
	cout => \cpu_top_i|pc_i|sCNT[1]~8\);

-- Location: FF_X28_Y12_N21
\cpu_top_i|pc_i|sCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|pc_i|sCNT[1]~7_combout\,
	asdata => \instr_rom_i|oQ[1]~21_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => \cpu_top_i|cu_i|oPC_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|pc_i|sCNT\(1));

-- Location: LCCOMB_X28_Y12_N22
\cpu_top_i|pc_i|sCNT[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|pc_i|sCNT[2]~9_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT[1]~8\ $ (GND))) # (!\cpu_top_i|pc_i|sCNT\(2) & (!\cpu_top_i|pc_i|sCNT[1]~8\ & VCC))
-- \cpu_top_i|pc_i|sCNT[2]~10\ = CARRY((\cpu_top_i|pc_i|sCNT\(2) & !\cpu_top_i|pc_i|sCNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datad => VCC,
	cin => \cpu_top_i|pc_i|sCNT[1]~8\,
	combout => \cpu_top_i|pc_i|sCNT[2]~9_combout\,
	cout => \cpu_top_i|pc_i|sCNT[2]~10\);

-- Location: FF_X28_Y12_N23
\cpu_top_i|pc_i|sCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|pc_i|sCNT[2]~9_combout\,
	asdata => \instr_rom_i|oQ[2]~24_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => \cpu_top_i|cu_i|oPC_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|pc_i|sCNT\(2));

-- Location: LCCOMB_X28_Y12_N24
\cpu_top_i|pc_i|sCNT[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|pc_i|sCNT[3]~11_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT[2]~10\)) # (!\cpu_top_i|pc_i|sCNT\(3) & ((\cpu_top_i|pc_i|sCNT[2]~10\) # (GND)))
-- \cpu_top_i|pc_i|sCNT[3]~12\ = CARRY((!\cpu_top_i|pc_i|sCNT[2]~10\) # (!\cpu_top_i|pc_i|sCNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(3),
	datad => VCC,
	cin => \cpu_top_i|pc_i|sCNT[2]~10\,
	combout => \cpu_top_i|pc_i|sCNT[3]~11_combout\,
	cout => \cpu_top_i|pc_i|sCNT[3]~12\);

-- Location: LCCOMB_X30_Y10_N6
\instr_rom_i|oQ[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[3]~10_combout\ = (\cpu_top_i|pc_i|sCNT\(0) & (((\cpu_top_i|pc_i|sCNT\(1) & !\cpu_top_i|pc_i|sCNT\(3))))) # (!\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(4) & ((!\cpu_top_i|pc_i|sCNT\(3)))) # (!\cpu_top_i|pc_i|sCNT\(4) & 
-- (!\cpu_top_i|pc_i|sCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[3]~10_combout\);

-- Location: LCCOMB_X30_Y10_N8
\instr_rom_i|oQ[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[3]~11_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (!\cpu_top_i|pc_i|sCNT\(4) & (\cpu_top_i|pc_i|sCNT\(1) $ (!\cpu_top_i|pc_i|sCNT\(0))))) # (!\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(4) $ (((\cpu_top_i|pc_i|sCNT\(1)) # 
-- (\cpu_top_i|pc_i|sCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[3]~11_combout\);

-- Location: LCCOMB_X30_Y10_N26
\instr_rom_i|oQ[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[3]~40_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & ((\instr_rom_i|oQ[3]~11_combout\))) # (!\cpu_top_i|pc_i|sCNT\(2) & (\instr_rom_i|oQ[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[3]~10_combout\,
	datac => \instr_rom_i|oQ[3]~11_combout\,
	datad => \cpu_top_i|pc_i|sCNT\(2),
	combout => \instr_rom_i|oQ[3]~40_combout\);

-- Location: FF_X28_Y12_N25
\cpu_top_i|pc_i|sCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|pc_i|sCNT[3]~11_combout\,
	asdata => \instr_rom_i|oQ[3]~40_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => \cpu_top_i|cu_i|oPC_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|pc_i|sCNT\(3));

-- Location: LCCOMB_X28_Y12_N26
\cpu_top_i|pc_i|sCNT[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|pc_i|sCNT[4]~13_combout\ = \cpu_top_i|pc_i|sCNT\(4) $ (!\cpu_top_i|pc_i|sCNT[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	cin => \cpu_top_i|pc_i|sCNT[3]~12\,
	combout => \cpu_top_i|pc_i|sCNT[4]~13_combout\);

-- Location: LCCOMB_X26_Y11_N30
\instr_rom_i|oQ[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[4]~32_combout\ = (\cpu_top_i|pc_i|sCNT\(4) & ((\cpu_top_i|pc_i|sCNT\(0) $ (\cpu_top_i|pc_i|sCNT\(1))))) # (!\cpu_top_i|pc_i|sCNT\(4) & (!\cpu_top_i|pc_i|sCNT\(2) & (\cpu_top_i|pc_i|sCNT\(0) & \cpu_top_i|pc_i|sCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \cpu_top_i|pc_i|sCNT\(2),
	datac => \cpu_top_i|pc_i|sCNT\(0),
	datad => \cpu_top_i|pc_i|sCNT\(1),
	combout => \instr_rom_i|oQ[4]~32_combout\);

-- Location: LCCOMB_X26_Y11_N0
\instr_rom_i|oQ[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[4]~33_combout\ = (\cpu_top_i|pc_i|sCNT\(1) & (!\cpu_top_i|pc_i|sCNT\(3) & (\instr_rom_i|oQ[4]~32_combout\))) # (!\cpu_top_i|pc_i|sCNT\(1) & ((\instr_rom_i|oQ[4]~15_combout\) # ((!\cpu_top_i|pc_i|sCNT\(3) & 
-- \instr_rom_i|oQ[4]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(3),
	datac => \instr_rom_i|oQ[4]~32_combout\,
	datad => \instr_rom_i|oQ[4]~15_combout\,
	combout => \instr_rom_i|oQ[4]~33_combout\);

-- Location: FF_X28_Y12_N27
\cpu_top_i|pc_i|sCNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \cpu_top_i|pc_i|sCNT[4]~13_combout\,
	asdata => \instr_rom_i|oQ[4]~33_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => \cpu_top_i|cu_i|oPC_LOAD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|pc_i|sCNT\(4));

-- Location: LCCOMB_X28_Y12_N2
\instr_rom_i|oQ[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[2]~23_combout\ = (\cpu_top_i|pc_i|sCNT\(3) & (\cpu_top_i|pc_i|sCNT\(2) & ((\cpu_top_i|pc_i|sCNT\(0))))) # (!\cpu_top_i|pc_i|sCNT\(3) & ((\cpu_top_i|pc_i|sCNT\(0) & ((\cpu_top_i|pc_i|sCNT\(1)))) # (!\cpu_top_i|pc_i|sCNT\(0) & 
-- (!\cpu_top_i|pc_i|sCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(2),
	datab => \cpu_top_i|pc_i|sCNT\(1),
	datac => \cpu_top_i|pc_i|sCNT\(3),
	datad => \cpu_top_i|pc_i|sCNT\(0),
	combout => \instr_rom_i|oQ[2]~23_combout\);

-- Location: LCCOMB_X28_Y12_N28
\instr_rom_i|oQ[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[2]~22_combout\ = (\cpu_top_i|pc_i|sCNT\(2) & (\instr_rom_i|oQ[2]~18_combout\ & ((!\cpu_top_i|pc_i|sCNT\(0)) # (!\cpu_top_i|pc_i|sCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(1),
	datab => \cpu_top_i|pc_i|sCNT\(0),
	datac => \cpu_top_i|pc_i|sCNT\(2),
	datad => \instr_rom_i|oQ[2]~18_combout\,
	combout => \instr_rom_i|oQ[2]~22_combout\);

-- Location: LCCOMB_X28_Y12_N4
\instr_rom_i|oQ[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instr_rom_i|oQ[2]~24_combout\ = (\instr_rom_i|oQ[2]~22_combout\) # ((!\cpu_top_i|pc_i|sCNT\(4) & \instr_rom_i|oQ[2]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|pc_i|sCNT\(4),
	datab => \instr_rom_i|oQ[2]~23_combout\,
	datad => \instr_rom_i|oQ[2]~22_combout\,
	combout => \instr_rom_i|oQ[2]~24_combout\);

-- Location: FF_X27_Y12_N1
\cpu_top_i|r6_i|sREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \cpu_top_i|alu_i|oC[0]~8_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cpu_top_i|cu_i|oREG_WE[6]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu_top_i|r6_i|sREG\(0));

-- Location: LCCOMB_X27_Y12_N0
\cpu_top_i|mubx_i|oQ[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[0]~10_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r7_i|sREG\(0)) # ((!\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r6_i|sREG\(0) & \instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r7_i|sREG\(0),
	datab => \instr_rom_i|oQ[0]~41_combout\,
	datac => \cpu_top_i|r6_i|sREG\(0),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[0]~10_combout\);

-- Location: LCCOMB_X27_Y12_N6
\cpu_top_i|mubx_i|oQ[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[0]~11_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & (((\cpu_top_i|mubx_i|oQ[0]~10_combout\)))) # (!\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~10_combout\ & (\cpu_top_i|r5_i|sREG\(0))) # 
-- (!\cpu_top_i|mubx_i|oQ[0]~10_combout\ & ((\cpu_top_i|r4_i|sREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|r5_i|sREG\(0),
	datab => \instr_rom_i|oQ[1]~21_combout\,
	datac => \cpu_top_i|r4_i|sREG\(0),
	datad => \cpu_top_i|mubx_i|oQ[0]~10_combout\,
	combout => \cpu_top_i|mubx_i|oQ[0]~11_combout\);

-- Location: LCCOMB_X29_Y12_N0
\cpu_top_i|mubx_i|oQ[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[0]~12_combout\ = (\instr_rom_i|oQ[0]~41_combout\ & ((\cpu_top_i|r1_i|sREG\(0)) # ((\instr_rom_i|oQ[1]~21_combout\)))) # (!\instr_rom_i|oQ[0]~41_combout\ & (((\cpu_top_i|r0_i|sREG\(0) & !\instr_rom_i|oQ[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[0]~41_combout\,
	datab => \cpu_top_i|r1_i|sREG\(0),
	datac => \cpu_top_i|r0_i|sREG\(0),
	datad => \instr_rom_i|oQ[1]~21_combout\,
	combout => \cpu_top_i|mubx_i|oQ[0]~12_combout\);

-- Location: LCCOMB_X29_Y12_N24
\cpu_top_i|mubx_i|oQ[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[0]~13_combout\ = (\instr_rom_i|oQ[1]~21_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~12_combout\ & ((\cpu_top_i|r3_i|sREG\(0)))) # (!\cpu_top_i|mubx_i|oQ[0]~12_combout\ & (\cpu_top_i|r2_i|sREG\(0))))) # (!\instr_rom_i|oQ[1]~21_combout\ & 
-- (((\cpu_top_i|mubx_i|oQ[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr_rom_i|oQ[1]~21_combout\,
	datab => \cpu_top_i|r2_i|sREG\(0),
	datac => \cpu_top_i|r3_i|sREG\(0),
	datad => \cpu_top_i|mubx_i|oQ[0]~12_combout\,
	combout => \cpu_top_i|mubx_i|oQ[0]~13_combout\);

-- Location: LCCOMB_X28_Y12_N30
\cpu_top_i|mubx_i|oQ[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|mubx_i|oQ[0]~14_combout\ = (\instr_rom_i|oQ[2]~24_combout\ & (\cpu_top_i|mubx_i|oQ[0]~11_combout\)) # (!\instr_rom_i|oQ[2]~24_combout\ & ((\cpu_top_i|mubx_i|oQ[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instr_rom_i|oQ[2]~24_combout\,
	datac => \cpu_top_i|mubx_i|oQ[0]~11_combout\,
	datad => \cpu_top_i|mubx_i|oQ[0]~13_combout\,
	combout => \cpu_top_i|mubx_i|oQ[0]~14_combout\);

-- Location: LCCOMB_X32_Y12_N30
\cpu_top_i|alu_i|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|Add1~0_combout\ = (\instr_rom_i|oQ[11]~27_combout\) # ((\cpu_top_i|mubx_i|oQ[0]~14_combout\ & ((\instr_rom_i|oQ[9]~29_combout\) # (!\instr_rom_i|oQ[10]~45_combout\))) # (!\cpu_top_i|mubx_i|oQ[0]~14_combout\ & 
-- ((\instr_rom_i|oQ[10]~45_combout\) # (!\instr_rom_i|oQ[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \instr_rom_i|oQ[10]~45_combout\,
	datac => \instr_rom_i|oQ[11]~27_combout\,
	datad => \instr_rom_i|oQ[9]~29_combout\,
	combout => \cpu_top_i|alu_i|Add1~0_combout\);

-- Location: LCCOMB_X32_Y15_N8
\cpu_top_i|alu_i|oC[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[0]~6_combout\ = (\cpu_top_i|mubx_i|oQ[0]~14_combout\ & (\cpu_top_i|alu_i|oC[0]~5_combout\ & \cpu_top_i|muxa_i|oQ[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|mubx_i|oQ[0]~14_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~5_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~34_combout\,
	combout => \cpu_top_i|alu_i|oC[0]~6_combout\);

-- Location: LCCOMB_X32_Y15_N16
\cpu_top_i|alu_i|oC[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[0]~4_combout\ = (!\cpu_top_i|alu_i|oC[15]~53_combout\ & (\cpu_top_i|alu_i|oC[15]~2_combout\ $ (\cpu_top_i|muxa_i|oQ[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|oC[15]~2_combout\,
	datab => \cpu_top_i|alu_i|oC[15]~53_combout\,
	datad => \cpu_top_i|muxa_i|oQ[0]~34_combout\,
	combout => \cpu_top_i|alu_i|oC[0]~4_combout\);

-- Location: LCCOMB_X32_Y15_N22
\cpu_top_i|alu_i|oC[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cpu_top_i|alu_i|oC[0]~8_combout\ = (\cpu_top_i|alu_i|oC[0]~6_combout\) # ((\cpu_top_i|alu_i|oC[0]~4_combout\) # ((\cpu_top_i|alu_i|Add1~3_combout\ & \cpu_top_i|alu_i|oC[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_top_i|alu_i|Add1~3_combout\,
	datab => \cpu_top_i|alu_i|oC[0]~7_combout\,
	datac => \cpu_top_i|alu_i|oC[0]~6_combout\,
	datad => \cpu_top_i|alu_i|oC[0]~4_combout\,
	combout => \cpu_top_i|alu_i|oC[0]~8_combout\);

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

ww_oLED(0) <= \oLED[0]~output_o\;

ww_oLED(1) <= \oLED[1]~output_o\;

ww_oLED(2) <= \oLED[2]~output_o\;

ww_oLED(3) <= \oLED[3]~output_o\;

ww_oLED(4) <= \oLED[4]~output_o\;

ww_oLED(5) <= \oLED[5]~output_o\;

ww_oLED(6) <= \oLED[6]~output_o\;

ww_oLED(7) <= \oLED[7]~output_o\;

ww_oLED(8) <= \oLED[8]~output_o\;

ww_oLED(9) <= \oLED[9]~output_o\;

ww_oLED(10) <= \oLED[10]~output_o\;

ww_oLED(11) <= \oLED[11]~output_o\;

ww_oLED(12) <= \oLED[12]~output_o\;

ww_oLED(13) <= \oLED[13]~output_o\;

ww_oLED(14) <= \oLED[14]~output_o\;

ww_oLED(15) <= \oLED[15]~output_o\;
END structure;


