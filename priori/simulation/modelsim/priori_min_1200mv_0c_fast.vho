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

-- DATE "09/28/2023 19:03:04"

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

ENTITY 	priori IS
    PORT (
	dia : IN std_logic;
	pea1 : IN std_logic;
	pea2 : IN std_logic;
	clk : IN std_logic;
	Sem1 : BUFFER std_logic_vector(2 DOWNTO 0);
	Sem2 : BUFFER std_logic;
	Sem3 : BUFFER std_logic_vector(2 DOWNTO 0);
	Sem4 : BUFFER std_logic;
	Dis_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	Dis_2 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END priori;

-- Design Ports Information
-- Sem1[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem1[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem1[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem2	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem3[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem4	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dis_2[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pea1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pea2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dia	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF priori IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dia : std_logic;
SIGNAL ww_pea1 : std_logic;
SIGNAL ww_pea2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Sem1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sem2 : std_logic;
SIGNAL ww_Sem3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sem4 : std_logic;
SIGNAL ww_Dis_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Dis_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Sem1[2]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M2[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sem1[0]~output_o\ : std_logic;
SIGNAL \Sem1[1]~output_o\ : std_logic;
SIGNAL \Sem1[2]~output_o\ : std_logic;
SIGNAL \Sem2~output_o\ : std_logic;
SIGNAL \Sem3[0]~output_o\ : std_logic;
SIGNAL \Sem3[1]~output_o\ : std_logic;
SIGNAL \Sem3[2]~output_o\ : std_logic;
SIGNAL \Sem4~output_o\ : std_logic;
SIGNAL \Dis_1[0]~output_o\ : std_logic;
SIGNAL \Dis_1[1]~output_o\ : std_logic;
SIGNAL \Dis_1[2]~output_o\ : std_logic;
SIGNAL \Dis_1[3]~output_o\ : std_logic;
SIGNAL \Dis_1[4]~output_o\ : std_logic;
SIGNAL \Dis_1[5]~output_o\ : std_logic;
SIGNAL \Dis_1[6]~output_o\ : std_logic;
SIGNAL \Dis_2[0]~output_o\ : std_logic;
SIGNAL \Dis_2[1]~output_o\ : std_logic;
SIGNAL \Dis_2[2]~output_o\ : std_logic;
SIGNAL \Dis_2[3]~output_o\ : std_logic;
SIGNAL \Dis_2[4]~output_o\ : std_logic;
SIGNAL \Dis_2[5]~output_o\ : std_logic;
SIGNAL \Dis_2[6]~output_o\ : std_logic;
SIGNAL \pea1~input_o\ : std_logic;
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
SIGNAL \L0|Equal0~0_combout\ : std_logic;
SIGNAL \L0|Equal0~1_combout\ : std_logic;
SIGNAL \L0|Equal0~3_combout\ : std_logic;
SIGNAL \L0|Equal0~2_combout\ : std_logic;
SIGNAL \L0|Equal0~4_combout\ : std_logic;
SIGNAL \L0|Equal0~5_combout\ : std_logic;
SIGNAL \L0|Equal0~6_combout\ : std_logic;
SIGNAL \L0|count2~13_combout\ : std_logic;
SIGNAL \L0|Add0~48_combout\ : std_logic;
SIGNAL \L0|Equal0~8_combout\ : std_logic;
SIGNAL \L0|out2~0_combout\ : std_logic;
SIGNAL \L0|out2~feeder_combout\ : std_logic;
SIGNAL \L0|out2~q\ : std_logic;
SIGNAL \L5|Add0~0_combout\ : std_logic;
SIGNAL \L5|Add0~3\ : std_logic;
SIGNAL \L5|Add0~4_combout\ : std_logic;
SIGNAL \L5|Cont~5_combout\ : std_logic;
SIGNAL \L5|Add0~5\ : std_logic;
SIGNAL \L5|Add0~6_combout\ : std_logic;
SIGNAL \L5|Equal0~1_combout\ : std_logic;
SIGNAL \L5|Add0~7\ : std_logic;
SIGNAL \L5|Add0~8_combout\ : std_logic;
SIGNAL \L5|Cont~3_combout\ : std_logic;
SIGNAL \L5|Add0~9\ : std_logic;
SIGNAL \L5|Add0~10_combout\ : std_logic;
SIGNAL \L5|Cont~1_combout\ : std_logic;
SIGNAL \L5|Add0~11\ : std_logic;
SIGNAL \L5|Add0~12_combout\ : std_logic;
SIGNAL \L5|Cont~0_combout\ : std_logic;
SIGNAL \L5|Add0~13\ : std_logic;
SIGNAL \L5|Add0~14_combout\ : std_logic;
SIGNAL \L5|Cont~2_combout\ : std_logic;
SIGNAL \L5|Equal0~0_combout\ : std_logic;
SIGNAL \L5|Cont~4_combout\ : std_logic;
SIGNAL \L5|Add0~1\ : std_logic;
SIGNAL \L5|Add0~2_combout\ : std_logic;
SIGNAL \Sem1[2]~4_combout\ : std_logic;
SIGNAL \L6|Add0~7\ : std_logic;
SIGNAL \L6|Add0~8_combout\ : std_logic;
SIGNAL \L6|Cont~3_combout\ : std_logic;
SIGNAL \pea2~input_o\ : std_logic;
SIGNAL \L6|Add0~9\ : std_logic;
SIGNAL \L6|Add0~10_combout\ : std_logic;
SIGNAL \L6|Cont~1_combout\ : std_logic;
SIGNAL \L6|Add0~11\ : std_logic;
SIGNAL \L6|Add0~12_combout\ : std_logic;
SIGNAL \L6|Cont~0_combout\ : std_logic;
SIGNAL \L6|Add0~13\ : std_logic;
SIGNAL \L6|Add0~14_combout\ : std_logic;
SIGNAL \L6|Cont~2_combout\ : std_logic;
SIGNAL \L6|Equal0~0_combout\ : std_logic;
SIGNAL \L6|Add0~0_combout\ : std_logic;
SIGNAL \L6|Cont~4_combout\ : std_logic;
SIGNAL \L6|Add0~1\ : std_logic;
SIGNAL \L6|Add0~2_combout\ : std_logic;
SIGNAL \L6|Equal0~1_combout\ : std_logic;
SIGNAL \L6|Add0~3\ : std_logic;
SIGNAL \L6|Add0~4_combout\ : std_logic;
SIGNAL \L6|Cont~5_combout\ : std_logic;
SIGNAL \L6|Add0~5\ : std_logic;
SIGNAL \L6|Add0~6_combout\ : std_logic;
SIGNAL \Sem1[2]~5_combout\ : std_logic;
SIGNAL \L1|Equal0~0_combout\ : std_logic;
SIGNAL \L1|Add0~0_combout\ : std_logic;
SIGNAL \dia~input_o\ : std_logic;
SIGNAL \L1|Add0~1\ : std_logic;
SIGNAL \L1|Add0~2_combout\ : std_logic;
SIGNAL \L1|Add0~9\ : std_logic;
SIGNAL \L1|Add0~10_combout\ : std_logic;
SIGNAL \L1|Cont~1_combout\ : std_logic;
SIGNAL \L1|Equal0~1_combout\ : std_logic;
SIGNAL \L1|Add0~11\ : std_logic;
SIGNAL \L1|Add0~12_combout\ : std_logic;
SIGNAL \L1|Cont~0_combout\ : std_logic;
SIGNAL \L1|Add0~13\ : std_logic;
SIGNAL \L1|Add0~14_combout\ : std_logic;
SIGNAL \L1|Add0~3\ : std_logic;
SIGNAL \L1|Add0~4_combout\ : std_logic;
SIGNAL \L1|Cont~2_combout\ : std_logic;
SIGNAL \L1|Add0~5\ : std_logic;
SIGNAL \L1|Add0~6_combout\ : std_logic;
SIGNAL \L1|Add0~7\ : std_logic;
SIGNAL \L1|Add0~8_combout\ : std_logic;
SIGNAL \Sem1[2]~6_combout\ : std_logic;
SIGNAL \Sem1[2]~7_combout\ : std_logic;
SIGNAL \Sem1[2]~8_combout\ : std_logic;
SIGNAL \Sem1[2]~9_combout\ : std_logic;
SIGNAL \Sem1[2]~9clkctrl_outclk\ : std_logic;
SIGNAL \Sem1[0]~0_combout\ : std_logic;
SIGNAL \Sem1[2]~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Sem1[0]~2_combout\ : std_logic;
SIGNAL \Sem1[0]~3_combout\ : std_logic;
SIGNAL \Sem1[0]$latch~combout\ : std_logic;
SIGNAL \Sem1[1]~10_combout\ : std_logic;
SIGNAL \Sem1[1]~11_combout\ : std_logic;
SIGNAL \Sem1[1]$latch~combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Sem1[2]~12_combout\ : std_logic;
SIGNAL \Sem1[2]$latch~combout\ : std_logic;
SIGNAL \Sem2~0_combout\ : std_logic;
SIGNAL \Sem2$latch~combout\ : std_logic;
SIGNAL \Sem3[0]~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Sem3[1]~0_combout\ : std_logic;
SIGNAL \Sem3[0]~2_combout\ : std_logic;
SIGNAL \Sem3[0]$latch~combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \Sem3[1]~4_combout\ : std_logic;
SIGNAL \Sem3[1]~3_combout\ : std_logic;
SIGNAL \Sem3[1]~5_combout\ : std_logic;
SIGNAL \Sem3[1]$latch~combout\ : std_logic;
SIGNAL \Sem3[2]~6_combout\ : std_logic;
SIGNAL \Sem3[2]~7_combout\ : std_logic;
SIGNAL \Sem3[2]$latch~combout\ : std_logic;
SIGNAL \Sem4~0_combout\ : std_logic;
SIGNAL \Sem4$latch~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \M2[7]~0_combout\ : std_logic;
SIGNAL \M2[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \M[6]~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \M[7]~2_combout\ : std_logic;
SIGNAL \L2|Mux1~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \M[5]~1_combout\ : std_logic;
SIGNAL \L2|Mux1~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \M[3]~10_combout\ : std_logic;
SIGNAL \M[3]~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \M[1]~6_combout\ : std_logic;
SIGNAL \M[1]~7_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \M[2]~8_combout\ : std_logic;
SIGNAL \M[2]~9_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \M[4]~3_combout\ : std_logic;
SIGNAL \M[4]~4_combout\ : std_logic;
SIGNAL \L2|Mux3~0_combout\ : std_logic;
SIGNAL \L2|Mux3~1_combout\ : std_logic;
SIGNAL \L2|Mux1~5_combout\ : std_logic;
SIGNAL \L2|Mux1~4_combout\ : std_logic;
SIGNAL \M[0]~5_combout\ : std_logic;
SIGNAL \L2|Mux4~0_combout\ : std_logic;
SIGNAL \L2|Mux2~0_combout\ : std_logic;
SIGNAL \L2|Mux2~1_combout\ : std_logic;
SIGNAL \L3|Mux6~0_combout\ : std_logic;
SIGNAL \L3|Mux5~0_combout\ : std_logic;
SIGNAL \L3|Mux4~0_combout\ : std_logic;
SIGNAL \L3|Mux3~0_combout\ : std_logic;
SIGNAL \L3|Mux2~0_combout\ : std_logic;
SIGNAL \L3|Mux1~0_combout\ : std_logic;
SIGNAL \L3|Mux0~0_combout\ : std_logic;
SIGNAL \L2|Mux0~0_combout\ : std_logic;
SIGNAL \L2|Mux0~1_combout\ : std_logic;
SIGNAL \L5|Cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L0|count2\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \L6|Cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL M2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \L1|Cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L3|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_dia <= dia;
ww_pea1 <= pea1;
ww_pea2 <= pea2;
ww_clk <= clk;
Sem1 <= ww_Sem1;
Sem2 <= ww_Sem2;
Sem3 <= ww_Sem3;
Sem4 <= ww_Sem4;
Dis_1 <= ww_Dis_1;
Dis_2 <= ww_Dis_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Sem1[2]~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Sem1[2]~9_combout\);

\M2[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \M2[7]~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\L3|ALT_INV_Mux6~0_combout\ <= NOT \L3|Mux6~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\Sem1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem1[0]$latch~combout\,
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
	i => \Sem1[1]$latch~combout\,
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
	i => \Sem1[2]$latch~combout\,
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
	i => \Sem2$latch~combout\,
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
	i => \Sem3[0]$latch~combout\,
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
	i => \Sem3[1]$latch~combout\,
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
	i => \Sem3[2]$latch~combout\,
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
	i => \Sem4$latch~combout\,
	devoe => ww_devoe,
	o => \Sem4~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\Dis_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Dis_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Dis_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Dis_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Dis_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Dis_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Dis_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Dis_1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Dis_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Dis_2[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Dis_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Dis_2[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Dis_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Dis_2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Dis_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Dis_2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Dis_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dis_2[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Dis_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dis_2[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Dis_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Dis_2[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\pea1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pea1,
	o => \pea1~input_o\);

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

-- Location: FF_X15_Y22_N25
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

-- Location: LCCOMB_X15_Y23_N6
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

-- Location: FF_X15_Y23_N7
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

-- Location: LCCOMB_X15_Y23_N8
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

-- Location: FF_X15_Y23_N9
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

-- Location: LCCOMB_X15_Y23_N10
\L0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~4_combout\ = (\L0|count2\(2) & (\L0|Add0~3\ $ (GND))) # (!\L0|count2\(2) & (!\L0|Add0~3\ & VCC))
-- \L0|Add0~5\ = CARRY((\L0|count2\(2) & !\L0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(2),
	datad => VCC,
	cin => \L0|Add0~3\,
	combout => \L0|Add0~4_combout\,
	cout => \L0|Add0~5\);

-- Location: FF_X15_Y23_N11
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

-- Location: LCCOMB_X15_Y23_N12
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

-- Location: FF_X15_Y23_N13
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

-- Location: LCCOMB_X15_Y23_N14
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

-- Location: FF_X15_Y23_N15
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

-- Location: LCCOMB_X15_Y23_N16
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

-- Location: FF_X15_Y23_N17
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

-- Location: LCCOMB_X15_Y23_N18
\L0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~12_combout\ = (\L0|count2\(6) & (\L0|Add0~11\ $ (GND))) # (!\L0|count2\(6) & (!\L0|Add0~11\ & VCC))
-- \L0|Add0~13\ = CARRY((\L0|count2\(6) & !\L0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(6),
	datad => VCC,
	cin => \L0|Add0~11\,
	combout => \L0|Add0~12_combout\,
	cout => \L0|Add0~13\);

-- Location: LCCOMB_X15_Y23_N0
\L0|count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~12_combout\ = (\L0|Add0~12_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~12_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~12_combout\);

-- Location: FF_X15_Y23_N1
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

-- Location: LCCOMB_X15_Y23_N20
\L0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~14_combout\ = (\L0|count2\(7) & (!\L0|Add0~13\)) # (!\L0|count2\(7) & ((\L0|Add0~13\) # (GND)))
-- \L0|Add0~15\ = CARRY((!\L0|Add0~13\) # (!\L0|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(7),
	datad => VCC,
	cin => \L0|Add0~13\,
	combout => \L0|Add0~14_combout\,
	cout => \L0|Add0~15\);

-- Location: FF_X15_Y23_N21
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

-- Location: LCCOMB_X15_Y23_N22
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

-- Location: FF_X15_Y23_N23
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

-- Location: LCCOMB_X15_Y23_N24
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

-- Location: FF_X15_Y23_N25
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

-- Location: LCCOMB_X15_Y23_N26
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

-- Location: FF_X15_Y23_N27
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

-- Location: LCCOMB_X15_Y23_N28
\L0|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~22_combout\ = (\L0|count2\(11) & (!\L0|Add0~21\)) # (!\L0|count2\(11) & ((\L0|Add0~21\) # (GND)))
-- \L0|Add0~23\ = CARRY((!\L0|Add0~21\) # (!\L0|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(11),
	datad => VCC,
	cin => \L0|Add0~21\,
	combout => \L0|Add0~22_combout\,
	cout => \L0|Add0~23\);

-- Location: LCCOMB_X14_Y22_N8
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

-- Location: FF_X14_Y22_N9
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

-- Location: LCCOMB_X15_Y23_N30
\L0|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~24_combout\ = (\L0|count2\(12) & (\L0|Add0~23\ $ (GND))) # (!\L0|count2\(12) & (!\L0|Add0~23\ & VCC))
-- \L0|Add0~25\ = CARRY((\L0|count2\(12) & !\L0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L0|count2\(12),
	datad => VCC,
	cin => \L0|Add0~23\,
	combout => \L0|Add0~24_combout\,
	cout => \L0|Add0~25\);

-- Location: LCCOMB_X14_Y22_N22
\L0|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~10_combout\ = (\L0|Add0~24_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~24_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~10_combout\);

-- Location: FF_X14_Y22_N23
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

-- Location: LCCOMB_X15_Y22_N0
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

-- Location: LCCOMB_X15_Y22_N28
\L0|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~9_combout\ = (\L0|Add0~26_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~26_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~9_combout\);

-- Location: FF_X15_Y22_N29
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

-- Location: LCCOMB_X15_Y22_N2
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

-- Location: LCCOMB_X15_Y22_N26
\L0|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~8_combout\ = (\L0|Add0~28_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~28_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~8_combout\);

-- Location: FF_X15_Y22_N27
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

-- Location: LCCOMB_X15_Y22_N4
\L0|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~30_combout\ = (\L0|count2\(15) & (!\L0|Add0~29\)) # (!\L0|count2\(15) & ((\L0|Add0~29\) # (GND)))
-- \L0|Add0~31\ = CARRY((!\L0|Add0~29\) # (!\L0|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(15),
	datad => VCC,
	cin => \L0|Add0~29\,
	combout => \L0|Add0~30_combout\,
	cout => \L0|Add0~31\);

-- Location: FF_X15_Y22_N5
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

-- Location: LCCOMB_X15_Y22_N6
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

-- Location: LCCOMB_X12_Y22_N16
\L0|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~7_combout\ = (!\L0|Equal0~8_combout\ & \L0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Equal0~8_combout\,
	datad => \L0|Add0~32_combout\,
	combout => \L0|count2~7_combout\);

-- Location: FF_X12_Y22_N17
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

-- Location: LCCOMB_X15_Y22_N8
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

-- Location: FF_X15_Y22_N9
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

-- Location: LCCOMB_X15_Y22_N10
\L0|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Add0~36_combout\ = (\L0|count2\(18) & (\L0|Add0~35\ $ (GND))) # (!\L0|count2\(18) & (!\L0|Add0~35\ & VCC))
-- \L0|Add0~37\ = CARRY((\L0|count2\(18) & !\L0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L0|count2\(18),
	datad => VCC,
	cin => \L0|Add0~35\,
	combout => \L0|Add0~36_combout\,
	cout => \L0|Add0~37\);

-- Location: LCCOMB_X14_Y22_N12
\L0|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~6_combout\ = (\L0|Add0~36_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~36_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~6_combout\);

-- Location: FF_X14_Y22_N13
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

-- Location: LCCOMB_X15_Y22_N12
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

-- Location: LCCOMB_X14_Y22_N26
\L0|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~5_combout\ = (\L0|Add0~38_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~38_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~5_combout\);

-- Location: FF_X14_Y22_N27
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

-- Location: LCCOMB_X15_Y22_N14
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

-- Location: LCCOMB_X14_Y22_N30
\L0|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~4_combout\ = (\L0|Add0~40_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~40_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~4_combout\);

-- Location: FF_X14_Y22_N31
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

-- Location: LCCOMB_X15_Y22_N16
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

-- Location: LCCOMB_X14_Y22_N10
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

-- Location: FF_X14_Y22_N11
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

-- Location: LCCOMB_X15_Y22_N18
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

-- Location: LCCOMB_X14_Y22_N16
\L0|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~2_combout\ = (\L0|Add0~44_combout\ & !\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L0|Add0~44_combout\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|count2~2_combout\);

-- Location: FF_X14_Y22_N17
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

-- Location: LCCOMB_X15_Y22_N20
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

-- Location: FF_X15_Y22_N21
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

-- Location: LCCOMB_X15_Y22_N22
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

-- Location: LCCOMB_X15_Y22_N24
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

-- Location: LCCOMB_X14_Y22_N14
\L0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~7_combout\ = (!\L0|Add0~46_combout\ & \L0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|Add0~46_combout\,
	datad => \L0|Add0~44_combout\,
	combout => \L0|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y22_N30
\L0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~0_combout\ = (\L0|Add0~24_combout\ & (\L0|Add0~26_combout\ & (!\L0|Add0~30_combout\ & \L0|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~24_combout\,
	datab => \L0|Add0~26_combout\,
	datac => \L0|Add0~30_combout\,
	datad => \L0|Add0~28_combout\,
	combout => \L0|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y23_N2
\L0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~1_combout\ = (!\L0|Add0~4_combout\ & (!\L0|Add0~0_combout\ & (!\L0|Add0~6_combout\ & !\L0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~4_combout\,
	datab => \L0|Add0~0_combout\,
	datac => \L0|Add0~6_combout\,
	datad => \L0|Add0~2_combout\,
	combout => \L0|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y23_N4
\L0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~3_combout\ = (!\L0|Add0~16_combout\ & (!\L0|Add0~18_combout\ & (!\L0|Add0~20_combout\ & \L0|Add0~22_combout\)))

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
	combout => \L0|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y22_N20
\L0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~2_combout\ = (!\L0|Add0~10_combout\ & (!\L0|Add0~8_combout\ & (!\L0|Add0~14_combout\ & \L0|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~10_combout\,
	datab => \L0|Add0~8_combout\,
	datac => \L0|Add0~14_combout\,
	datad => \L0|Add0~12_combout\,
	combout => \L0|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y22_N24
\L0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~4_combout\ = (\L0|Add0~32_combout\ & (\L0|Equal0~1_combout\ & (\L0|Equal0~3_combout\ & \L0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~32_combout\,
	datab => \L0|Equal0~1_combout\,
	datac => \L0|Equal0~3_combout\,
	datad => \L0|Equal0~2_combout\,
	combout => \L0|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y22_N18
\L0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~5_combout\ = (!\L0|Add0~34_combout\ & (\L0|Add0~36_combout\ & (\L0|Equal0~0_combout\ & \L0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~34_combout\,
	datab => \L0|Add0~36_combout\,
	datac => \L0|Equal0~0_combout\,
	datad => \L0|Equal0~4_combout\,
	combout => \L0|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y22_N28
\L0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|Equal0~6_combout\ = (\L0|Add0~42_combout\ & (\L0|Add0~40_combout\ & (\L0|Add0~38_combout\ & \L0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~42_combout\,
	datab => \L0|Add0~40_combout\,
	datac => \L0|Add0~38_combout\,
	datad => \L0|Equal0~5_combout\,
	combout => \L0|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y22_N6
\L0|count2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|count2~13_combout\ = (\L0|Add0~48_combout\ & ((\L0|Add0~50_combout\) # ((!\L0|Equal0~6_combout\) # (!\L0|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|Add0~50_combout\,
	datab => \L0|Add0~48_combout\,
	datac => \L0|Equal0~7_combout\,
	datad => \L0|Equal0~6_combout\,
	combout => \L0|count2~13_combout\);

-- Location: FF_X14_Y22_N7
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

-- Location: LCCOMB_X14_Y22_N0
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

-- Location: LCCOMB_X14_Y22_N4
\L0|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|out2~0_combout\ = \L0|out2~q\ $ (\L0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L0|out2~q\,
	datad => \L0|Equal0~8_combout\,
	combout => \L0|out2~0_combout\);

-- Location: LCCOMB_X14_Y22_N2
\L0|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L0|out2~feeder_combout\ = \L0|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L0|out2~0_combout\,
	combout => \L0|out2~feeder_combout\);

-- Location: FF_X14_Y22_N3
\L0|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \L0|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|out2~q\);

-- Location: LCCOMB_X1_Y23_N10
\L5|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~0_combout\ = \L5|Cont\(0) $ (VCC)
-- \L5|Add0~1\ = CARRY(\L5|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(0),
	datad => VCC,
	combout => \L5|Add0~0_combout\,
	cout => \L5|Add0~1\);

-- Location: LCCOMB_X1_Y23_N12
\L5|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~2_combout\ = (\L5|Cont\(1) & (\L5|Add0~1\ & VCC)) # (!\L5|Cont\(1) & (!\L5|Add0~1\))
-- \L5|Add0~3\ = CARRY((!\L5|Cont\(1) & !\L5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(1),
	datad => VCC,
	cin => \L5|Add0~1\,
	combout => \L5|Add0~2_combout\,
	cout => \L5|Add0~3\);

-- Location: LCCOMB_X1_Y23_N14
\L5|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~4_combout\ = (\L5|Cont\(2) & ((GND) # (!\L5|Add0~3\))) # (!\L5|Cont\(2) & (\L5|Add0~3\ $ (GND)))
-- \L5|Add0~5\ = CARRY((\L5|Cont\(2)) # (!\L5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(2),
	datad => VCC,
	cin => \L5|Add0~3\,
	combout => \L5|Add0~4_combout\,
	cout => \L5|Add0~5\);

-- Location: LCCOMB_X1_Y23_N4
\L5|Cont~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~5_combout\ = (\L5|Add0~4_combout\ & ((!\L5|Equal0~1_combout\) # (!\L5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Equal0~0_combout\,
	datac => \L5|Add0~4_combout\,
	datad => \L5|Equal0~1_combout\,
	combout => \L5|Cont~5_combout\);

-- Location: FF_X1_Y23_N5
\L5|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~5_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(2));

-- Location: LCCOMB_X1_Y23_N16
\L5|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~6_combout\ = (\L5|Cont\(3) & (\L5|Add0~5\ & VCC)) # (!\L5|Cont\(3) & (!\L5|Add0~5\))
-- \L5|Add0~7\ = CARRY((!\L5|Cont\(3) & !\L5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(3),
	datad => VCC,
	cin => \L5|Add0~5\,
	combout => \L5|Add0~6_combout\,
	cout => \L5|Add0~7\);

-- Location: FF_X1_Y23_N17
\L5|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Add0~6_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(3));

-- Location: LCCOMB_X2_Y23_N4
\L5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Equal0~1_combout\ = (!\L5|Cont\(3) & (!\L5|Cont\(0) & (!\L5|Cont\(2) & !\L5|Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(3),
	datab => \L5|Cont\(0),
	datac => \L5|Cont\(2),
	datad => \L5|Cont\(1),
	combout => \L5|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y23_N18
\L5|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~8_combout\ = (\L5|Cont\(4) & ((GND) # (!\L5|Add0~7\))) # (!\L5|Cont\(4) & (\L5|Add0~7\ $ (GND)))
-- \L5|Add0~9\ = CARRY((\L5|Cont\(4)) # (!\L5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(4),
	datad => VCC,
	cin => \L5|Add0~7\,
	combout => \L5|Add0~8_combout\,
	cout => \L5|Add0~9\);

-- Location: LCCOMB_X1_Y23_N28
\L5|Cont~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~3_combout\ = (\L5|Add0~8_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Equal0~1_combout\,
	datac => \L5|Equal0~0_combout\,
	datad => \L5|Add0~8_combout\,
	combout => \L5|Cont~3_combout\);

-- Location: FF_X1_Y23_N29
\L5|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~3_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(4));

-- Location: LCCOMB_X1_Y23_N20
\L5|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~10_combout\ = (\L5|Cont\(5) & (\L5|Add0~9\ & VCC)) # (!\L5|Cont\(5) & (!\L5|Add0~9\))
-- \L5|Add0~11\ = CARRY((!\L5|Cont\(5) & !\L5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(5),
	datad => VCC,
	cin => \L5|Add0~9\,
	combout => \L5|Add0~10_combout\,
	cout => \L5|Add0~11\);

-- Location: LCCOMB_X1_Y23_N0
\L5|Cont~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~1_combout\ = (\L5|Add0~10_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Equal0~1_combout\,
	datac => \L5|Equal0~0_combout\,
	datad => \L5|Add0~10_combout\,
	combout => \L5|Cont~1_combout\);

-- Location: FF_X1_Y23_N1
\L5|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~1_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(5));

-- Location: LCCOMB_X1_Y23_N22
\L5|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~12_combout\ = (\L5|Cont\(6) & ((GND) # (!\L5|Add0~11\))) # (!\L5|Cont\(6) & (\L5|Add0~11\ $ (GND)))
-- \L5|Add0~13\ = CARRY((\L5|Cont\(6)) # (!\L5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(6),
	datad => VCC,
	cin => \L5|Add0~11\,
	combout => \L5|Add0~12_combout\,
	cout => \L5|Add0~13\);

-- Location: LCCOMB_X1_Y23_N26
\L5|Cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~0_combout\ = (\L5|Add0~12_combout\ & ((!\L5|Equal0~1_combout\) # (!\L5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Equal0~0_combout\,
	datac => \L5|Add0~12_combout\,
	datad => \L5|Equal0~1_combout\,
	combout => \L5|Cont~0_combout\);

-- Location: FF_X1_Y23_N27
\L5|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~0_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(6));

-- Location: LCCOMB_X1_Y23_N24
\L5|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Add0~14_combout\ = \L5|Cont\(7) $ (!\L5|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(7),
	cin => \L5|Add0~13\,
	combout => \L5|Add0~14_combout\);

-- Location: LCCOMB_X1_Y23_N30
\L5|Cont~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~2_combout\ = (\L5|Add0~14_combout\ & ((!\L5|Equal0~0_combout\) # (!\L5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Equal0~1_combout\,
	datac => \L5|Equal0~0_combout\,
	datad => \L5|Add0~14_combout\,
	combout => \L5|Cont~2_combout\);

-- Location: FF_X1_Y23_N31
\L5|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~2_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(7));

-- Location: LCCOMB_X1_Y23_N2
\L5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Equal0~0_combout\ = (!\L5|Cont\(6) & (!\L5|Cont\(5) & (!\L5|Cont\(7) & !\L5|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(6),
	datab => \L5|Cont\(5),
	datac => \L5|Cont\(7),
	datad => \L5|Cont\(4),
	combout => \L5|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\L5|Cont~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L5|Cont~4_combout\ = (\L5|Add0~0_combout\ & ((!\L5|Equal0~1_combout\) # (!\L5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Add0~0_combout\,
	datac => \L5|Equal0~0_combout\,
	datad => \L5|Equal0~1_combout\,
	combout => \L5|Cont~4_combout\);

-- Location: FF_X1_Y23_N9
\L5|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Cont~4_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(0));

-- Location: FF_X1_Y23_N13
\L5|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L5|Add0~2_combout\,
	ena => \pea1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L5|Cont\(1));

-- Location: LCCOMB_X1_Y23_N6
\Sem1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~4_combout\ = ((!\L5|Cont\(2) & ((!\L5|Cont\(0)) # (!\L5|Cont\(1))))) # (!\L5|Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(1),
	datab => \L5|Cont\(0),
	datac => \L5|Cont\(2),
	datad => \L5|Cont\(3),
	combout => \Sem1[2]~4_combout\);

-- Location: LCCOMB_X6_Y23_N20
\L6|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~6_combout\ = (\L6|Cont\(3) & (\L6|Add0~5\ & VCC)) # (!\L6|Cont\(3) & (!\L6|Add0~5\))
-- \L6|Add0~7\ = CARRY((!\L6|Cont\(3) & !\L6|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|Cont\(3),
	datad => VCC,
	cin => \L6|Add0~5\,
	combout => \L6|Add0~6_combout\,
	cout => \L6|Add0~7\);

-- Location: LCCOMB_X6_Y23_N22
\L6|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~8_combout\ = (\L6|Cont\(4) & ((GND) # (!\L6|Add0~7\))) # (!\L6|Cont\(4) & (\L6|Add0~7\ $ (GND)))
-- \L6|Add0~9\ = CARRY((\L6|Cont\(4)) # (!\L6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|Cont\(4),
	datad => VCC,
	cin => \L6|Add0~7\,
	combout => \L6|Add0~8_combout\,
	cout => \L6|Add0~9\);

-- Location: LCCOMB_X6_Y23_N2
\L6|Cont~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~3_combout\ = (\L6|Add0~8_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datab => \L6|Equal0~0_combout\,
	datac => \L6|Add0~8_combout\,
	combout => \L6|Cont~3_combout\);

-- Location: IOIBUF_X0_Y23_N1
\pea2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pea2,
	o => \pea2~input_o\);

-- Location: FF_X6_Y23_N3
\L6|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~3_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(4));

-- Location: LCCOMB_X6_Y23_N24
\L6|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~10_combout\ = (\L6|Cont\(5) & (\L6|Add0~9\ & VCC)) # (!\L6|Cont\(5) & (!\L6|Add0~9\))
-- \L6|Add0~11\ = CARRY((!\L6|Cont\(5) & !\L6|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(5),
	datad => VCC,
	cin => \L6|Add0~9\,
	combout => \L6|Add0~10_combout\,
	cout => \L6|Add0~11\);

-- Location: LCCOMB_X6_Y23_N30
\L6|Cont~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~1_combout\ = (\L6|Add0~10_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datac => \L6|Equal0~0_combout\,
	datad => \L6|Add0~10_combout\,
	combout => \L6|Cont~1_combout\);

-- Location: FF_X6_Y23_N31
\L6|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~1_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(5));

-- Location: LCCOMB_X6_Y23_N26
\L6|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~12_combout\ = (\L6|Cont\(6) & ((GND) # (!\L6|Add0~11\))) # (!\L6|Cont\(6) & (\L6|Add0~11\ $ (GND)))
-- \L6|Add0~13\ = CARRY((\L6|Cont\(6)) # (!\L6|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(6),
	datad => VCC,
	cin => \L6|Add0~11\,
	combout => \L6|Add0~12_combout\,
	cout => \L6|Add0~13\);

-- Location: LCCOMB_X6_Y23_N6
\L6|Cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~0_combout\ = (\L6|Add0~12_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datab => \L6|Equal0~0_combout\,
	datac => \L6|Add0~12_combout\,
	combout => \L6|Cont~0_combout\);

-- Location: FF_X6_Y23_N7
\L6|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~0_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(6));

-- Location: LCCOMB_X6_Y23_N28
\L6|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~14_combout\ = \L6|Cont\(7) $ (!\L6|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|Cont\(7),
	cin => \L6|Add0~13\,
	combout => \L6|Add0~14_combout\);

-- Location: LCCOMB_X6_Y23_N4
\L6|Cont~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~2_combout\ = (\L6|Add0~14_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datac => \L6|Equal0~0_combout\,
	datad => \L6|Add0~14_combout\,
	combout => \L6|Cont~2_combout\);

-- Location: FF_X6_Y23_N5
\L6|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~2_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(7));

-- Location: LCCOMB_X6_Y23_N10
\L6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Equal0~0_combout\ = (!\L6|Cont\(6) & (!\L6|Cont\(7) & (!\L6|Cont\(5) & !\L6|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(6),
	datab => \L6|Cont\(7),
	datac => \L6|Cont\(5),
	datad => \L6|Cont\(4),
	combout => \L6|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y23_N14
\L6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~0_combout\ = \L6|Cont\(0) $ (VCC)
-- \L6|Add0~1\ = CARRY(\L6|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L6|Cont\(0),
	datad => VCC,
	combout => \L6|Add0~0_combout\,
	cout => \L6|Add0~1\);

-- Location: LCCOMB_X6_Y23_N8
\L6|Cont~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~4_combout\ = (\L6|Add0~0_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datab => \L6|Equal0~0_combout\,
	datac => \L6|Add0~0_combout\,
	combout => \L6|Cont~4_combout\);

-- Location: FF_X6_Y23_N9
\L6|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~4_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(0));

-- Location: LCCOMB_X6_Y23_N16
\L6|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~2_combout\ = (\L6|Cont\(1) & (\L6|Add0~1\ & VCC)) # (!\L6|Cont\(1) & (!\L6|Add0~1\))
-- \L6|Add0~3\ = CARRY((!\L6|Cont\(1) & !\L6|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L6|Cont\(1),
	datad => VCC,
	cin => \L6|Add0~1\,
	combout => \L6|Add0~2_combout\,
	cout => \L6|Add0~3\);

-- Location: FF_X6_Y23_N17
\L6|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Add0~2_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(1));

-- Location: LCCOMB_X6_Y23_N0
\L6|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Equal0~1_combout\ = (!\L6|Cont\(3) & (!\L6|Cont\(2) & (!\L6|Cont\(1) & !\L6|Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(3),
	datab => \L6|Cont\(2),
	datac => \L6|Cont\(1),
	datad => \L6|Cont\(0),
	combout => \L6|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y23_N18
\L6|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Add0~4_combout\ = (\L6|Cont\(2) & ((GND) # (!\L6|Add0~3\))) # (!\L6|Cont\(2) & (\L6|Add0~3\ $ (GND)))
-- \L6|Add0~5\ = CARRY((\L6|Cont\(2)) # (!\L6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(2),
	datad => VCC,
	cin => \L6|Add0~3\,
	combout => \L6|Add0~4_combout\,
	cout => \L6|Add0~5\);

-- Location: LCCOMB_X6_Y23_N12
\L6|Cont~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L6|Cont~5_combout\ = (\L6|Add0~4_combout\ & ((!\L6|Equal0~0_combout\) # (!\L6|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Equal0~1_combout\,
	datac => \L6|Equal0~0_combout\,
	datad => \L6|Add0~4_combout\,
	combout => \L6|Cont~5_combout\);

-- Location: FF_X6_Y23_N13
\L6|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Cont~5_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(2));

-- Location: FF_X6_Y23_N21
\L6|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L6|Add0~6_combout\,
	ena => \pea2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L6|Cont\(3));

-- Location: LCCOMB_X5_Y23_N26
\Sem1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~5_combout\ = ((!\L6|Cont\(2) & ((!\L6|Cont\(1)) # (!\L6|Cont\(0))))) # (!\L6|Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(3),
	datab => \L6|Cont\(0),
	datac => \L6|Cont\(2),
	datad => \L6|Cont\(1),
	combout => \Sem1[2]~5_combout\);

-- Location: LCCOMB_X9_Y22_N20
\L1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal0~0_combout\ = (!\L1|Cont\(4) & (!\L1|Cont\(3) & !\L1|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(4),
	datac => \L1|Cont\(3),
	datad => \L1|Cont\(2),
	combout => \L1|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y22_N0
\L1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~0_combout\ = \L1|Cont\(0) $ (VCC)
-- \L1|Add0~1\ = CARRY(\L1|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(0),
	datad => VCC,
	combout => \L1|Add0~0_combout\,
	cout => \L1|Add0~1\);

-- Location: IOIBUF_X0_Y27_N1
\dia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dia,
	o => \dia~input_o\);

-- Location: FF_X9_Y22_N1
\L1|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Add0~0_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(0));

-- Location: LCCOMB_X9_Y22_N2
\L1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~2_combout\ = (\L1|Cont\(1) & (\L1|Add0~1\ & VCC)) # (!\L1|Cont\(1) & (!\L1|Add0~1\))
-- \L1|Add0~3\ = CARRY((!\L1|Cont\(1) & !\L1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(1),
	datad => VCC,
	cin => \L1|Add0~1\,
	combout => \L1|Add0~2_combout\,
	cout => \L1|Add0~3\);

-- Location: FF_X9_Y22_N3
\L1|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Add0~2_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(1));

-- Location: LCCOMB_X9_Y22_N8
\L1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~8_combout\ = (\L1|Cont\(4) & ((GND) # (!\L1|Add0~7\))) # (!\L1|Cont\(4) & (\L1|Add0~7\ $ (GND)))
-- \L1|Add0~9\ = CARRY((\L1|Cont\(4)) # (!\L1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(4),
	datad => VCC,
	cin => \L1|Add0~7\,
	combout => \L1|Add0~8_combout\,
	cout => \L1|Add0~9\);

-- Location: LCCOMB_X9_Y22_N10
\L1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~10_combout\ = (\L1|Cont\(5) & (\L1|Add0~9\ & VCC)) # (!\L1|Cont\(5) & (!\L1|Add0~9\))
-- \L1|Add0~11\ = CARRY((!\L1|Cont\(5) & !\L1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(5),
	datad => VCC,
	cin => \L1|Add0~9\,
	combout => \L1|Add0~10_combout\,
	cout => \L1|Add0~11\);

-- Location: LCCOMB_X9_Y22_N28
\L1|Cont~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont~1_combout\ = (\L1|Add0~10_combout\ & (((\L1|Cont\(7)) # (!\L1|Equal0~1_combout\)) # (!\L1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~0_combout\,
	datab => \L1|Equal0~1_combout\,
	datac => \L1|Cont\(7),
	datad => \L1|Add0~10_combout\,
	combout => \L1|Cont~1_combout\);

-- Location: FF_X9_Y22_N29
\L1|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Cont~1_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(5));

-- Location: LCCOMB_X8_Y22_N18
\L1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Equal0~1_combout\ = (!\L1|Cont\(1) & (!\L1|Cont\(5) & (!\L1|Cont\(0) & !\L1|Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(1),
	datab => \L1|Cont\(5),
	datac => \L1|Cont\(0),
	datad => \L1|Cont\(6),
	combout => \L1|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y22_N12
\L1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~12_combout\ = (\L1|Cont\(6) & ((GND) # (!\L1|Add0~11\))) # (!\L1|Cont\(6) & (\L1|Add0~11\ $ (GND)))
-- \L1|Add0~13\ = CARRY((\L1|Cont\(6)) # (!\L1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(6),
	datad => VCC,
	cin => \L1|Add0~11\,
	combout => \L1|Add0~12_combout\,
	cout => \L1|Add0~13\);

-- Location: LCCOMB_X9_Y22_N16
\L1|Cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont~0_combout\ = (\L1|Add0~12_combout\ & (((\L1|Cont\(7)) # (!\L1|Equal0~1_combout\)) # (!\L1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~0_combout\,
	datab => \L1|Equal0~1_combout\,
	datac => \L1|Cont\(7),
	datad => \L1|Add0~12_combout\,
	combout => \L1|Cont~0_combout\);

-- Location: FF_X9_Y22_N17
\L1|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Cont~0_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(6));

-- Location: LCCOMB_X9_Y22_N14
\L1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~14_combout\ = \L1|Cont\(7) $ (!\L1|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(7),
	cin => \L1|Add0~13\,
	combout => \L1|Add0~14_combout\);

-- Location: FF_X9_Y22_N15
\L1|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Add0~14_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(7));

-- Location: LCCOMB_X9_Y22_N4
\L1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~4_combout\ = (\L1|Cont\(2) & ((GND) # (!\L1|Add0~3\))) # (!\L1|Cont\(2) & (\L1|Add0~3\ $ (GND)))
-- \L1|Add0~5\ = CARRY((\L1|Cont\(2)) # (!\L1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(2),
	datad => VCC,
	cin => \L1|Add0~3\,
	combout => \L1|Add0~4_combout\,
	cout => \L1|Add0~5\);

-- Location: LCCOMB_X9_Y22_N30
\L1|Cont~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Cont~2_combout\ = (\L1|Add0~4_combout\ & (((\L1|Cont\(7)) # (!\L1|Equal0~1_combout\)) # (!\L1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~0_combout\,
	datab => \L1|Cont\(7),
	datac => \L1|Add0~4_combout\,
	datad => \L1|Equal0~1_combout\,
	combout => \L1|Cont~2_combout\);

-- Location: FF_X9_Y22_N31
\L1|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Cont~2_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(2));

-- Location: LCCOMB_X9_Y22_N6
\L1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L1|Add0~6_combout\ = (\L1|Cont\(3) & (\L1|Add0~5\ & VCC)) # (!\L1|Cont\(3) & (!\L1|Add0~5\))
-- \L1|Add0~7\ = CARRY((!\L1|Cont\(3) & !\L1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datad => VCC,
	cin => \L1|Add0~5\,
	combout => \L1|Add0~6_combout\,
	cout => \L1|Add0~7\);

-- Location: FF_X9_Y22_N7
\L1|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Add0~6_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(3));

-- Location: FF_X9_Y22_N9
\L1|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|out2~q\,
	d => \L1|Add0~8_combout\,
	ena => \dia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|Cont\(4));

-- Location: LCCOMB_X9_Y22_N26
\Sem1[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~6_combout\ = ((!\L1|Cont\(3)) # (!\L1|Cont\(2))) # (!\L1|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(4),
	datac => \L1|Cont\(2),
	datad => \L1|Cont\(3),
	combout => \Sem1[2]~6_combout\);

-- Location: LCCOMB_X9_Y22_N22
\Sem1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~7_combout\ = ((\Sem1[2]~6_combout\ & (!\L1|Cont\(6) & !\L1|Cont\(5)))) # (!\L1|Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem1[2]~6_combout\,
	datab => \L1|Cont\(6),
	datac => \L1|Cont\(7),
	datad => \L1|Cont\(5),
	combout => \Sem1[2]~7_combout\);

-- Location: LCCOMB_X5_Y23_N2
\Sem1[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~8_combout\ = (\pea2~input_o\ & (\Sem1[2]~5_combout\ & (\L6|Equal0~0_combout\))) # (!\pea2~input_o\ & (((\Sem1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem1[2]~5_combout\,
	datab => \pea2~input_o\,
	datac => \L6|Equal0~0_combout\,
	datad => \Sem1[2]~7_combout\,
	combout => \Sem1[2]~8_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Sem1[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~9_combout\ = (\pea1~input_o\ & (\Sem1[2]~4_combout\ & ((\L5|Equal0~0_combout\)))) # (!\pea1~input_o\ & (((\Sem1[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea1~input_o\,
	datab => \Sem1[2]~4_combout\,
	datac => \Sem1[2]~8_combout\,
	datad => \L5|Equal0~0_combout\,
	combout => \Sem1[2]~9_combout\);

-- Location: CLKCTRL_G1
\Sem1[2]~9clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Sem1[2]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Sem1[2]~9clkctrl_outclk\);

-- Location: LCCOMB_X8_Y22_N8
\Sem1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[0]~0_combout\ = ((!\L1|Cont\(3) & ((!\L1|Cont\(2)) # (!\L1|Cont\(1))))) # (!\L1|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(1),
	datab => \L1|Cont\(4),
	datac => \L1|Cont\(2),
	datad => \L1|Cont\(3),
	combout => \Sem1[0]~0_combout\);

-- Location: LCCOMB_X8_Y22_N12
\Sem1[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~1_combout\ = (\L1|Cont\(6) & ((\L1|Cont\(5)) # (!\Sem1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(6),
	datab => \L1|Cont\(5),
	datad => \Sem1[0]~0_combout\,
	combout => \Sem1[2]~1_combout\);

-- Location: LCCOMB_X9_Y22_N18
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\L1|Cont\(0) & (\L1|Cont\(1) & \L1|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(0),
	datac => \L1|Cont\(1),
	datad => \L1|Cont\(2),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X8_Y22_N2
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\L1|Cont\(5) & ((\L1|Cont\(4)) # ((\L1|Cont\(3) & \LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datab => \L1|Cont\(5),
	datac => \LessThan3~0_combout\,
	datad => \L1|Cont\(4),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X8_Y22_N4
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\L1|Cont\(4)) # ((\L1|Cont\(3) & ((\L1|Cont\(1)) # (\L1|Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datab => \L1|Cont\(4),
	datac => \L1|Cont\(1),
	datad => \L1|Cont\(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X8_Y22_N20
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\L1|Cont\(5) & \LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(5),
	datac => \LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X7_Y22_N4
\Sem1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[0]~2_combout\ = (!\L1|Cont\(7) & (((!\LessThan4~1_combout\) # (!\LessThan3~1_combout\)) # (!\Sem1[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(7),
	datab => \Sem1[2]~1_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan4~1_combout\,
	combout => \Sem1[0]~2_combout\);

-- Location: LCCOMB_X7_Y22_N22
\Sem1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[0]~3_combout\ = (\pea1~input_o\) # ((\pea2~input_o\) # (\Sem1[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea1~input_o\,
	datab => \pea2~input_o\,
	datac => \Sem1[0]~2_combout\,
	combout => \Sem1[0]~3_combout\);

-- Location: LCCOMB_X7_Y22_N24
\Sem1[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[0]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((!\Sem1[0]~3_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem1[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem1[0]$latch~combout\,
	datac => \Sem1[2]~9clkctrl_outclk\,
	datad => \Sem1[0]~3_combout\,
	combout => \Sem1[0]$latch~combout\);

-- Location: LCCOMB_X8_Y22_N22
\Sem1[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[1]~10_combout\ = (!\pea2~input_o\ & (!\L1|Cont\(7) & !\pea1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea2~input_o\,
	datac => \L1|Cont\(7),
	datad => \pea1~input_o\,
	combout => \Sem1[1]~10_combout\);

-- Location: LCCOMB_X7_Y22_N28
\Sem1[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[1]~11_combout\ = (!\LessThan3~1_combout\ & (\LessThan4~1_combout\ & (\L1|Cont\(6) & \Sem1[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \LessThan4~1_combout\,
	datac => \L1|Cont\(6),
	datad => \Sem1[1]~10_combout\,
	combout => \Sem1[1]~11_combout\);

-- Location: LCCOMB_X7_Y22_N30
\Sem1[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[1]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem1[1]~11_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem1[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem1[1]$latch~combout\,
	datac => \Sem1[2]~9clkctrl_outclk\,
	datad => \Sem1[1]~11_combout\,
	combout => \Sem1[1]$latch~combout\);

-- Location: LCCOMB_X8_Y22_N28
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\L1|Cont\(3)) # ((\L1|Cont\(5)) # ((\LessThan3~0_combout\) # (\L1|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datab => \L1|Cont\(5),
	datac => \LessThan3~0_combout\,
	datad => \L1|Cont\(4),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X8_Y22_N16
\Sem1[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]~12_combout\ = (\LessThan6~0_combout\ & (\Sem1[2]~1_combout\ & (\Sem1[1]~10_combout\ & !\LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \Sem1[2]~1_combout\,
	datac => \Sem1[1]~10_combout\,
	datad => \LessThan4~1_combout\,
	combout => \Sem1[2]~12_combout\);

-- Location: LCCOMB_X8_Y22_N24
\Sem1[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem1[2]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem1[2]~12_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem1[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem1[2]$latch~combout\,
	datac => \Sem1[2]~12_combout\,
	datad => \Sem1[2]~9clkctrl_outclk\,
	combout => \Sem1[2]$latch~combout\);

-- Location: LCCOMB_X7_Y22_N26
\Sem2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem2~0_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\) # (!\Sem1[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea1~input_o\,
	datab => \pea2~input_o\,
	datac => \Sem1[0]~2_combout\,
	combout => \Sem2~0_combout\);

-- Location: LCCOMB_X7_Y22_N0
\Sem2$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem2$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem2~0_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem2$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem2$latch~combout\,
	datac => \Sem1[2]~9clkctrl_outclk\,
	datad => \Sem2~0_combout\,
	combout => \Sem2$latch~combout\);

-- Location: LCCOMB_X8_Y22_N30
\Sem3[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[0]~1_combout\ = (\L1|Cont\(6) & (((!\LessThan6~0_combout\)))) # (!\L1|Cont\(6) & (!\L1|Equal0~0_combout\ & (\L1|Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Equal0~0_combout\,
	datab => \L1|Cont\(6),
	datac => \L1|Cont\(5),
	datad => \LessThan6~0_combout\,
	combout => \Sem3[0]~1_combout\);

-- Location: LCCOMB_X9_Y22_N24
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\L1|Cont\(3) & ((\L1|Cont\(0)) # ((\L1|Cont\(1)) # (\L1|Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datab => \L1|Cont\(0),
	datac => \L1|Cont\(1),
	datad => \L1|Cont\(2),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X8_Y22_N0
\Sem3[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[1]~0_combout\ = (!\L1|Cont\(6) & (((!\L1|Cont\(4) & !\LessThan7~0_combout\)) # (!\L1|Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(4),
	datab => \LessThan7~0_combout\,
	datac => \L1|Cont\(5),
	datad => \L1|Cont\(6),
	combout => \Sem3[1]~0_combout\);

-- Location: LCCOMB_X8_Y22_N10
\Sem3[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[0]~2_combout\ = (\Sem3[0]~1_combout\ & (!\Sem3[1]~0_combout\ & \Sem1[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem3[0]~1_combout\,
	datab => \Sem3[1]~0_combout\,
	datac => \Sem1[1]~10_combout\,
	combout => \Sem3[0]~2_combout\);

-- Location: LCCOMB_X8_Y22_N14
\Sem3[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[0]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem3[0]~2_combout\)) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem3[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem3[0]~2_combout\,
	datac => \Sem3[0]$latch~combout\,
	datad => \Sem1[2]~9clkctrl_outclk\,
	combout => \Sem3[0]$latch~combout\);

-- Location: LCCOMB_X8_Y22_N6
\LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (\L1|Cont\(6)) # ((\L1|Cont\(4)) # ((\L1|Cont\(7)) # (\L1|Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(6),
	datab => \L1|Cont\(4),
	datac => \L1|Cont\(7),
	datad => \L1|Cont\(5),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X7_Y22_N6
\Sem3[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[1]~4_combout\ = (\L1|Cont\(7)) # ((\pea2~input_o\) # (!\LessThan9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(7),
	datac => \pea2~input_o\,
	datad => \LessThan9~0_combout\,
	combout => \Sem3[1]~4_combout\);

-- Location: LCCOMB_X7_Y22_N16
\Sem3[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[1]~3_combout\ = (\L1|Cont\(6)) # ((\L1|Cont\(7)) # ((!\L1|Equal0~0_combout\ & \L1|Cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(6),
	datab => \L1|Equal0~0_combout\,
	datac => \L1|Cont\(5),
	datad => \L1|Cont\(7),
	combout => \Sem3[1]~3_combout\);

-- Location: LCCOMB_X7_Y22_N12
\Sem3[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[1]~5_combout\ = (\Sem3[1]~4_combout\) # (((\pea1~input_o\) # (!\Sem3[1]~3_combout\)) # (!\Sem3[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem3[1]~4_combout\,
	datab => \Sem3[1]~0_combout\,
	datac => \Sem3[1]~3_combout\,
	datad => \pea1~input_o\,
	combout => \Sem3[1]~5_combout\);

-- Location: LCCOMB_X7_Y22_N18
\Sem3[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[1]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((!\Sem3[1]~5_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem3[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem3[1]$latch~combout\,
	datac => \Sem3[1]~5_combout\,
	datad => \Sem1[2]~9clkctrl_outclk\,
	combout => \Sem3[1]$latch~combout\);

-- Location: LCCOMB_X7_Y22_N10
\Sem3[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[2]~6_combout\ = (!\pea1~input_o\ & (!\pea2~input_o\ & \LessThan9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pea1~input_o\,
	datac => \pea2~input_o\,
	datad => \LessThan9~0_combout\,
	combout => \Sem3[2]~6_combout\);

-- Location: LCCOMB_X7_Y22_N8
\Sem3[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[2]~7_combout\ = (\Sem3[2]~6_combout\ & ((!\Sem1[0]~2_combout\) # (!\Sem3[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem3[1]~3_combout\,
	datac => \Sem1[0]~2_combout\,
	datad => \Sem3[2]~6_combout\,
	combout => \Sem3[2]~7_combout\);

-- Location: LCCOMB_X7_Y22_N20
\Sem3[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem3[2]$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem3[2]~7_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem3[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem3[2]$latch~combout\,
	datac => \Sem1[2]~9clkctrl_outclk\,
	datad => \Sem3[2]~7_combout\,
	combout => \Sem3[2]$latch~combout\);

-- Location: LCCOMB_X7_Y22_N14
\Sem4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem4~0_combout\ = (\pea1~input_o\) # ((!\pea2~input_o\ & !\Sem1[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea1~input_o\,
	datab => \pea2~input_o\,
	datac => \Sem1[0]~2_combout\,
	combout => \Sem4~0_combout\);

-- Location: LCCOMB_X7_Y22_N2
\Sem4$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem4$latch~combout\ = (GLOBAL(\Sem1[2]~9clkctrl_outclk\) & ((\Sem4~0_combout\))) # (!GLOBAL(\Sem1[2]~9clkctrl_outclk\) & (\Sem4$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem4$latch~combout\,
	datac => \Sem1[2]~9clkctrl_outclk\,
	datad => \Sem4~0_combout\,
	combout => \Sem4$latch~combout\);

-- Location: LCCOMB_X8_Y23_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \L1|Cont\(1) $ (VCC)
-- \Add0~1\ = CARRY(\L1|Cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(1),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X8_Y23_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\L1|Cont\(2) & (!\Add0~1\)) # (!\L1|Cont\(2) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\L1|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X8_Y23_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\L1|Cont\(3) & ((GND) # (!\Add0~3\))) # (!\L1|Cont\(3) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\L1|Cont\(3)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X8_Y23_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\L1|Cont\(4) & (\Add0~5\ & VCC)) # (!\L1|Cont\(4) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\L1|Cont\(4) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X8_Y23_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\L1|Cont\(5) & ((GND) # (!\Add0~7\))) # (!\L1|Cont\(5) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((\L1|Cont\(5)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X8_Y23_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\L1|Cont\(6) & (!\Add0~9\)) # (!\L1|Cont\(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\L1|Cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X8_Y23_N4
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~10_combout\ & \LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \LessThan9~0_combout\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X8_Y22_N26
\M2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2[7]~0_combout\ = (\Sem1[1]~10_combout\ & (((\Sem1[0]~0_combout\ & !\L1|Cont\(5))) # (!\L1|Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sem1[1]~10_combout\,
	datab => \L1|Cont\(6),
	datac => \Sem1[0]~0_combout\,
	datad => \L1|Cont\(5),
	combout => \M2[7]~0_combout\);

-- Location: CLKCTRL_G2
\M2[7]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \M2[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \M2[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y23_N24
\M2[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(6) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & (\Add0~12_combout\)) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & ((M2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => M2(6),
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(6));

-- Location: LCCOMB_X7_Y23_N24
\M[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[6]~0_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & (\L6|Cont\(6))) # (!\pea2~input_o\ & ((M2(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(6),
	datab => \pea1~input_o\,
	datac => \pea2~input_o\,
	datad => M2(6),
	combout => \M[6]~0_combout\);

-- Location: LCCOMB_X8_Y23_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~11\ $ (\L1|Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \L1|Cont\(7),
	cin => \Add0~11\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X8_Y23_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~14_combout\ & \LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \LessThan9~0_combout\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X8_Y23_N6
\M2[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(7) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & (\Add0~16_combout\)) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & ((M2(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datac => M2(7),
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(7));

-- Location: LCCOMB_X7_Y23_N12
\M[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[7]~2_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & (\L6|Cont\(7))) # (!\pea2~input_o\ & ((M2(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(7),
	datab => \pea1~input_o\,
	datac => \pea2~input_o\,
	datad => M2(7),
	combout => \M[7]~2_combout\);

-- Location: LCCOMB_X2_Y23_N6
\L2|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux1~2_combout\ = ((!\L5|Cont\(5) & (!\L5|Cont\(6) & !\L5|Cont\(7)))) # (!\pea1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(5),
	datab => \L5|Cont\(6),
	datac => \pea1~input_o\,
	datad => \L5|Cont\(7),
	combout => \L2|Mux1~2_combout\);

-- Location: LCCOMB_X7_Y23_N16
\Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~8_combout\ & \LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \LessThan9~0_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X7_Y23_N28
\M2[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(5) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & ((\Add0~13_combout\))) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & (M2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => M2(5),
	datac => \Add0~13_combout\,
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(5));

-- Location: LCCOMB_X7_Y23_N22
\M[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[5]~1_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & (\L6|Cont\(5))) # (!\pea2~input_o\ & ((M2(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(5),
	datab => M2(5),
	datac => \pea2~input_o\,
	datad => \pea1~input_o\,
	combout => \M[5]~1_combout\);

-- Location: LCCOMB_X5_Y23_N30
\L2|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux1~3_combout\ = (!\M[6]~0_combout\ & (!\M[7]~2_combout\ & (\L2|Mux1~2_combout\ & !\M[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[6]~0_combout\,
	datab => \M[7]~2_combout\,
	datac => \L2|Mux1~2_combout\,
	datad => \M[5]~1_combout\,
	combout => \L2|Mux1~3_combout\);

-- Location: LCCOMB_X8_Y23_N22
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\LessThan9~0_combout\ & ((\Add0~4_combout\))) # (!\LessThan9~0_combout\ & (\L1|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L1|Cont\(3),
	datac => \Add0~4_combout\,
	datad => \LessThan9~0_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X8_Y23_N2
\M2[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(3) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & ((\Add0~20_combout\))) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & (M2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => M2(3),
	datac => \Add0~20_combout\,
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(3));

-- Location: LCCOMB_X5_Y23_N4
\M[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[3]~10_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & ((\L6|Cont\(3)))) # (!\pea2~input_o\ & (M2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea2~input_o\,
	datab => M2(3),
	datac => \L6|Cont\(3),
	datad => \pea1~input_o\,
	combout => \M[3]~10_combout\);

-- Location: LCCOMB_X5_Y23_N24
\M[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[3]~11_combout\ = (\M[3]~10_combout\) # ((\L5|Cont\(3) & \pea1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(3),
	datab => \M[3]~10_combout\,
	datad => \pea1~input_o\,
	combout => \M[3]~11_combout\);

-- Location: LCCOMB_X8_Y23_N30
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\LessThan9~0_combout\ & ((\Add0~0_combout\))) # (!\LessThan9~0_combout\ & (\L1|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan9~0_combout\,
	datac => \L1|Cont\(1),
	datad => \Add0~0_combout\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X5_Y23_N22
\M2[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(1) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & ((\Add0~18_combout\))) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & (M2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => M2(1),
	datac => \Add0~18_combout\,
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(1));

-- Location: LCCOMB_X5_Y23_N0
\M[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[1]~6_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & (\L6|Cont\(1))) # (!\pea2~input_o\ & ((M2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pea2~input_o\,
	datab => \L6|Cont\(1),
	datac => M2(1),
	datad => \pea1~input_o\,
	combout => \M[1]~6_combout\);

-- Location: LCCOMB_X5_Y23_N6
\M[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[1]~7_combout\ = (\M[1]~6_combout\) # ((\L5|Cont\(1) & \pea1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(1),
	datab => \pea1~input_o\,
	datad => \M[1]~6_combout\,
	combout => \M[1]~7_combout\);

-- Location: LCCOMB_X7_Y23_N6
\Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\LessThan9~0_combout\ & ((\Add0~2_combout\))) # (!\LessThan9~0_combout\ & (\L1|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(2),
	datac => \LessThan9~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X7_Y23_N8
\M2[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(2) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & (\Add0~19_combout\)) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & ((M2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~19_combout\,
	datac => M2(2),
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(2));

-- Location: LCCOMB_X4_Y23_N0
\M[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[2]~8_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & ((\L6|Cont\(2)))) # (!\pea2~input_o\ & (M2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => M2(2),
	datab => \L6|Cont\(2),
	datac => \pea1~input_o\,
	datad => \pea2~input_o\,
	combout => \M[2]~8_combout\);

-- Location: LCCOMB_X4_Y23_N18
\M[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[2]~9_combout\ = (\M[2]~8_combout\) # ((\L5|Cont\(2) & \pea1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L5|Cont\(2),
	datac => \pea1~input_o\,
	datad => \M[2]~8_combout\,
	combout => \M[2]~9_combout\);

-- Location: LCCOMB_X8_Y23_N0
\Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~6_combout\ & \LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \LessThan9~0_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X8_Y23_N28
\M2[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(4) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & ((\Add0~17_combout\))) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & (M2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => M2(4),
	datac => \Add0~17_combout\,
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(4));

-- Location: LCCOMB_X7_Y23_N30
\M[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[4]~3_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & (\L6|Cont\(4))) # (!\pea2~input_o\ & ((M2(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L6|Cont\(4),
	datab => M2(4),
	datac => \pea2~input_o\,
	datad => \pea1~input_o\,
	combout => \M[4]~3_combout\);

-- Location: LCCOMB_X6_Y22_N16
\M[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[4]~4_combout\ = (\M[4]~3_combout\) # ((\pea1~input_o\ & \L5|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pea1~input_o\,
	datac => \M[4]~3_combout\,
	datad => \L5|Cont\(4),
	combout => \M[4]~4_combout\);

-- Location: LCCOMB_X6_Y26_N0
\L2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux3~0_combout\ = (!\M[4]~4_combout\ & ((\M[3]~11_combout\ & (!\M[1]~7_combout\ & \M[2]~9_combout\)) # (!\M[3]~11_combout\ & (\M[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[3]~11_combout\,
	datab => \M[1]~7_combout\,
	datac => \M[2]~9_combout\,
	datad => \M[4]~4_combout\,
	combout => \L2|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y26_N10
\L2|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux3~1_combout\ = (\L2|Mux1~3_combout\ & \L2|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L2|Mux1~3_combout\,
	datad => \L2|Mux3~0_combout\,
	combout => \L2|Mux3~1_combout\);

-- Location: LCCOMB_X6_Y22_N18
\L2|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux1~5_combout\ = (!\M[4]~3_combout\ & (\L2|Mux1~3_combout\ & ((!\pea1~input_o\) # (!\L5|Cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(4),
	datab => \pea1~input_o\,
	datac => \M[4]~3_combout\,
	datad => \L2|Mux1~3_combout\,
	combout => \L2|Mux1~5_combout\);

-- Location: LCCOMB_X6_Y26_N4
\L2|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux1~4_combout\ = (\M[3]~11_combout\ & (!\M[1]~7_combout\ & (!\M[2]~9_combout\ & \L2|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[3]~11_combout\,
	datab => \M[1]~7_combout\,
	datac => \M[2]~9_combout\,
	datad => \L2|Mux1~5_combout\,
	combout => \L2|Mux1~4_combout\);

-- Location: LCCOMB_X7_Y23_N14
\M2[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- M2(0) = (GLOBAL(\M2[7]~0clkctrl_outclk\) & (\L1|Cont\(0))) # (!GLOBAL(\M2[7]~0clkctrl_outclk\) & ((M2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \L1|Cont\(0),
	datac => M2(0),
	datad => \M2[7]~0clkctrl_outclk\,
	combout => M2(0));

-- Location: LCCOMB_X6_Y22_N2
\M[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M[0]~5_combout\ = (!\pea1~input_o\ & ((\pea2~input_o\ & ((\L6|Cont\(0)))) # (!\pea2~input_o\ & (M2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => M2(0),
	datab => \pea1~input_o\,
	datac => \pea2~input_o\,
	datad => \L6|Cont\(0),
	combout => \M[0]~5_combout\);

-- Location: LCCOMB_X6_Y22_N12
\L2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux4~0_combout\ = (\L2|Mux1~5_combout\ & ((\M[0]~5_combout\) # ((\L5|Cont\(0) & \pea1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L5|Cont\(0),
	datab => \M[0]~5_combout\,
	datac => \pea1~input_o\,
	datad => \L2|Mux1~5_combout\,
	combout => \L2|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y26_N24
\L2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux2~0_combout\ = (\M[2]~9_combout\ & (!\M[4]~4_combout\ & ((\M[1]~7_combout\) # (!\M[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[3]~11_combout\,
	datab => \M[1]~7_combout\,
	datac => \M[2]~9_combout\,
	datad => \M[4]~4_combout\,
	combout => \L2|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y26_N2
\L2|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux2~1_combout\ = (\L2|Mux1~3_combout\ & \L2|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L2|Mux1~3_combout\,
	datad => \L2|Mux2~0_combout\,
	combout => \L2|Mux2~1_combout\);

-- Location: LCCOMB_X6_Y26_N14
\L3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux6~0_combout\ = (\L2|Mux3~1_combout\ & (!\L2|Mux1~4_combout\ & ((!\L2|Mux2~1_combout\) # (!\L2|Mux4~0_combout\)))) # (!\L2|Mux3~1_combout\ & (\L2|Mux1~4_combout\ $ (((\L2|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux6~0_combout\);

-- Location: LCCOMB_X6_Y26_N20
\L3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux5~0_combout\ = (\L2|Mux4~0_combout\ & ((\L2|Mux3~1_combout\) # (\L2|Mux1~4_combout\ $ (!\L2|Mux2~1_combout\)))) # (!\L2|Mux4~0_combout\ & ((\L2|Mux2~1_combout\ & ((\L2|Mux1~4_combout\))) # (!\L2|Mux2~1_combout\ & (\L2|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y26_N18
\L3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux4~0_combout\ = (\L2|Mux4~0_combout\) # ((\L2|Mux3~1_combout\ & (\L2|Mux1~4_combout\)) # (!\L2|Mux3~1_combout\ & ((\L2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y26_N16
\L3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux3~0_combout\ = (\L2|Mux4~0_combout\ & ((\L2|Mux1~4_combout\) # (\L2|Mux3~1_combout\ $ (!\L2|Mux2~1_combout\)))) # (!\L2|Mux4~0_combout\ & ((\L2|Mux3~1_combout\ & (\L2|Mux1~4_combout\)) # (!\L2|Mux3~1_combout\ & ((\L2|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y26_N22
\L3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux2~0_combout\ = (\L2|Mux2~1_combout\ & (((\L2|Mux1~4_combout\)))) # (!\L2|Mux2~1_combout\ & (\L2|Mux3~1_combout\ & ((\L2|Mux1~4_combout\) # (!\L2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y26_N28
\L3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux1~0_combout\ = (\L2|Mux1~4_combout\ & ((\L2|Mux3~1_combout\) # ((\L2|Mux2~1_combout\)))) # (!\L2|Mux1~4_combout\ & (\L2|Mux2~1_combout\ & (\L2|Mux3~1_combout\ $ (\L2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux1~0_combout\);

-- Location: LCCOMB_X6_Y26_N30
\L3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L3|Mux0~0_combout\ = (\L2|Mux3~1_combout\ & (\L2|Mux1~4_combout\)) # (!\L2|Mux3~1_combout\ & (\L2|Mux2~1_combout\ $ (((!\L2|Mux1~4_combout\ & \L2|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L2|Mux3~1_combout\,
	datab => \L2|Mux1~4_combout\,
	datac => \L2|Mux4~0_combout\,
	datad => \L2|Mux2~1_combout\,
	combout => \L3|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y26_N12
\L2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux0~0_combout\ = (\M[3]~11_combout\ & (!\M[4]~4_combout\ & ((\M[1]~7_combout\) # (\M[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[3]~11_combout\,
	datab => \M[1]~7_combout\,
	datac => \M[2]~9_combout\,
	datad => \M[4]~4_combout\,
	combout => \L2|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y26_N26
\L2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \L2|Mux0~1_combout\ = (\L2|Mux1~3_combout\ & \L2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \L2|Mux1~3_combout\,
	datad => \L2|Mux0~0_combout\,
	combout => \L2|Mux0~1_combout\);

ww_Sem1(0) <= \Sem1[0]~output_o\;

ww_Sem1(1) <= \Sem1[1]~output_o\;

ww_Sem1(2) <= \Sem1[2]~output_o\;

ww_Sem2 <= \Sem2~output_o\;

ww_Sem3(0) <= \Sem3[0]~output_o\;

ww_Sem3(1) <= \Sem3[1]~output_o\;

ww_Sem3(2) <= \Sem3[2]~output_o\;

ww_Sem4 <= \Sem4~output_o\;

ww_Dis_1(0) <= \Dis_1[0]~output_o\;

ww_Dis_1(1) <= \Dis_1[1]~output_o\;

ww_Dis_1(2) <= \Dis_1[2]~output_o\;

ww_Dis_1(3) <= \Dis_1[3]~output_o\;

ww_Dis_1(4) <= \Dis_1[4]~output_o\;

ww_Dis_1(5) <= \Dis_1[5]~output_o\;

ww_Dis_1(6) <= \Dis_1[6]~output_o\;

ww_Dis_2(0) <= \Dis_2[0]~output_o\;

ww_Dis_2(1) <= \Dis_2[1]~output_o\;

ww_Dis_2(2) <= \Dis_2[2]~output_o\;

ww_Dis_2(3) <= \Dis_2[3]~output_o\;

ww_Dis_2(4) <= \Dis_2[4]~output_o\;

ww_Dis_2(5) <= \Dis_2[5]~output_o\;

ww_Dis_2(6) <= \Dis_2[6]~output_o\;
END structure;


