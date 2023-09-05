-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/06/2023 01:13:43"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Az1 IS
    PORT (
	R3 : OUT std_logic;
	D0 : IN std_logic_vector(3 DOWNTO 0);
	D1 : IN std_logic_vector(3 DOWNTO 0);
	D2 : IN std_logic_vector(3 DOWNTO 0);
	D3 : IN std_logic_vector(3 DOWNTO 0);
	R11 : OUT std_logic
	);
END Az1;

-- Design Ports Information
-- R3	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R11	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Az1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R3 : std_logic;
SIGNAL ww_D0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R11 : std_logic;
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \R11~output_o\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \inst|inst19~1_combout\ : std_logic;
SIGNAL \D0[1]~input_o\ : std_logic;
SIGNAL \D0[0]~input_o\ : std_logic;
SIGNAL \D0[2]~input_o\ : std_logic;
SIGNAL \D0[3]~input_o\ : std_logic;
SIGNAL \inst|inst19~3_combout\ : std_logic;
SIGNAL \inst|inst19~5_combout\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \inst|inst19~6_combout\ : std_logic;
SIGNAL \inst|inst19~7_combout\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \inst|inst19~4_combout\ : std_logic;
SIGNAL \inst|inst19~9_combout\ : std_logic;
SIGNAL \inst|inst19~8_combout\ : std_logic;
SIGNAL \inst|inst19~2_combout\ : std_logic;
SIGNAL \inst|inst19~10_combout\ : std_logic;
SIGNAL \inst|inst19~0_combout\ : std_logic;
SIGNAL \inst|inst19~11_combout\ : std_logic;
SIGNAL \inst|inst19~12_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst2|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst2|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst6~2_combout\ : std_logic;
SIGNAL \inst3|inst1|inst1|inst2~combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst4~1_combout\ : std_logic;
SIGNAL \inst3|inst|inst3|inst4~2_combout\ : std_logic;
SIGNAL \inst3|inst26|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst5|inst1|inst2~combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst6~1_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst6~2_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst4~1_combout\ : std_logic;
SIGNAL \inst3|inst2|inst3|inst4~2_combout\ : std_logic;
SIGNAL \inst3|inst5|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst22~0_combout\ : std_logic;
SIGNAL \inst3|inst14~combout\ : std_logic;
SIGNAL \inst3|inst26|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst15~combout\ : std_logic;
SIGNAL \inst3|inst18~0_combout\ : std_logic;
SIGNAL \inst3|inst11~0_combout\ : std_logic;
SIGNAL \inst3|inst24~0_combout\ : std_logic;
SIGNAL \inst3|inst2|inst1|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst27|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst1|inst6~0_combout\ : std_logic;
SIGNAL \inst3|inst26|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst24~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst19~12_combout\ : std_logic;

BEGIN

R3 <= ww_R3;
ww_D0 <= D0;
ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
R11 <= ww_R11;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_inst19~12_combout\ <= NOT \inst|inst19~12_combout\;

-- Location: IOOBUF_X33_Y15_N2
\R3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst19~12_combout\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\R11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst24~combout\,
	devoe => ww_devoe,
	o => \R11~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\D3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\D3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\D3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\D3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: LCCOMB_X17_Y8_N2
\inst|inst19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~1_combout\ = (\D3[2]~input_o\ & ((\D3[0]~input_o\ $ (!\D3[1]~input_o\)))) # (!\D3[2]~input_o\ & (!\D3[3]~input_o\ & (\D3[0]~input_o\ & !\D3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[3]~input_o\,
	datab => \D3[0]~input_o\,
	datac => \D3[1]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst|inst19~1_combout\);

-- Location: IOIBUF_X24_Y0_N8
\D0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(1),
	o => \D0[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\D0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(0),
	o => \D0[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\D0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(2),
	o => \D0[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\D0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0(3),
	o => \D0[3]~input_o\);

-- Location: LCCOMB_X18_Y9_N2
\inst|inst19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~3_combout\ = (\D0[2]~input_o\ & (\D0[1]~input_o\ $ ((!\D0[0]~input_o\)))) # (!\D0[2]~input_o\ & (!\D0[1]~input_o\ & (\D0[0]~input_o\ & !\D0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D0[2]~input_o\,
	datad => \D0[3]~input_o\,
	combout => \inst|inst19~3_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst|inst19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~5_combout\ = (\D0[1]~input_o\ & (!\D0[0]~input_o\ & (!\D0[2]~input_o\))) # (!\D0[1]~input_o\ & ((\D0[0]~input_o\ & (\D0[2]~input_o\)) # (!\D0[0]~input_o\ & ((\D0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D0[2]~input_o\,
	datad => \D0[3]~input_o\,
	combout => \inst|inst19~5_combout\);

-- Location: IOIBUF_X16_Y0_N8
\D1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\D1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\D1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\D1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: LCCOMB_X17_Y8_N4
\inst|inst19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~6_combout\ = (\D1[1]~input_o\ & (!\D1[2]~input_o\ & ((!\D1[0]~input_o\)))) # (!\D1[1]~input_o\ & ((\D1[0]~input_o\ & (\D1[2]~input_o\)) # (!\D1[0]~input_o\ & ((\D1[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[2]~input_o\,
	datab => \D1[1]~input_o\,
	datac => \D1[3]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst|inst19~6_combout\);

-- Location: LCCOMB_X17_Y8_N14
\inst|inst19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~7_combout\ = (\D3[0]~input_o\ & (((!\D3[1]~input_o\ & \D3[2]~input_o\)))) # (!\D3[0]~input_o\ & ((\D3[1]~input_o\ & ((!\D3[2]~input_o\))) # (!\D3[1]~input_o\ & (\D3[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[3]~input_o\,
	datab => \D3[0]~input_o\,
	datac => \D3[1]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst|inst19~7_combout\);

-- Location: IOIBUF_X12_Y0_N8
\D2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\D2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\D2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: LCCOMB_X18_Y9_N4
\inst|inst19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~4_combout\ = (\D2[1]~input_o\ & (!\D2[2]~input_o\ & ((!\D2[0]~input_o\)))) # (!\D2[1]~input_o\ & ((\D2[0]~input_o\ & (\D2[2]~input_o\)) # (!\D2[0]~input_o\ & ((\D2[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[1]~input_o\,
	datab => \D2[2]~input_o\,
	datac => \D2[3]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst|inst19~4_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst|inst19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~9_combout\ = (\inst|inst19~5_combout\ & (\inst|inst19~6_combout\ $ (\inst|inst19~7_combout\ $ (\inst|inst19~4_combout\)))) # (!\inst|inst19~5_combout\ & ((\inst|inst19~6_combout\ & (\inst|inst19~7_combout\ $ (\inst|inst19~4_combout\))) # 
-- (!\inst|inst19~6_combout\ & (\inst|inst19~7_combout\ & \inst|inst19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~5_combout\,
	datab => \inst|inst19~6_combout\,
	datac => \inst|inst19~7_combout\,
	datad => \inst|inst19~4_combout\,
	combout => \inst|inst19~9_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst|inst19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~8_combout\ = (\inst|inst19~5_combout\ & ((\inst|inst19~6_combout\ & (\inst|inst19~7_combout\ & \inst|inst19~4_combout\)) # (!\inst|inst19~6_combout\ & (!\inst|inst19~7_combout\ & !\inst|inst19~4_combout\)))) # (!\inst|inst19~5_combout\ & 
-- ((\inst|inst19~6_combout\ & (!\inst|inst19~7_combout\ & !\inst|inst19~4_combout\)) # (!\inst|inst19~6_combout\ & (\inst|inst19~7_combout\ $ (\inst|inst19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~5_combout\,
	datab => \inst|inst19~6_combout\,
	datac => \inst|inst19~7_combout\,
	datad => \inst|inst19~4_combout\,
	combout => \inst|inst19~8_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst|inst19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~2_combout\ = (\D2[2]~input_o\ & (\D2[1]~input_o\ $ (((!\D2[0]~input_o\))))) # (!\D2[2]~input_o\ & (!\D2[1]~input_o\ & (!\D2[3]~input_o\ & \D2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[1]~input_o\,
	datab => \D2[2]~input_o\,
	datac => \D2[3]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst|inst19~2_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|inst19~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~10_combout\ = (\inst|inst19~3_combout\ & ((\inst|inst19~9_combout\ & (\inst|inst19~8_combout\ & !\inst|inst19~2_combout\)) # (!\inst|inst19~9_combout\ & (\inst|inst19~8_combout\ $ (!\inst|inst19~2_combout\))))) # (!\inst|inst19~3_combout\ & 
-- ((\inst|inst19~9_combout\ & (\inst|inst19~8_combout\ $ (!\inst|inst19~2_combout\))) # (!\inst|inst19~9_combout\ & (!\inst|inst19~8_combout\ & \inst|inst19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~3_combout\,
	datab => \inst|inst19~9_combout\,
	datac => \inst|inst19~8_combout\,
	datad => \inst|inst19~2_combout\,
	combout => \inst|inst19~10_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst|inst19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~0_combout\ = (\D1[2]~input_o\ & (\D1[1]~input_o\ $ (((!\D1[0]~input_o\))))) # (!\D1[2]~input_o\ & (!\D1[1]~input_o\ & (!\D1[3]~input_o\ & \D1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[2]~input_o\,
	datab => \D1[1]~input_o\,
	datac => \D1[3]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst|inst19~0_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst|inst19~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~11_combout\ = (\inst|inst19~3_combout\ & (\inst|inst19~9_combout\ $ (((!\inst|inst19~8_combout\ & \inst|inst19~2_combout\))))) # (!\inst|inst19~3_combout\ & ((\inst|inst19~2_combout\ & (\inst|inst19~9_combout\)) # (!\inst|inst19~2_combout\ & 
-- ((\inst|inst19~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~3_combout\,
	datab => \inst|inst19~9_combout\,
	datac => \inst|inst19~8_combout\,
	datad => \inst|inst19~2_combout\,
	combout => \inst|inst19~11_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst|inst19~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst19~12_combout\ = (\inst|inst19~11_combout\ & (\inst|inst19~1_combout\ $ (\inst|inst19~10_combout\ $ (!\inst|inst19~0_combout\)))) # (!\inst|inst19~11_combout\ & ((\inst|inst19~1_combout\ & ((!\inst|inst19~0_combout\) # 
-- (!\inst|inst19~10_combout\))) # (!\inst|inst19~1_combout\ & ((\inst|inst19~10_combout\) # (\inst|inst19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst19~1_combout\,
	datab => \inst|inst19~10_combout\,
	datac => \inst|inst19~0_combout\,
	datad => \inst|inst19~11_combout\,
	combout => \inst|inst19~12_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst3|inst2|inst3|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst4~0_combout\ = (\D3[1]~input_o\ & ((\D1[1]~input_o\) # ((\D3[0]~input_o\ & \D1[0]~input_o\)))) # (!\D3[1]~input_o\ & (\D3[0]~input_o\ & (\D1[1]~input_o\ & \D1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[0]~input_o\,
	datab => \D3[1]~input_o\,
	datac => \D1[1]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst3|inst2|inst3|inst4~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst3|inst2|inst2|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst2|inst6~0_combout\ = \inst3|inst2|inst3|inst4~0_combout\ $ (\D1[2]~input_o\ $ (\D3[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst3|inst4~0_combout\,
	datac => \D1[2]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst3|inst2|inst2|inst6~0_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst3|inst|inst3|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst4~0_combout\ = (\D0[1]~input_o\ & ((\D2[1]~input_o\) # ((\D0[0]~input_o\ & \D2[0]~input_o\)))) # (!\D0[1]~input_o\ & (\D0[0]~input_o\ & (\D2[1]~input_o\ & \D2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D2[1]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst3|inst|inst3|inst4~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst3|inst|inst2|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst2|inst6~0_combout\ = \D0[2]~input_o\ $ (\inst3|inst|inst3|inst4~0_combout\ $ (\D2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[2]~input_o\,
	datab => \inst3|inst|inst3|inst4~0_combout\,
	datac => \D2[2]~input_o\,
	combout => \inst3|inst|inst2|inst6~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst3|inst|inst3|inst6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst6~1_combout\ = (\D0[1]~input_o\ & ((\D2[1]~input_o\) # ((\D0[0]~input_o\ & \D2[0]~input_o\)))) # (!\D0[1]~input_o\ & (\D0[0]~input_o\ & (\D2[1]~input_o\ & \D2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D2[1]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst3|inst|inst3|inst6~1_combout\);

-- Location: LCCOMB_X18_Y9_N22
\inst3|inst|inst3|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst6~0_combout\ = \D2[3]~input_o\ $ (\D0[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D2[3]~input_o\,
	datad => \D0[3]~input_o\,
	combout => \inst3|inst|inst3|inst6~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst3|inst|inst3|inst6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst6~2_combout\ = \inst3|inst|inst3|inst6~0_combout\ $ (((\D0[2]~input_o\ & ((\inst3|inst|inst3|inst6~1_combout\) # (\D2[2]~input_o\))) # (!\D0[2]~input_o\ & (\inst3|inst|inst3|inst6~1_combout\ & \D2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[2]~input_o\,
	datab => \inst3|inst|inst3|inst6~1_combout\,
	datac => \D2[2]~input_o\,
	datad => \inst3|inst|inst3|inst6~0_combout\,
	combout => \inst3|inst|inst3|inst6~2_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst3|inst1|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst1|inst1|inst2~combout\ = (\D0[1]~input_o\ & (!\D2[1]~input_o\ & (\D0[0]~input_o\ $ (\D2[0]~input_o\)))) # (!\D0[1]~input_o\ & (\D2[1]~input_o\ & (\D0[0]~input_o\ $ (\D2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D2[1]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst3|inst1|inst1|inst2~combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst3|inst|inst3|inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst4~1_combout\ = (\D0[2]~input_o\ & ((\inst3|inst|inst3|inst4~0_combout\) # (\D2[2]~input_o\))) # (!\D0[2]~input_o\ & (\inst3|inst|inst3|inst4~0_combout\ & \D2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[2]~input_o\,
	datab => \inst3|inst|inst3|inst4~0_combout\,
	datac => \D2[2]~input_o\,
	combout => \inst3|inst|inst3|inst4~1_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst3|inst|inst3|inst4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst3|inst4~2_combout\ = (\inst3|inst|inst3|inst4~1_combout\ & ((\D2[3]~input_o\) # (\D0[3]~input_o\))) # (!\inst3|inst|inst3|inst4~1_combout\ & (\D2[3]~input_o\ & \D0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst3|inst4~1_combout\,
	datac => \D2[3]~input_o\,
	datad => \D0[3]~input_o\,
	combout => \inst3|inst|inst3|inst4~2_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst3|inst26|inst1|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst26|inst1|inst2~0_combout\ = (\inst3|inst|inst2|inst6~0_combout\ & ((\inst3|inst1|inst1|inst2~combout\) # ((!\inst3|inst|inst3|inst6~2_combout\ & !\inst3|inst|inst3|inst4~2_combout\)))) # (!\inst3|inst|inst2|inst6~0_combout\ & 
-- (((!\inst3|inst1|inst1|inst2~combout\ & \inst3|inst|inst3|inst4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2|inst6~0_combout\,
	datab => \inst3|inst|inst3|inst6~2_combout\,
	datac => \inst3|inst1|inst1|inst2~combout\,
	datad => \inst3|inst|inst3|inst4~2_combout\,
	combout => \inst3|inst26|inst1|inst2~0_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst3|inst5|inst1|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst5|inst1|inst2~combout\ = (\D3[0]~input_o\ & (!\D1[0]~input_o\ & (\D3[1]~input_o\ $ (\D1[1]~input_o\)))) # (!\D3[0]~input_o\ & (\D1[0]~input_o\ & (\D3[1]~input_o\ $ (\D1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[0]~input_o\,
	datab => \D3[1]~input_o\,
	datac => \D1[1]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst3|inst5|inst1|inst2~combout\);

-- Location: LCCOMB_X17_Y8_N12
\inst3|inst2|inst3|inst6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst6~1_combout\ = (\D3[1]~input_o\ & ((\D1[1]~input_o\) # ((\D3[0]~input_o\ & \D1[0]~input_o\)))) # (!\D3[1]~input_o\ & (\D3[0]~input_o\ & (\D1[1]~input_o\ & \D1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[0]~input_o\,
	datab => \D3[1]~input_o\,
	datac => \D1[1]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst3|inst2|inst3|inst6~1_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst3|inst2|inst3|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst6~0_combout\ = \D1[3]~input_o\ $ (\D3[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D1[3]~input_o\,
	datad => \D3[3]~input_o\,
	combout => \inst3|inst2|inst3|inst6~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
\inst3|inst2|inst3|inst6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst6~2_combout\ = \inst3|inst2|inst3|inst6~0_combout\ $ (((\inst3|inst2|inst3|inst6~1_combout\ & ((\D1[2]~input_o\) # (\D3[2]~input_o\))) # (!\inst3|inst2|inst3|inst6~1_combout\ & (\D1[2]~input_o\ & \D3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst3|inst6~1_combout\,
	datab => \inst3|inst2|inst3|inst6~0_combout\,
	datac => \D1[2]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst3|inst2|inst3|inst6~2_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst3|inst2|inst3|inst4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst4~1_combout\ = (\inst3|inst2|inst3|inst4~0_combout\ & ((\D1[2]~input_o\) # (\D3[2]~input_o\))) # (!\inst3|inst2|inst3|inst4~0_combout\ & (\D1[2]~input_o\ & \D3[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst3|inst4~0_combout\,
	datac => \D1[2]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst3|inst2|inst3|inst4~1_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst3|inst2|inst3|inst4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst3|inst4~2_combout\ = (\inst3|inst2|inst3|inst4~1_combout\ & ((\D1[3]~input_o\) # (\D3[3]~input_o\))) # (!\inst3|inst2|inst3|inst4~1_combout\ & (\D1[3]~input_o\ & \D3[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst3|inst4~1_combout\,
	datac => \D1[3]~input_o\,
	datad => \D3[3]~input_o\,
	combout => \inst3|inst2|inst3|inst4~2_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst3|inst5|inst2|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst5|inst2|inst4~0_combout\ = (\inst3|inst5|inst1|inst2~combout\) # (\inst3|inst2|inst3|inst4~0_combout\ $ (\D1[2]~input_o\ $ (\D3[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|inst1|inst2~combout\,
	datab => \inst3|inst2|inst3|inst4~0_combout\,
	datac => \D1[2]~input_o\,
	datad => \D3[2]~input_o\,
	combout => \inst3|inst5|inst2|inst4~0_combout\);

-- Location: LCCOMB_X17_Y9_N18
\inst3|inst22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst22~0_combout\ = (\inst3|inst2|inst3|inst4~2_combout\) # ((\inst3|inst2|inst3|inst6~2_combout\ & \inst3|inst5|inst2|inst4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst2|inst3|inst6~2_combout\,
	datac => \inst3|inst2|inst3|inst4~2_combout\,
	datad => \inst3|inst5|inst2|inst4~0_combout\,
	combout => \inst3|inst22~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst3|inst14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst14~combout\ = \inst3|inst2|inst2|inst6~0_combout\ $ (\inst3|inst26|inst1|inst2~0_combout\ $ (((!\inst3|inst5|inst1|inst2~combout\ & \inst3|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst2|inst6~0_combout\,
	datab => \inst3|inst26|inst1|inst2~0_combout\,
	datac => \inst3|inst5|inst1|inst2~combout\,
	datad => \inst3|inst22~0_combout\,
	combout => \inst3|inst14~combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst3|inst26|inst|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst26|inst|inst2~0_combout\ = (\inst3|inst|inst3|inst6~2_combout\ & (!\inst3|inst|inst2|inst6~0_combout\ & (!\inst3|inst1|inst1|inst2~combout\))) # (!\inst3|inst|inst3|inst6~2_combout\ & (\inst3|inst|inst3|inst4~2_combout\ & 
-- ((\inst3|inst|inst2|inst6~0_combout\) # (\inst3|inst1|inst1|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2|inst6~0_combout\,
	datab => \inst3|inst|inst3|inst6~2_combout\,
	datac => \inst3|inst1|inst1|inst2~combout\,
	datad => \inst3|inst|inst3|inst4~2_combout\,
	combout => \inst3|inst26|inst|inst2~0_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst3|inst15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst15~combout\ = \inst3|inst26|inst|inst2~0_combout\ $ (((\inst3|inst2|inst3|inst6~2_combout\ & (!\inst3|inst5|inst2|inst4~0_combout\)) # (!\inst3|inst2|inst3|inst6~2_combout\ & (\inst3|inst5|inst2|inst4~0_combout\ & 
-- \inst3|inst2|inst3|inst4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst3|inst6~2_combout\,
	datab => \inst3|inst5|inst2|inst4~0_combout\,
	datac => \inst3|inst2|inst3|inst4~2_combout\,
	datad => \inst3|inst26|inst|inst2~0_combout\,
	combout => \inst3|inst15~combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst3|inst18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst18~0_combout\ = (\inst3|inst|inst3|inst4~2_combout\) # ((\inst3|inst|inst3|inst6~2_combout\ & ((\inst3|inst|inst2|inst6~0_combout\) # (\inst3|inst1|inst1|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst2|inst6~0_combout\,
	datab => \inst3|inst|inst3|inst6~2_combout\,
	datac => \inst3|inst1|inst1|inst2~combout\,
	datad => \inst3|inst|inst3|inst4~2_combout\,
	combout => \inst3|inst18~0_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst3|inst11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst11~0_combout\ = \D0[0]~input_o\ $ (\D3[0]~input_o\ $ (\D2[0]~input_o\ $ (\D1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[0]~input_o\,
	datab => \D3[0]~input_o\,
	datac => \D2[0]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst3|inst11~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst3|inst24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst24~0_combout\ = (!\inst3|inst15~combout\ & (\inst3|inst18~0_combout\ $ (\inst3|inst11~0_combout\ $ (!\inst3|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst15~combout\,
	datab => \inst3|inst18~0_combout\,
	datac => \inst3|inst11~0_combout\,
	datad => \inst3|inst22~0_combout\,
	combout => \inst3|inst24~0_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst3|inst2|inst1|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst1|inst6~0_combout\ = \D3[1]~input_o\ $ (\D1[1]~input_o\ $ (((\D3[0]~input_o\ & \D1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[0]~input_o\,
	datab => \D3[1]~input_o\,
	datac => \D1[1]~input_o\,
	datad => \D1[0]~input_o\,
	combout => \inst3|inst2|inst1|inst6~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst3|inst27|inst2|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst27|inst2|inst2~0_combout\ = \inst3|inst2|inst1|inst6~0_combout\ $ (((\inst3|inst22~0_combout\ & (\D1[0]~input_o\ $ (\D3[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst1|inst6~0_combout\,
	datab => \D1[0]~input_o\,
	datac => \inst3|inst22~0_combout\,
	datad => \D3[0]~input_o\,
	combout => \inst3|inst27|inst2|inst2~0_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst3|inst|inst1|inst6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst|inst1|inst6~0_combout\ = \D0[1]~input_o\ $ (\D2[1]~input_o\ $ (((\D0[0]~input_o\ & \D2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0[1]~input_o\,
	datab => \D0[0]~input_o\,
	datac => \D2[1]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \inst3|inst|inst1|inst6~0_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst3|inst26|inst2|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst26|inst2|inst2~0_combout\ = \inst3|inst|inst1|inst6~0_combout\ $ (((\inst3|inst18~0_combout\ & (\D2[0]~input_o\ $ (\D0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[0]~input_o\,
	datab => \inst3|inst18~0_combout\,
	datac => \inst3|inst|inst1|inst6~0_combout\,
	datad => \D0[0]~input_o\,
	combout => \inst3|inst26|inst2|inst2~0_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst3|inst24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst24~combout\ = (!\inst3|inst14~combout\ & (\inst3|inst24~0_combout\ & (\inst3|inst27|inst2|inst2~0_combout\ $ (!\inst3|inst26|inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst14~combout\,
	datab => \inst3|inst24~0_combout\,
	datac => \inst3|inst27|inst2|inst2~0_combout\,
	datad => \inst3|inst26|inst2|inst2~0_combout\,
	combout => \inst3|inst24~combout\);

ww_R3 <= \R3~output_o\;

ww_R11 <= \R11~output_o\;
END structure;


