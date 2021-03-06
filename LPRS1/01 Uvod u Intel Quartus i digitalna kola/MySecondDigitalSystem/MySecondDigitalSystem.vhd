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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Tue Oct 19 18:51:48 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MySecondDigitalSystem IS 
	PORT
	(
		iX0 :  IN  STD_LOGIC;
		iX1 :  IN  STD_LOGIC;
		iX2 :  IN  STD_LOGIC;
		oY0 :  OUT  STD_LOGIC;
		oY1 :  OUT  STD_LOGIC;
		oY2 :  OUT  STD_LOGIC
	);
END MySecondDigitalSystem;

ARCHITECTURE bdf_type OF MySecondDigitalSystem IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_3 <= iX2 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_8 <= iX1 AND SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_2 AND iX2;


oY2 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_2 <= NOT(iX0);



SYNTHESIZED_WIRE_9 <= iX0 AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_0 <= NOT(iX1);



SYNTHESIZED_WIRE_7 <= NOT(iX2);



SYNTHESIZED_WIRE_4 <= iX1 AND SYNTHESIZED_WIRE_7 AND iX0;


oY0 <= NOT(iX0);



SYNTHESIZED_WIRE_1 <= NOT(iX2);



SYNTHESIZED_WIRE_6 <= NOT(iX1);



oY1 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9;


END bdf_type;