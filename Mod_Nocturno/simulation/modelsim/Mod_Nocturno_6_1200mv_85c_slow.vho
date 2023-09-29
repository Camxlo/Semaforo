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

-- DATE "09/27/2023 12:11:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mod_Nocturno IS
    PORT (
	noche : IN std_logic;
	clk : IN std_logic;
	Sem1 : OUT std_logic_vector(2 DOWNTO 0);
	Sem2 : OUT std_logic;
	Sem3 : OUT std_logic_vector(2 DOWNTO 0);
	Sem4 : OUT std_logic
	);
END Mod_Nocturno;

-- Design Ports Information
-- Sem1[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem1[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem1[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem2	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem4	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- noche	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mod_Nocturno IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_noche : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Sem1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sem2 : std_logic;
SIGNAL ww_Sem3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sem4 : std_logic;
SIGNAL \L0|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sem1[0]~output_o\ : std_logic;
SIGNAL \Sem1[1]~output_o\ : std_logic;
SIGNAL \Sem1[2]~output_o\ : std_logic;
SIGNAL \Sem2~output_o\ : std_logic;
SIGNAL \Sem3[0]~output_o\ : std_logic;
SIGNAL \Sem3[1]~output_o\ : std_logic;
SIGNAL \Sem3[2]~output_o\ : std_logic;
SIGNAL \Sem4~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \L0|Add0~0_combout\ : std_logic;
SIGNAL \L0|Add0~1\ : std_logic;
SIGNAL \L0|Add0~2_combout\ : std_logic;
SIGNAL \L0|Add0~3\ : std_logic;
SIGNAL \L0|Add0~4_combout\ : std_logic;
SIGNAL \L0|Add0~5\ : std_logic;
SIGNAL \L0|Add0~6_combout\ : std_logic;
SIGNAL \L0|Add0~7\ : std_logic;
SIGNAL \L0|Add0~8_combout\ : std_logic;
SIGNAL \L0|Add0~9\ : std_logic;
SIGNAL \L0|Add0~10_combout\ : std_logic;
SIGNAL \L0|Add0~11\ : std_logic;
SIGNAL \L0|Add0~12_combout\ : std_logic;
SIGNAL \L0|count2~12_combout\ : std_logic;
SIGNAL \L0|Add0~13\ : std_logic;
SIGNAL \L0|Add0~14_combout\ : std_logic;
SIGNAL \L0|Add0~15\ : std_logic;
SIGNAL \L0|Add0~16_combout\ : std_logic;
SIGNAL \L0|Add0~17\ : std_logic;
SIGNAL \L0|Add0~18_combout\ : std_logic;
SIGNAL \L0|Add0~19\ : std_logic;
SIGNAL \L0|Add0~20_combout\ : std_logic;
SIGNAL \L0|Add0~21\ : std_logic;
SIGNAL \L0|Add0~22_combout\ : std_logic;
SIGNAL \L0|count2~11_combout\ : std_logic;
SIGNAL \L0|Add0~23\ : std_logic;
SIGNAL \L0|Add0~24_combout\ : std_logic;
SIGNAL \L0|count2~10_combout\ : std_logic;
SIGNAL \L0|Add0~25\ : std_logic;
SIGNAL \L0|Add0~26_combout\ : std_logic;
SIGNAL \L0|count2~9_combout\ : std_logic;
SIGNAL \L0|Add0~27\ : std_logic;
SIGNAL \L0|Add0~28_combout\ : std_logic;
SIGNAL \L0|count2~8_combout\ : std_logic;
SIGNAL \L0|Add0~29\ : std_logic;
SIGNAL \L0|Add0~30_combout\ : std_logic;
SIGNAL \L0|Add0~31\ : std_logic;
SIGNAL \L0|Add0~32_combout\ : std_logic;
SIGNAL \L0|count2~7_combout\ : std_logic;
SIGNAL \L0|Add0~33\ : std_logic;
SIGNAL \L0|Add0~34_combout\ : std_logic;
SIGNAL \L0|Add0~35\ : std_logic;
SIGNAL \L0|Add0~36_combout\ : std_logic;
SIGNAL \L0|count2~6_combout\ : std_logic;
SIGNAL \L0|Add0~37\ : std_logic;
SIGNAL \L0|Add0~38_combout\ : std_logic;
SIGNAL \L0|count2~5_combout\ : std_logic;
SIGNAL \L0|Add0~39\ : std_logic;
SIGNAL \L0|Add0~40_combout\ : std_logic;
SIGNAL \L0|count2~4_combout\ : std_logic;
SIGNAL \L0|Add0~41\ : std_logic;
SIGNAL \L0|Add0~42_combout\ : std_logic;
SIGNAL \L0|count2~3_combout\ : std_logic;
SIGNAL \L0|Add0~43\ : std_logic;
SIGNAL \L0|Add0~44_combout\ : std_logic;
SIGNAL \L0|count2~2_combout\ : std_logic;
SIGNAL \L0|Add0~45\ : std_logic;
SIGNAL \L0|Add0~46_combout\ : std_logic;
SIGNAL \L0|Add0~47\ : std_logic;
SIGNAL \L0|Add0~49\ : std_logic;
SIGNAL \L0|Add0~50_combout\ : std_logic;
SIGNAL \L0|Equal0~7_combout\ : std_logic;
SIGNAL \L0|Equal0~1_combout\ : std_logic;
SIGNAL \L0|Equal0~0_combout\ : std_logic;
SIGNAL \L0|Equal0~2_combout\ : std_logic;
SIGNAL \L0|Equal0~3_combout\ : std_logic;
SIGNAL \L0|Equal0~4_combout\ : std_logic;
SIGNAL \L0|Equal0~5_combout\ : std_logic;
SIGNAL \L0|Equal0~6_combout\ : std_logic;
SIGNAL \L0|count2~13_combout\ : std_logic;
SIGNAL \L0|Add0~48_combout\ : std_logic;
SIGNAL \L0|Equal0~8_combout\ : std_logic;
SIGNAL \L0|out2~0_combout\ : std_logic;
SIGNAL \L0|out2~q\ : std_logic;
SIGNAL \L0|out2~clkctrl_outclk\ : std_logic;
SIGNAL \L1|Cont[0]~3_combout\ : std_logic;
SIGNAL \noche~input_o\ : std_logic;
SIGNAL \L1|Cont~0_combout\ : std_logic;
SIGNAL \L1|Cont~1_combout\ : std_logic;
SIGNAL \Sal~0_combout\ : std_logic;
SIGNAL \L1|Cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \L0|count2\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_noche <= noche;
ww_clk <= clk;
Sem1 <= ww_Sem1;
Sem2 <= ww_Sem2;
Sem3 <= ww_Sem3;
Sem4 <= ww_Sem4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\L0|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \L0|out2~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\Sem1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sem1[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Sem1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sem1[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Sem1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal~0_combout\,
	devoe => ww_devoe,
	o => \Sem1[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Sem2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal~0_combout\,
	devoe => ww_devoe,
	o => \Sem2~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Sem3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sem3[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Sem3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sem3[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\Sem3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal~0_combout\,
	devoe => ww_devoe,
	o => \Sem3[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Sem4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal~0_combout\,
	devoe => ww_devoe,
	o => \Sem4~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X32_Y16_N25
\L0|count2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(25));

-- Location: LCCOMB_X32_Y17_N6
\L0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~0_combout\ = \L0|count2\(0) $ (VCC)
-- \L0|Add0~1\ = CARRY(\L0|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(0),
	datad => VCC,
	combout => \L0|Add0~0_combout\,
	cout => \L0|Add0~1\);

-- Location: FF_X32_Y17_N7
\L0|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(0));

-- Location: LCCOMB_X32_Y17_N8
\L0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~2_combout\ = (\L0|count2\(1) & (!\L0|Add0~1\)) # (!\L0|count2\(1) & ((\L0|Add0~1\) # (GND)))
-- \L0|Add0~3\ = CARRY((!\L0|Add0~1\) # (!\L0|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(1),
	datad => VCC,
	cin => \L0|Add0~1\,
	combout => \L0|Add0~2_combout\,
	cout => \L0|Add0~3\);

-- Location: FF_X32_Y17_N9
\L0|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(1));

-- Location: LCCOMB_X32_Y17_N10
\L0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~4_combout\ = (\L0|count2\(2) & (\L0|Add0~3\ $ (GND))) # (!\L0|count2\(2) & (!\L0|Add0~3\ & VCC))
-- \L0|Add0~5\ = CARRY((\L0|count2\(2) & !\L0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(2),
	datad => VCC,
	cin => \L0|Add0~3\,
	combout => \L0|Add0~4_combout\,
	cout => \L0|Add0~5\);

-- Location: FF_X32_Y17_N11
\L0|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(2));

-- Location: LCCOMB_X32_Y17_N12
\L0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~6_combout\ = (\L0|count2\(3) & (!\L0|Add0~5\)) # (!\L0|count2\(3) & ((\L0|Add0~5\) # (GND)))
-- \L0|Add0~7\ = CARRY((!\L0|Add0~5\) # (!\L0|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(3),
	datad => VCC,
	cin => \L0|Add0~5\,
	combout => \L0|Add0~6_combout\,
	cout => \L0|Add0~7\);

-- Location: FF_X32_Y17_N13
\L0|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(3));

-- Location: LCCOMB_X32_Y17_N14
\L0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~8_combout\ = (\L0|count2\(4) & (\L0|Add0~7\ $ (GND))) # (!\L0|count2\(4) & (!\L0|Add0~7\ & VCC))
-- \L0|Add0~9\ = CARRY((\L0|count2\(4) & !\L0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(4),
	datad => VCC,
	cin => \L0|Add0~7\,
	combout => \L0|Add0~8_combout\,
	cout => \L0|Add0~9\);

-- Location: FF_X32_Y17_N15
\L0|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(4));

-- Location: LCCOMB_X32_Y17_N16
\L0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~10_combout\ = (\L0|count2\(5) & (!\L0|Add0~9\)) # (!\L0|count2\(5) & ((\L0|Add0~9\) # (GND)))
-- \L0|Add0~11\ = CARRY((!\L0|Add0~9\) # (!\L0|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(5),
	datad => VCC,
	cin => \L0|Add0~9\,
	combout => \L0|Add0~10_combout\,
	cout => \L0|Add0~11\);

-- Location: FF_X32_Y17_N17
\L0|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(5));

-- Location: LCCOMB_X32_Y17_N18
\L0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~12_combout\ = (\L0|count2\(6) & (\L0|Add0~11\ $ (GND))) # (!\L0|count2\(6) & (!\L0|Add0~11\ & VCC))
-- \L0|Add0~13\ = CARRY((\L0|count2\(6) & !\L0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(6),
	datad => VCC,
	cin => \L0|Add0~11\,
	combout => \L0|Add0~12_combout\,
	cout => \L0|Add0~13\);

-- Location: LCCOMB_X33_Y17_N4
\L0|count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~12_combout\ = (\L0|Add0~12_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~12_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~12_combout\);

-- Location: FF_X33_Y17_N5
\L0|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(6));

-- Location: LCCOMB_X32_Y17_N20
\L0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~14_combout\ = (\L0|count2\(7) & (!\L0|Add0~13\)) # (!\L0|count2\(7) & ((\L0|Add0~13\) # (GND)))
-- \L0|Add0~15\ = CARRY((!\L0|Add0~13\) # (!\L0|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(7),
	datad => VCC,
	cin => \L0|Add0~13\,
	combout => \L0|Add0~14_combout\,
	cout => \L0|Add0~15\);

-- Location: FF_X32_Y17_N21
\L0|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(7));

-- Location: LCCOMB_X32_Y17_N22
\L0|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~16_combout\ = (\L0|count2\(8) & (\L0|Add0~15\ $ (GND))) # (!\L0|count2\(8) & (!\L0|Add0~15\ & VCC))
-- \L0|Add0~17\ = CARRY((\L0|count2\(8) & !\L0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(8),
	datad => VCC,
	cin => \L0|Add0~15\,
	combout => \L0|Add0~16_combout\,
	cout => \L0|Add0~17\);

-- Location: FF_X32_Y17_N23
\L0|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(8));

-- Location: LCCOMB_X32_Y17_N24
\L0|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~18_combout\ = (\L0|count2\(9) & (!\L0|Add0~17\)) # (!\L0|count2\(9) & ((\L0|Add0~17\) # (GND)))
-- \L0|Add0~19\ = CARRY((!\L0|Add0~17\) # (!\L0|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(9),
	datad => VCC,
	cin => \L0|Add0~17\,
	combout => \L0|Add0~18_combout\,
	cout => \L0|Add0~19\);

-- Location: FF_X32_Y17_N25
\L0|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(9));

-- Location: LCCOMB_X32_Y17_N26
\L0|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~20_combout\ = (\L0|count2\(10) & (\L0|Add0~19\ $ (GND))) # (!\L0|count2\(10) & (!\L0|Add0~19\ & VCC))
-- \L0|Add0~21\ = CARRY((\L0|count2\(10) & !\L0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(10),
	datad => VCC,
	cin => \L0|Add0~19\,
	combout => \L0|Add0~20_combout\,
	cout => \L0|Add0~21\);

-- Location: FF_X32_Y17_N27
\L0|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(10));

-- Location: LCCOMB_X32_Y17_N28
\L0|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~22_combout\ = (\L0|count2\(11) & (!\L0|Add0~21\)) # (!\L0|count2\(11) & ((\L0|Add0~21\) # (GND)))
-- \L0|Add0~23\ = CARRY((!\L0|Add0~21\) # (!\L0|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(11),
	datad => VCC,
	cin => \L0|Add0~21\,
	combout => \L0|Add0~22_combout\,
	cout => \L0|Add0~23\);

-- Location: LCCOMB_X33_Y16_N24
\L0|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~11_combout\ = (\L0|Add0~22_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~22_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~11_combout\);

-- Location: FF_X33_Y16_N25
\L0|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(11));

-- Location: LCCOMB_X32_Y17_N30
\L0|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~24_combout\ = (\L0|count2\(12) & (\L0|Add0~23\ $ (GND))) # (!\L0|count2\(12) & (!\L0|Add0~23\ & VCC))
-- \L0|Add0~25\ = CARRY((\L0|count2\(12) & !\L0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(12),
	datad => VCC,
	cin => \L0|Add0~23\,
	combout => \L0|Add0~24_combout\,
	cout => \L0|Add0~25\);

-- Location: LCCOMB_X33_Y16_N12
\L0|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~10_combout\ = (\L0|Add0~24_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~24_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~10_combout\);

-- Location: FF_X33_Y16_N13
\L0|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(12));

-- Location: LCCOMB_X32_Y16_N0
\L0|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~26_combout\ = (\L0|count2\(13) & (!\L0|Add0~25\)) # (!\L0|count2\(13) & ((\L0|Add0~25\) # (GND)))
-- \L0|Add0~27\ = CARRY((!\L0|Add0~25\) # (!\L0|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(13),
	datad => VCC,
	cin => \L0|Add0~25\,
	combout => \L0|Add0~26_combout\,
	cout => \L0|Add0~27\);

-- Location: LCCOMB_X32_Y16_N28
\L0|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~9_combout\ = (\L0|Add0~26_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~26_combout\,
	datac => \L0|Equal0~8_combout\,
	combout => \L0|count2~9_combout\);

-- Location: FF_X32_Y16_N29
\L0|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(13));

-- Location: LCCOMB_X32_Y16_N2
\L0|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~28_combout\ = (\L0|count2\(14) & (\L0|Add0~27\ $ (GND))) # (!\L0|count2\(14) & (!\L0|Add0~27\ & VCC))
-- \L0|Add0~29\ = CARRY((\L0|count2\(14) & !\L0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(14),
	datad => VCC,
	cin => \L0|Add0~27\,
	combout => \L0|Add0~28_combout\,
	cout => \L0|Add0~29\);

-- Location: LCCOMB_X33_Y16_N4
\L0|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~8_combout\ = (\L0|Add0~28_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~28_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~8_combout\);

-- Location: FF_X33_Y16_N5
\L0|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(14));

-- Location: LCCOMB_X32_Y16_N4
\L0|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~30_combout\ = (\L0|count2\(15) & (!\L0|Add0~29\)) # (!\L0|count2\(15) & ((\L0|Add0~29\) # (GND)))
-- \L0|Add0~31\ = CARRY((!\L0|Add0~29\) # (!\L0|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(15),
	datad => VCC,
	cin => \L0|Add0~29\,
	combout => \L0|Add0~30_combout\,
	cout => \L0|Add0~31\);

-- Location: FF_X32_Y16_N5
\L0|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(15));

-- Location: LCCOMB_X32_Y16_N6
\L0|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~32_combout\ = (\L0|count2\(16) & (\L0|Add0~31\ $ (GND))) # (!\L0|count2\(16) & (!\L0|Add0~31\ & VCC))
-- \L0|Add0~33\ = CARRY((\L0|count2\(16) & !\L0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(16),
	datad => VCC,
	cin => \L0|Add0~31\,
	combout => \L0|Add0~32_combout\,
	cout => \L0|Add0~33\);

-- Location: LCCOMB_X32_Y16_N30
\L0|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~7_combout\ = (\L0|Add0~32_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~32_combout\,
	datac => \L0|Equal0~8_combout\,
	combout => \L0|count2~7_combout\);

-- Location: FF_X32_Y16_N31
\L0|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(16));

-- Location: LCCOMB_X32_Y16_N8
\L0|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~34_combout\ = (\L0|count2\(17) & (!\L0|Add0~33\)) # (!\L0|count2\(17) & ((\L0|Add0~33\) # (GND)))
-- \L0|Add0~35\ = CARRY((!\L0|Add0~33\) # (!\L0|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(17),
	datad => VCC,
	cin => \L0|Add0~33\,
	combout => \L0|Add0~34_combout\,
	cout => \L0|Add0~35\);

-- Location: FF_X32_Y16_N9
\L0|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(17));

-- Location: LCCOMB_X32_Y16_N10
\L0|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~36_combout\ = (\L0|count2\(18) & (\L0|Add0~35\ $ (GND))) # (!\L0|count2\(18) & (!\L0|Add0~35\ & VCC))
-- \L0|Add0~37\ = CARRY((\L0|count2\(18) & !\L0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(18),
	datad => VCC,
	cin => \L0|Add0~35\,
	combout => \L0|Add0~36_combout\,
	cout => \L0|Add0~37\);

-- Location: LCCOMB_X33_Y16_N18
\L0|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~6_combout\ = (\L0|Add0~36_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~36_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~6_combout\);

-- Location: FF_X33_Y16_N19
\L0|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(18));

-- Location: LCCOMB_X32_Y16_N12
\L0|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~38_combout\ = (\L0|count2\(19) & (!\L0|Add0~37\)) # (!\L0|count2\(19) & ((\L0|Add0~37\) # (GND)))
-- \L0|Add0~39\ = CARRY((!\L0|Add0~37\) # (!\L0|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(19),
	datad => VCC,
	cin => \L0|Add0~37\,
	combout => \L0|Add0~38_combout\,
	cout => \L0|Add0~39\);

-- Location: LCCOMB_X33_Y16_N26
\L0|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~5_combout\ = (\L0|Add0~38_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~38_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~5_combout\);

-- Location: FF_X33_Y16_N27
\L0|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(19));

-- Location: LCCOMB_X32_Y16_N14
\L0|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~40_combout\ = (\L0|count2\(20) & (\L0|Add0~39\ $ (GND))) # (!\L0|count2\(20) & (!\L0|Add0~39\ & VCC))
-- \L0|Add0~41\ = CARRY((\L0|count2\(20) & !\L0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(20),
	datad => VCC,
	cin => \L0|Add0~39\,
	combout => \L0|Add0~40_combout\,
	cout => \L0|Add0~41\);

-- Location: LCCOMB_X33_Y16_N22
\L0|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~4_combout\ = (\L0|Add0~40_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~40_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~4_combout\);

-- Location: FF_X33_Y16_N23
\L0|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(20));

-- Location: LCCOMB_X32_Y16_N16
\L0|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~42_combout\ = (\L0|count2\(21) & (!\L0|Add0~41\)) # (!\L0|count2\(21) & ((\L0|Add0~41\) # (GND)))
-- \L0|Add0~43\ = CARRY((!\L0|Add0~41\) # (!\L0|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(21),
	datad => VCC,
	cin => \L0|Add0~41\,
	combout => \L0|Add0~42_combout\,
	cout => \L0|Add0~43\);

-- Location: LCCOMB_X33_Y16_N6
\L0|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~3_combout\ = (\L0|Add0~42_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~42_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~3_combout\);

-- Location: FF_X33_Y16_N7
\L0|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(21));

-- Location: LCCOMB_X32_Y16_N18
\L0|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~44_combout\ = (\L0|count2\(22) & (\L0|Add0~43\ $ (GND))) # (!\L0|count2\(22) & (!\L0|Add0~43\ & VCC))
-- \L0|Add0~45\ = CARRY((\L0|count2\(22) & !\L0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(22),
	datad => VCC,
	cin => \L0|Add0~43\,
	combout => \L0|Add0~44_combout\,
	cout => \L0|Add0~45\);

-- Location: LCCOMB_X33_Y16_N20
\L0|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~2_combout\ = (\L0|Add0~44_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~44_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~2_combout\);

-- Location: FF_X33_Y16_N21
\L0|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(22));

-- Location: LCCOMB_X32_Y16_N20
\L0|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~46_combout\ = (\L0|count2\(23) & (!\L0|Add0~45\)) # (!\L0|count2\(23) & ((\L0|Add0~45\) # (GND)))
-- \L0|Add0~47\ = CARRY((!\L0|Add0~45\) # (!\L0|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(23),
	datad => VCC,
	cin => \L0|Add0~45\,
	combout => \L0|Add0~46_combout\,
	cout => \L0|Add0~47\);

-- Location: FF_X32_Y16_N21
\L0|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(23));

-- Location: LCCOMB_X32_Y16_N22
\L0|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~48_combout\ = (\L0|count2\(24) & (\L0|Add0~47\ $ (GND))) # (!\L0|count2\(24) & (!\L0|Add0~47\ & VCC))
-- \L0|Add0~49\ = CARRY((\L0|count2\(24) & !\L0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(24),
	datad => VCC,
	cin => \L0|Add0~47\,
	combout => \L0|Add0~48_combout\,
	cout => \L0|Add0~49\);

-- Location: LCCOMB_X32_Y16_N24
\L0|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~50_combout\ = \L0|Add0~49\ $ (\L0|count2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L0|count2\(25),
	cin => \L0|Add0~49\,
	combout => \L0|Add0~50_combout\);

-- Location: LCCOMB_X33_Y16_N30
\L0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~7_combout\ = (\L0|Add0~44_combout\ & !\L0|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~44_combout\,
	datad => \L0|Add0~46_combout\,
	combout => \L0|Equal0~7_combout\);

-- Location: LCCOMB_X32_Y17_N2
\L0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~1_combout\ = (!\L0|Add0~8_combout\ & (\L0|Add0~12_combout\ & (!\L0|Add0~10_combout\ & !\L0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~8_combout\,
	datab => \L0|Add0~12_combout\,
	datac => \L0|Add0~10_combout\,
	datad => \L0|Add0~14_combout\,
	combout => \L0|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y17_N0
\L0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~0_combout\ = (!\L0|Add0~0_combout\ & (!\L0|Add0~4_combout\ & (!\L0|Add0~6_combout\ & !\L0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~0_combout\,
	datab => \L0|Add0~4_combout\,
	datac => \L0|Add0~6_combout\,
	datad => \L0|Add0~2_combout\,
	combout => \L0|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\L0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~2_combout\ = (!\L0|Add0~16_combout\ & (!\L0|Add0~18_combout\ & (!\L0|Add0~20_combout\ & \L0|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~16_combout\,
	datab => \L0|Add0~18_combout\,
	datac => \L0|Add0~20_combout\,
	datad => \L0|Add0~22_combout\,
	combout => \L0|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y16_N10
\L0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~3_combout\ = (\L0|Add0~26_combout\ & (\L0|Add0~28_combout\ & (!\L0|Add0~30_combout\ & \L0|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~26_combout\,
	datab => \L0|Add0~28_combout\,
	datac => \L0|Add0~30_combout\,
	datad => \L0|Add0~24_combout\,
	combout => \L0|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y16_N16
\L0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~4_combout\ = (\L0|Equal0~1_combout\ & (\L0|Equal0~0_combout\ & (\L0|Equal0~2_combout\ & \L0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Equal0~1_combout\,
	datab => \L0|Equal0~0_combout\,
	datac => \L0|Equal0~2_combout\,
	datad => \L0|Equal0~3_combout\,
	combout => \L0|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y16_N2
\L0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~5_combout\ = (\L0|Add0~36_combout\ & (\L0|Add0~32_combout\ & (!\L0|Add0~34_combout\ & \L0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~36_combout\,
	datab => \L0|Add0~32_combout\,
	datac => \L0|Add0~34_combout\,
	datad => \L0|Equal0~4_combout\,
	combout => \L0|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y16_N28
\L0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~6_combout\ = (\L0|Add0~38_combout\ & (\L0|Add0~40_combout\ & (\L0|Add0~42_combout\ & \L0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~38_combout\,
	datab => \L0|Add0~40_combout\,
	datac => \L0|Add0~42_combout\,
	datad => \L0|Equal0~5_combout\,
	combout => \L0|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y16_N8
\L0|count2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~13_combout\ = (\L0|Add0~48_combout\ & ((\L0|Add0~50_combout\) # ((!\L0|Equal0~6_combout\) # (!\L0|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~48_combout\,
	datab => \L0|Add0~50_combout\,
	datac => \L0|Equal0~7_combout\,
	datad => \L0|Equal0~6_combout\,
	combout => \L0|count2~13_combout\);

-- Location: FF_X33_Y16_N9
\L0|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|count2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|count2\(24));

-- Location: LCCOMB_X33_Y16_N0
\L0|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~8_combout\ = (\L0|Add0~48_combout\ & (!\L0|Add0~50_combout\ & (\L0|Equal0~7_combout\ & \L0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~48_combout\,
	datab => \L0|Add0~50_combout\,
	datac => \L0|Equal0~7_combout\,
	datad => \L0|Equal0~6_combout\,
	combout => \L0|Equal0~8_combout\);

-- Location: LCCOMB_X33_Y16_N14
\L0|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|out2~0_combout\ = \L0|out2~q\ $ (\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|out2~q\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|out2~0_combout\);

-- Location: FF_X33_Y16_N31
\L0|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \L0|out2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|out2~q\);

-- Location: CLKCTRL_G7
\L0|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \L0|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \L0|out2~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N24
\L1|Cont[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont[0]~3_combout\ = !\L1|Cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L1|Cont\(0),
	combout => \L1|Cont[0]~3_combout\);

-- Location: FF_X1_Y24_N25
\L1|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(0));

-- Location: IOIBUF_X0_Y24_N1
\noche~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_noche,
	o => \noche~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\L1|Cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont~0_combout\ = (\L1|Cont\(1) & (\noche~input_o\ $ ((!\L1|Cont\(0))))) # (!\L1|Cont\(1) & ((\noche~input_o\ & (!\L1|Cont\(0) & \L1|Cont\(2))) # (!\noche~input_o\ & (\L1|Cont\(0) & !\L1|Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \noche~input_o\,
	datab => \L1|Cont\(0),
	datac => \L1|Cont\(1),
	datad => \L1|Cont\(2),
	combout => \L1|Cont~0_combout\);

-- Location: FF_X1_Y24_N29
\L1|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(1));

-- Location: LCCOMB_X1_Y24_N18
\L1|Cont~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont~1_combout\ = (\noche~input_o\ & (\L1|Cont\(2) $ (((!\L1|Cont\(0) & !\L1|Cont\(1)))))) # (!\noche~input_o\ & ((\L1|Cont\(0) & (!\L1|Cont\(2) & \L1|Cont\(1))) # (!\L1|Cont\(0) & (\L1|Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \noche~input_o\,
	datab => \L1|Cont\(0),
	datac => \L1|Cont\(2),
	datad => \L1|Cont\(1),
	combout => \L1|Cont~1_combout\);

-- Location: FF_X1_Y24_N19
\L1|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~clkctrl_outclk\,
	d => \L1|Cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(2));

-- Location: LCCOMB_X1_Y24_N30
\Sal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sal~0_combout\ = \Sal~0_combout\ $ (((\L1|Cont\(0) & (\L1|Cont\(2) & !\L1|Cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sal~0_combout\,
	datab => \L1|Cont\(0),
	datac => \L1|Cont\(2),
	datad => \L1|Cont\(1),
	combout => \Sal~0_combout\);

ww_Sem1(0) <= \Sem1[0]~output_o\;

ww_Sem1(1) <= \Sem1[1]~output_o\;

ww_Sem1(2) <= \Sem1[2]~output_o\;

ww_Sem2 <= \Sem2~output_o\;

ww_Sem3(0) <= \Sem3[0]~output_o\;

ww_Sem3(1) <= \Sem3[1]~output_o\;

ww_Sem3(2) <= \Sem3[2]~output_o\;

ww_Sem4 <= \Sem4~output_o\;
END structure;


