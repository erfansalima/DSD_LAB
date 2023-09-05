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

-- DATE "07/15/2023 13:49:29"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stack IS
    PORT (
	Clk : IN std_logic;
	RstN : IN std_logic;
	Data_In : IN std_logic_vector(3 DOWNTO 0);
	Push : IN std_logic;
	Pop : IN std_logic;
	Data_Out : OUT std_logic_vector(3 DOWNTO 0);
	Full : OUT std_logic;
	Empty : OUT std_logic
	);
END stack;

-- Design Ports Information
-- Data_Out[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Full	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Empty	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RstN	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pop	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Push	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_In[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stack IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_RstN : std_logic;
SIGNAL ww_Data_In : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Push : std_logic;
SIGNAL ww_Pop : std_logic;
SIGNAL ww_Data_Out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Full : std_logic;
SIGNAL ww_Empty : std_logic;
SIGNAL \RstN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data_Out[0]~output_o\ : std_logic;
SIGNAL \Data_Out[1]~output_o\ : std_logic;
SIGNAL \Data_Out[2]~output_o\ : std_logic;
SIGNAL \Data_Out[3]~output_o\ : std_logic;
SIGNAL \Full~output_o\ : std_logic;
SIGNAL \Empty~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Push~input_o\ : std_logic;
SIGNAL \Pop~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count[2]~13\ : std_logic;
SIGNAL \count[3]~14_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count[3]~17_combout\ : std_logic;
SIGNAL \RstN~input_o\ : std_logic;
SIGNAL \RstN~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[3]~15\ : std_logic;
SIGNAL \count[4]~19_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count[4]~21_combout\ : std_logic;
SIGNAL \count[4]~20\ : std_logic;
SIGNAL \count[5]~22_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count[5]~24_combout\ : std_logic;
SIGNAL \count[5]~23\ : std_logic;
SIGNAL \count[6]~25_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count[6]~27_combout\ : std_logic;
SIGNAL \count[6]~26\ : std_logic;
SIGNAL \count[7]~28_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count[7]~30_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \count[7]~18_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count[7]~16_combout\ : std_logic;
SIGNAL \count[0]~31_combout\ : std_logic;
SIGNAL \count[0]~9\ : std_logic;
SIGNAL \count[1]~10_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count[1]~32_combout\ : std_logic;
SIGNAL \count[1]~11\ : std_logic;
SIGNAL \count[2]~12_combout\ : std_logic;
SIGNAL \count[2]~33_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Data_In[0]~input_o\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \stack[7][0]~q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \stack[5][0]~q\ : std_logic;
SIGNAL \stack[6][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \stack[6][0]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \stack[4][0]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \stack[3][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \stack[2][0]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \stack[1][0]~q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \stack[0][0]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Data_Out[0]~0_combout\ : std_logic;
SIGNAL \Data_Out[0]~reg0_q\ : std_logic;
SIGNAL \Data_In[1]~input_o\ : std_logic;
SIGNAL \stack[7][1]~q\ : std_logic;
SIGNAL \stack[5][1]~q\ : std_logic;
SIGNAL \stack[6][1]~feeder_combout\ : std_logic;
SIGNAL \stack[6][1]~q\ : std_logic;
SIGNAL \stack[4][1]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \stack[3][1]~feeder_combout\ : std_logic;
SIGNAL \stack[3][1]~q\ : std_logic;
SIGNAL \stack[2][1]~q\ : std_logic;
SIGNAL \stack[1][1]~feeder_combout\ : std_logic;
SIGNAL \stack[1][1]~q\ : std_logic;
SIGNAL \stack[0][1]~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Data_Out[1]~reg0_q\ : std_logic;
SIGNAL \Data_In[2]~input_o\ : std_logic;
SIGNAL \stack[7][2]~q\ : std_logic;
SIGNAL \stack[5][2]~q\ : std_logic;
SIGNAL \stack[6][2]~q\ : std_logic;
SIGNAL \stack[4][2]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \stack[3][2]~q\ : std_logic;
SIGNAL \stack[2][2]~q\ : std_logic;
SIGNAL \stack[0][2]~q\ : std_logic;
SIGNAL \stack[1][2]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Data_Out[2]~reg0_q\ : std_logic;
SIGNAL \Data_In[3]~input_o\ : std_logic;
SIGNAL \stack[7][3]~q\ : std_logic;
SIGNAL \stack[5][3]~q\ : std_logic;
SIGNAL \stack[6][3]~feeder_combout\ : std_logic;
SIGNAL \stack[6][3]~q\ : std_logic;
SIGNAL \stack[4][3]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \stack[3][3]~q\ : std_logic;
SIGNAL \stack[2][3]~q\ : std_logic;
SIGNAL \stack[1][3]~q\ : std_logic;
SIGNAL \stack[0][3]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Data_Out[3]~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_RstN <= RstN;
ww_Data_In <= Data_In;
ww_Push <= Push;
ww_Pop <= Pop;
Data_Out <= ww_Data_Out;
Full <= ww_Full;
Empty <= ww_Empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RstN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RstN~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: IOOBUF_X33_Y14_N2
\Data_Out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\Data_Out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\Data_Out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Data_Out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_Out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_Out[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Full~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \Full~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Empty~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \Empty~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G17
\Clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y12_N0
\count[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = count(0) $ (VCC)
-- \count[0]~9\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~8_combout\,
	cout => \count[0]~9\);

-- Location: LCCOMB_X21_Y12_N16
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X22_Y0_N1
\Push~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Push,
	o => \Push~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\Pop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pop,
	o => \Pop~input_o\);

-- Location: LCCOMB_X22_Y12_N2
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(0) & (!count(2) & !count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datad => count(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\count[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[2]~12_combout\ = (count(2) & (\count[1]~11\ $ (GND))) # (!count(2) & (!\count[1]~11\ & VCC))
-- \count[2]~13\ = CARRY((count(2) & !\count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~11\,
	combout => \count[2]~12_combout\,
	cout => \count[2]~13\);

-- Location: LCCOMB_X21_Y12_N6
\count[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[3]~14_combout\ = (count(3) & (!\count[2]~13\)) # (!count(3) & ((\count[2]~13\) # (GND)))
-- \count[3]~15\ = CARRY((!\count[2]~13\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~13\,
	combout => \count[3]~14_combout\,
	cout => \count[3]~15\);

-- Location: LCCOMB_X21_Y12_N18
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (\Add0~1\ & VCC)) # (!count(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!count(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X21_Y12_N20
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & ((GND) # (!\Add0~3\))) # (!count(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((count(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X21_Y12_N22
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (\Add0~5\ & VCC)) # (!count(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!count(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X22_Y12_N8
\count[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[3]~17_combout\ = (\count[7]~16_combout\ & ((\Add0~6_combout\))) # (!\count[7]~16_combout\ & (count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => \Add0~6_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[3]~17_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RstN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RstN,
	o => \RstN~input_o\);

-- Location: CLKCTRL_G19
\RstN~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RstN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RstN~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y12_N8
\count[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[4]~19_combout\ = (count(4) & (\count[3]~15\ $ (GND))) # (!count(4) & (!\count[3]~15\ & VCC))
-- \count[4]~20\ = CARRY((count(4) & !\count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~15\,
	combout => \count[4]~19_combout\,
	cout => \count[4]~20\);

-- Location: LCCOMB_X21_Y12_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & ((GND) # (!\Add0~7\))) # (!count(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((count(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X22_Y12_N20
\count[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[4]~21_combout\ = (\count[7]~16_combout\ & ((\Add0~8_combout\))) # (!\count[7]~16_combout\ & (count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datac => \Add0~8_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[4]~21_combout\);

-- Location: FF_X21_Y12_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[4]~19_combout\,
	asdata => \count[4]~21_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X21_Y12_N10
\count[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[5]~22_combout\ = (count(5) & (!\count[4]~20\)) # (!count(5) & ((\count[4]~20\) # (GND)))
-- \count[5]~23\ = CARRY((!\count[4]~20\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~20\,
	combout => \count[5]~22_combout\,
	cout => \count[5]~23\);

-- Location: LCCOMB_X21_Y12_N26
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (\Add0~9\ & VCC)) # (!count(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!count(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X22_Y12_N24
\count[5]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[5]~24_combout\ = (\count[7]~16_combout\ & (\Add0~10_combout\)) # (!\count[7]~16_combout\ & ((count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => count(5),
	datad => \count[7]~16_combout\,
	combout => \count[5]~24_combout\);

-- Location: FF_X21_Y12_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[5]~22_combout\,
	asdata => \count[5]~24_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X21_Y12_N12
\count[6]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[6]~25_combout\ = (count(6) & (\count[5]~23\ $ (GND))) # (!count(6) & (!\count[5]~23\ & VCC))
-- \count[6]~26\ = CARRY((count(6) & !\count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~23\,
	combout => \count[6]~25_combout\,
	cout => \count[6]~26\);

-- Location: LCCOMB_X21_Y12_N28
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & ((GND) # (!\Add0~11\))) # (!count(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((count(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y12_N12
\count[6]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[6]~27_combout\ = (\count[7]~16_combout\ & ((\Add0~12_combout\))) # (!\count[7]~16_combout\ & (count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \Add0~12_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[6]~27_combout\);

-- Location: FF_X21_Y12_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[6]~25_combout\,
	asdata => \count[6]~27_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X21_Y12_N14
\count[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~28_combout\ = count(7) $ (\count[6]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \count[6]~26\,
	combout => \count[7]~28_combout\);

-- Location: LCCOMB_X21_Y12_N30
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = count(7) $ (!\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X22_Y12_N10
\count[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~30_combout\ = (\count[7]~16_combout\ & ((\Add0~14_combout\))) # (!\count[7]~16_combout\ & (count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \Add0~14_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[7]~30_combout\);

-- Location: FF_X21_Y12_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[7]~28_combout\,
	asdata => \count[7]~30_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X22_Y12_N16
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(7) & (!count(6) & (!count(4) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(6),
	datac => count(4),
	datad => count(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (count(3) & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => count(3),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y12_N6
\count[7]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~18_combout\ = (\Pop~input_o\) # ((\Equal0~2_combout\) # (!\Push~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pop~input_o\,
	datac => \Push~input_o\,
	datad => \Equal0~2_combout\,
	combout => \count[7]~18_combout\);

-- Location: FF_X21_Y12_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[3]~14_combout\,
	asdata => \count[3]~17_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X22_Y12_N22
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~1_combout\ & (!count(3) & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => count(3),
	datad => \Equal0~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y12_N18
\count[7]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~16_combout\ = (\Push~input_o\ & (!\Pop~input_o\ & ((!\Equal0~2_combout\)))) # (!\Push~input_o\ & (\Pop~input_o\ & (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Push~input_o\,
	datab => \Pop~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \count[7]~16_combout\);

-- Location: LCCOMB_X22_Y12_N14
\count[0]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[0]~31_combout\ = (\count[7]~16_combout\ & ((\Add0~0_combout\))) # (!\count[7]~16_combout\ & (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \Add0~0_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[0]~31_combout\);

-- Location: FF_X21_Y12_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[0]~8_combout\,
	asdata => \count[0]~31_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X21_Y12_N2
\count[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[1]~10_combout\ = (count(1) & (!\count[0]~9\)) # (!count(1) & ((\count[0]~9\) # (GND)))
-- \count[1]~11\ = CARRY((!\count[0]~9\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~9\,
	combout => \count[1]~10_combout\,
	cout => \count[1]~11\);

-- Location: LCCOMB_X22_Y12_N0
\count[1]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[1]~32_combout\ = (\count[7]~16_combout\ & ((\Add0~2_combout\))) # (!\count[7]~16_combout\ & (count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \Add0~2_combout\,
	datad => \count[7]~16_combout\,
	combout => \count[1]~32_combout\);

-- Location: FF_X21_Y12_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[1]~10_combout\,
	asdata => \count[1]~32_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X22_Y12_N30
\count[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[2]~33_combout\ = (\count[7]~16_combout\ & (\Add0~4_combout\)) # (!\count[7]~16_combout\ & ((count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => count(2),
	datad => \count[7]~16_combout\,
	combout => \count[2]~33_combout\);

-- Location: FF_X21_Y12_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \count[2]~12_combout\,
	asdata => \count[2]~33_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => \count[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: IOIBUF_X22_Y31_N1
\Data_In[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(0),
	o => \Data_In[0]~input_o\);

-- Location: LCCOMB_X22_Y12_N26
\Decoder0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\Pop~input_o\ & (!count(3) & (\Push~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pop~input_o\,
	datab => count(3),
	datac => \Push~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X22_Y12_N4
\Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (count(1) & (count(2) & (count(0) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(0),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~5_combout\);

-- Location: FF_X22_Y12_N25
\stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[7][0]~q\);

-- Location: LCCOMB_X19_Y12_N22
\Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (count(2) & (!count(1) & (count(0) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X19_Y12_N21
\stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[5][0]~q\);

-- Location: LCCOMB_X20_Y12_N0
\stack[6][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stack[6][0]~feeder_combout\ = \Data_In[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[0]~input_o\,
	combout => \stack[6][0]~feeder_combout\);

-- Location: LCCOMB_X20_Y12_N16
\Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (count(2) & (!count(0) & (count(1) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X20_Y12_N1
\stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack[6][0]~feeder_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[6][0]~q\);

-- Location: LCCOMB_X20_Y12_N14
\Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (count(2) & (!count(0) & (!count(1) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~4_combout\);

-- Location: FF_X20_Y12_N7
\stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[4][0]~q\);

-- Location: LCCOMB_X20_Y12_N6
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (\stack[6][0]~q\)) # (!\Add0~2_combout\ & ((\stack[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[6][0]~q\,
	datab => \Add0~0_combout\,
	datac => \stack[4][0]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Add0~0_combout\ & ((\Mux3~0_combout\ & (\stack[7][0]~q\)) # (!\Mux3~0_combout\ & ((\stack[5][0]~q\))))) # (!\Add0~0_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[7][0]~q\,
	datac => \stack[5][0]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X23_Y12_N22
\Decoder0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!count(2) & (count(0) & (\Decoder0~10_combout\ & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => \Decoder0~10_combout\,
	datad => count(1),
	combout => \Decoder0~9_combout\);

-- Location: FF_X23_Y12_N19
\stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[3][0]~q\);

-- Location: LCCOMB_X18_Y12_N8
\Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!count(0) & (!count(2) & (count(1) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~6_combout\);

-- Location: FF_X18_Y12_N21
\stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[2][0]~q\);

-- Location: LCCOMB_X23_Y12_N8
\Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!count(2) & (count(0) & (\Decoder0~10_combout\ & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => \Decoder0~10_combout\,
	datad => count(1),
	combout => \Decoder0~7_combout\);

-- Location: FF_X23_Y12_N1
\stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[1][0]~q\);

-- Location: LCCOMB_X18_Y12_N22
\Decoder0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!count(0) & (!count(2) & (!count(1) & \Decoder0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => \Decoder0~10_combout\,
	combout => \Decoder0~8_combout\);

-- Location: FF_X18_Y12_N3
\stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[0]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[0][0]~q\);

-- Location: LCCOMB_X18_Y12_N2
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Add0~0_combout\ & ((\stack[1][0]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((\stack[0][0]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[1][0]~q\,
	datac => \stack[0][0]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Add0~2_combout\ & ((\Mux3~2_combout\ & (\stack[3][0]~q\)) # (!\Mux3~2_combout\ & ((\stack[2][0]~q\))))) # (!\Add0~2_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \stack[3][0]~q\,
	datac => \stack[2][0]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Add0~4_combout\ & (\Mux3~1_combout\)) # (!\Add0~4_combout\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Mux3~1_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X19_Y12_N26
\Data_Out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_Out[0]~0_combout\ = (!\Push~input_o\ & (\Pop~input_o\ & (\RstN~input_o\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Push~input_o\,
	datab => \Pop~input_o\,
	datac => \RstN~input_o\,
	datad => \Equal1~0_combout\,
	combout => \Data_Out[0]~0_combout\);

-- Location: FF_X19_Y12_N1
\Data_Out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux3~4_combout\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[0]~reg0_q\);

-- Location: IOIBUF_X22_Y31_N8
\Data_In[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(1),
	o => \Data_In[1]~input_o\);

-- Location: FF_X22_Y12_N3
\stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[7][1]~q\);

-- Location: FF_X19_Y12_N5
\stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[5][1]~q\);

-- Location: LCCOMB_X20_Y12_N12
\stack[6][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stack[6][1]~feeder_combout\ = \Data_In[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[1]~input_o\,
	combout => \stack[6][1]~feeder_combout\);

-- Location: FF_X20_Y12_N13
\stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack[6][1]~feeder_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[6][1]~q\);

-- Location: FF_X20_Y12_N3
\stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[4][1]~q\);

-- Location: LCCOMB_X20_Y12_N2
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (\stack[6][1]~q\)) # (!\Add0~2_combout\ & ((\stack[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[6][1]~q\,
	datab => \Add0~0_combout\,
	datac => \stack[4][1]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Add0~0_combout\ & ((\Mux2~0_combout\ & (\stack[7][1]~q\)) # (!\Mux2~0_combout\ & ((\stack[5][1]~q\))))) # (!\Add0~0_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[7][1]~q\,
	datac => \stack[5][1]~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X23_Y12_N6
\stack[3][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stack[3][1]~feeder_combout\ = \Data_In[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[1]~input_o\,
	combout => \stack[3][1]~feeder_combout\);

-- Location: FF_X23_Y12_N7
\stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack[3][1]~feeder_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[3][1]~q\);

-- Location: FF_X18_Y12_N29
\stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[2][1]~q\);

-- Location: LCCOMB_X23_Y12_N24
\stack[1][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stack[1][1]~feeder_combout\ = \Data_In[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[1]~input_o\,
	combout => \stack[1][1]~feeder_combout\);

-- Location: FF_X23_Y12_N25
\stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack[1][1]~feeder_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[1][1]~q\);

-- Location: FF_X18_Y12_N19
\stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[1]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[0][1]~q\);

-- Location: LCCOMB_X18_Y12_N18
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Add0~0_combout\ & ((\stack[1][1]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((\stack[0][1]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[1][1]~q\,
	datac => \stack[0][1]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Add0~2_combout\ & ((\Mux2~2_combout\ & (\stack[3][1]~q\)) # (!\Mux2~2_combout\ & ((\stack[2][1]~q\))))) # (!\Add0~2_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \stack[3][1]~q\,
	datac => \stack[2][1]~q\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X19_Y12_N2
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Add0~4_combout\ & (\Mux2~1_combout\)) # (!\Add0~4_combout\ & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: FF_X19_Y12_N3
\Data_Out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux2~4_combout\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[1]~reg0_q\);

-- Location: IOIBUF_X20_Y31_N1
\Data_In[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(2),
	o => \Data_In[2]~input_o\);

-- Location: FF_X22_Y12_N15
\stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[7][2]~q\);

-- Location: FF_X19_Y12_N31
\stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[5][2]~q\);

-- Location: FF_X20_Y12_N5
\stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[6][2]~q\);

-- Location: FF_X20_Y12_N27
\stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[4][2]~q\);

-- Location: LCCOMB_X20_Y12_N26
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (\stack[6][2]~q\)) # (!\Add0~2_combout\ & ((\stack[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[6][2]~q\,
	datab => \Add0~0_combout\,
	datac => \stack[4][2]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Add0~0_combout\ & ((\Mux1~0_combout\ & (\stack[7][2]~q\)) # (!\Mux1~0_combout\ & ((\stack[5][2]~q\))))) # (!\Add0~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[7][2]~q\,
	datac => \stack[5][2]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X23_Y12_N11
\stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[3][2]~q\);

-- Location: FF_X18_Y12_N5
\stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[2][2]~q\);

-- Location: FF_X18_Y12_N15
\stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[0][2]~q\);

-- Location: FF_X23_Y12_N13
\stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[2]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[1][2]~q\);

-- Location: LCCOMB_X19_Y12_N12
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Add0~2_combout\ & (((\Add0~0_combout\)))) # (!\Add0~2_combout\ & ((\Add0~0_combout\ & ((\stack[1][2]~q\))) # (!\Add0~0_combout\ & (\stack[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[0][2]~q\,
	datab => \stack[1][2]~q\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Add0~2_combout\ & ((\Mux1~2_combout\ & (\stack[3][2]~q\)) # (!\Mux1~2_combout\ & ((\stack[2][2]~q\))))) # (!\Add0~2_combout\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[3][2]~q\,
	datab => \stack[2][2]~q\,
	datac => \Add0~2_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Add0~4_combout\ & (\Mux1~1_combout\)) # (!\Add0~4_combout\ & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: FF_X19_Y12_N29
\Data_Out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux1~4_combout\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[2]~reg0_q\);

-- Location: IOIBUF_X33_Y11_N8
\Data_In[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_In(3),
	o => \Data_In[3]~input_o\);

-- Location: FF_X22_Y12_N13
\stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[7][3]~q\);

-- Location: FF_X19_Y12_N9
\stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[5][3]~q\);

-- Location: LCCOMB_X20_Y12_N20
\stack[6][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \stack[6][3]~feeder_combout\ = \Data_In[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_In[3]~input_o\,
	combout => \stack[6][3]~feeder_combout\);

-- Location: FF_X20_Y12_N21
\stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \stack[6][3]~feeder_combout\,
	clrn => \RstN~inputclkctrl_outclk\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[6][3]~q\);

-- Location: FF_X20_Y12_N19
\stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[4][3]~q\);

-- Location: LCCOMB_X20_Y12_N18
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (\stack[6][3]~q\)) # (!\Add0~2_combout\ & ((\stack[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack[6][3]~q\,
	datab => \Add0~0_combout\,
	datac => \stack[4][3]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Add0~0_combout\ & ((\Mux0~0_combout\ & (\stack[7][3]~q\)) # (!\Mux0~0_combout\ & ((\stack[5][3]~q\))))) # (!\Add0~0_combout\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[7][3]~q\,
	datac => \stack[5][3]~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X23_Y12_N3
\stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[3][3]~q\);

-- Location: FF_X18_Y12_N13
\stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[2][3]~q\);

-- Location: FF_X23_Y12_N29
\stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[1][3]~q\);

-- Location: FF_X18_Y12_N11
\stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Data_In[3]~input_o\,
	clrn => \RstN~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stack[0][3]~q\);

-- Location: LCCOMB_X18_Y12_N10
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Add0~0_combout\ & ((\stack[1][3]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((\stack[0][3]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \stack[1][3]~q\,
	datac => \stack[0][3]~q\,
	datad => \Add0~2_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Add0~2_combout\ & ((\Mux0~2_combout\ & (\stack[3][3]~q\)) # (!\Mux0~2_combout\ & ((\stack[2][3]~q\))))) # (!\Add0~2_combout\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \stack[3][3]~q\,
	datac => \stack[2][3]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X19_Y12_N14
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Add0~4_combout\ & (\Mux0~1_combout\)) # (!\Add0~4_combout\ & ((\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: FF_X19_Y12_N15
\Data_Out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	ena => \Data_Out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_Out[3]~reg0_q\);

ww_Data_Out(0) <= \Data_Out[0]~output_o\;

ww_Data_Out(1) <= \Data_Out[1]~output_o\;

ww_Data_Out(2) <= \Data_Out[2]~output_o\;

ww_Data_Out(3) <= \Data_Out[3]~output_o\;

ww_Full <= \Full~output_o\;

ww_Empty <= \Empty~output_o\;
END structure;


