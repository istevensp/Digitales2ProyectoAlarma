-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "07/20/2019 15:03:58"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	particion IS
    PORT (
	ldn : OUT std_logic;
	clk : IN std_logic;
	rstn : IN std_logic;
	tecla : OUT std_logic;
	teclado : IN std_logic_vector(9 DOWNTO 0);
	clave : OUT std_logic;
	num1 : OUT std_logic_vector(3 DOWNTO 0);
	en1 : OUT std_logic;
	num2 : OUT std_logic_vector(3 DOWNTO 0);
	en2 : OUT std_logic;
	num3 : OUT std_logic_vector(3 DOWNTO 0);
	en3 : OUT std_logic;
	num4 : OUT std_logic_vector(3 DOWNTO 0);
	en4 : OUT std_logic;
	start : IN std_logic;
	ok10s : OUT std_logic;
	en10s : OUT std_logic;
	ld10s : OUT std_logic;
	clk_1 : IN std_logic;
	sp : IN std_logic;
	sensores : OUT std_logic;
	s2 : IN std_logic;
	s3 : IN std_logic;
	s1 : IN std_logic;
	ok10se : OUT std_logic;
	en10se : OUT std_logic;
	ld10se : OUT std_logic;
	ok2s : OUT std_logic;
	en2s : OUT std_logic;
	ld2s : OUT std_logic;
	ok20s : OUT std_logic;
	en20s : OUT std_logic;
	ld20s : OUT std_logic;
	alarma : OUT std_logic;
	sirena : OUT std_logic;
	ua : OUT std_logic;
	estados : OUT std_logic_vector(5 DOWNTO 0);
	s10 : OUT std_logic_vector(3 DOWNTO 0);
	s20 : OUT std_logic_vector(4 DOWNTO 0);
	se10 : OUT std_logic_vector(3 DOWNTO 0);
	se2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END particion;

ARCHITECTURE structure OF particion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ldn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstn : std_logic;
SIGNAL ww_tecla : std_logic;
SIGNAL ww_teclado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clave : std_logic;
SIGNAL ww_num1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en1 : std_logic;
SIGNAL ww_num2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en2 : std_logic;
SIGNAL ww_num3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en3 : std_logic;
SIGNAL ww_num4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_en4 : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_ok10s : std_logic;
SIGNAL ww_en10s : std_logic;
SIGNAL ww_ld10s : std_logic;
SIGNAL ww_clk_1 : std_logic;
SIGNAL ww_sp : std_logic;
SIGNAL ww_sensores : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_ok10se : std_logic;
SIGNAL ww_en10se : std_logic;
SIGNAL ww_ld10se : std_logic;
SIGNAL ww_ok2s : std_logic;
SIGNAL ww_en2s : std_logic;
SIGNAL ww_ld2s : std_logic;
SIGNAL ww_ok20s : std_logic;
SIGNAL ww_en20s : std_logic;
SIGNAL ww_ld20s : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_sirena : std_logic;
SIGNAL ww_ua : std_logic;
SIGNAL ww_estados : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s20 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_se10 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_se2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ldn~output_o\ : std_logic;
SIGNAL \tecla~output_o\ : std_logic;
SIGNAL \clave~output_o\ : std_logic;
SIGNAL \num1[3]~output_o\ : std_logic;
SIGNAL \num1[2]~output_o\ : std_logic;
SIGNAL \num1[1]~output_o\ : std_logic;
SIGNAL \num1[0]~output_o\ : std_logic;
SIGNAL \en1~output_o\ : std_logic;
SIGNAL \num2[3]~output_o\ : std_logic;
SIGNAL \num2[2]~output_o\ : std_logic;
SIGNAL \num2[1]~output_o\ : std_logic;
SIGNAL \num2[0]~output_o\ : std_logic;
SIGNAL \en2~output_o\ : std_logic;
SIGNAL \num3[3]~output_o\ : std_logic;
SIGNAL \num3[2]~output_o\ : std_logic;
SIGNAL \num3[1]~output_o\ : std_logic;
SIGNAL \num3[0]~output_o\ : std_logic;
SIGNAL \en3~output_o\ : std_logic;
SIGNAL \num4[3]~output_o\ : std_logic;
SIGNAL \num4[2]~output_o\ : std_logic;
SIGNAL \num4[1]~output_o\ : std_logic;
SIGNAL \num4[0]~output_o\ : std_logic;
SIGNAL \en4~output_o\ : std_logic;
SIGNAL \ok10s~output_o\ : std_logic;
SIGNAL \en10s~output_o\ : std_logic;
SIGNAL \ld10s~output_o\ : std_logic;
SIGNAL \sensores~output_o\ : std_logic;
SIGNAL \ok10se~output_o\ : std_logic;
SIGNAL \en10se~output_o\ : std_logic;
SIGNAL \ld10se~output_o\ : std_logic;
SIGNAL \ok2s~output_o\ : std_logic;
SIGNAL \en2s~output_o\ : std_logic;
SIGNAL \ld2s~output_o\ : std_logic;
SIGNAL \ok20s~output_o\ : std_logic;
SIGNAL \en20s~output_o\ : std_logic;
SIGNAL \ld20s~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \sirena~output_o\ : std_logic;
SIGNAL \ua~output_o\ : std_logic;
SIGNAL \estados[5]~output_o\ : std_logic;
SIGNAL \estados[4]~output_o\ : std_logic;
SIGNAL \estados[3]~output_o\ : std_logic;
SIGNAL \estados[2]~output_o\ : std_logic;
SIGNAL \estados[1]~output_o\ : std_logic;
SIGNAL \estados[0]~output_o\ : std_logic;
SIGNAL \s10[3]~output_o\ : std_logic;
SIGNAL \s10[2]~output_o\ : std_logic;
SIGNAL \s10[1]~output_o\ : std_logic;
SIGNAL \s10[0]~output_o\ : std_logic;
SIGNAL \s20[4]~output_o\ : std_logic;
SIGNAL \s20[3]~output_o\ : std_logic;
SIGNAL \s20[2]~output_o\ : std_logic;
SIGNAL \s20[1]~output_o\ : std_logic;
SIGNAL \s20[0]~output_o\ : std_logic;
SIGNAL \se10[3]~output_o\ : std_logic;
SIGNAL \se10[2]~output_o\ : std_logic;
SIGNAL \se10[1]~output_o\ : std_logic;
SIGNAL \se10[0]~output_o\ : std_logic;
SIGNAL \se2[3]~output_o\ : std_logic;
SIGNAL \se2[2]~output_o\ : std_logic;
SIGNAL \se2[1]~output_o\ : std_logic;
SIGNAL \se2[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \inst47|y.s0~0_combout\ : std_logic;
SIGNAL \rstn~input_o\ : std_logic;
SIGNAL \inst47|y.s0~q\ : std_logic;
SIGNAL \teclado[4]~input_o\ : std_logic;
SIGNAL \teclado[6]~input_o\ : std_logic;
SIGNAL \teclado[5]~input_o\ : std_logic;
SIGNAL \inst4|Equal7~2_combout\ : std_logic;
SIGNAL \teclado[7]~input_o\ : std_logic;
SIGNAL \teclado[9]~input_o\ : std_logic;
SIGNAL \teclado[8]~input_o\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \teclado[0]~input_o\ : std_logic;
SIGNAL \teclado[3]~input_o\ : std_logic;
SIGNAL \teclado[2]~input_o\ : std_logic;
SIGNAL \teclado[1]~input_o\ : std_logic;
SIGNAL \inst4|Equal4~1_combout\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst200|temp~8_combout\ : std_logic;
SIGNAL \inst200|temp~9_combout\ : std_logic;
SIGNAL \inst200|temp~7_combout\ : std_logic;
SIGNAL \inst200|temp~3_combout\ : std_logic;
SIGNAL \inst200|temp~27_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \clk_1~input_o\ : std_logic;
SIGNAL \inst54|temp[0]~5_combout\ : std_logic;
SIGNAL \inst44|temp~1_combout\ : std_logic;
SIGNAL \inst47|y~58_combout\ : std_logic;
SIGNAL \sp~input_o\ : std_logic;
SIGNAL \inst47|Selector11~0_combout\ : std_logic;
SIGNAL \inst47|Selector5~0_combout\ : std_logic;
SIGNAL \inst47|y.s5~q\ : std_logic;
SIGNAL \inst47|Selector6~0_combout\ : std_logic;
SIGNAL \inst47|y.s6~q\ : std_logic;
SIGNAL \inst47|Selector7~0_combout\ : std_logic;
SIGNAL \inst47|y.s7~q\ : std_logic;
SIGNAL \inst47|Selector8~0_combout\ : std_logic;
SIGNAL \inst47|y.s8~q\ : std_logic;
SIGNAL \inst47|Selector9~0_combout\ : std_logic;
SIGNAL \inst47|y.s9~q\ : std_logic;
SIGNAL \inst47|Selector10~0_combout\ : std_logic;
SIGNAL \inst47|y.s10~q\ : std_logic;
SIGNAL \inst47|Selector11~1_combout\ : std_logic;
SIGNAL \inst47|y.s11~q\ : std_logic;
SIGNAL \inst44|temp[0]~0_combout\ : std_logic;
SIGNAL \inst44|Add0~1_combout\ : std_logic;
SIGNAL \inst44|Add0~2_combout\ : std_logic;
SIGNAL \inst44|Add0~0_combout\ : std_logic;
SIGNAL \inst45|Equal0~0_combout\ : std_logic;
SIGNAL \inst47|Selector13~0_combout\ : std_logic;
SIGNAL \inst47|Selector12~0_combout\ : std_logic;
SIGNAL \inst47|y.s12~q\ : std_logic;
SIGNAL \inst47|Selector13~1_combout\ : std_logic;
SIGNAL \inst47|Selector13~2_combout\ : std_logic;
SIGNAL \inst47|y.s13~q\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \s3~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \inst50~0_combout\ : std_logic;
SIGNAL \inst47|Selector26~0_combout\ : std_logic;
SIGNAL \inst47|y.s26~0_combout\ : std_logic;
SIGNAL \inst47|y.s26~q\ : std_logic;
SIGNAL \inst47|Selector15~0_combout\ : std_logic;
SIGNAL \inst47|Selector15~1_combout\ : std_logic;
SIGNAL \inst48|temp~0_combout\ : std_logic;
SIGNAL \inst47|Selector16~2_combout\ : std_logic;
SIGNAL \inst47|Selector16~3_combout\ : std_logic;
SIGNAL \inst47|y.s16~q\ : std_logic;
SIGNAL \inst47|Selector17~2_combout\ : std_logic;
SIGNAL \inst47|Selector17~3_combout\ : std_logic;
SIGNAL \inst47|y.s17~q\ : std_logic;
SIGNAL \inst47|Selector18~0_combout\ : std_logic;
SIGNAL \inst47|Selector18~1_combout\ : std_logic;
SIGNAL \inst47|y.s18~q\ : std_logic;
SIGNAL \inst47|Selector19~2_combout\ : std_logic;
SIGNAL \inst47|Selector19~3_combout\ : std_logic;
SIGNAL \inst47|y.s19~q\ : std_logic;
SIGNAL \inst47|Selector20~0_combout\ : std_logic;
SIGNAL \inst47|Selector20~1_combout\ : std_logic;
SIGNAL \inst47|y.s20~q\ : std_logic;
SIGNAL \inst47|Selector21~2_combout\ : std_logic;
SIGNAL \inst47|Selector21~3_combout\ : std_logic;
SIGNAL \inst47|y.s21~q\ : std_logic;
SIGNAL \inst47|WideOr21~0_combout\ : std_logic;
SIGNAL \inst47|Selector22~0_combout\ : std_logic;
SIGNAL \inst47|Selector22~1_combout\ : std_logic;
SIGNAL \inst47|y.s22~q\ : std_logic;
SIGNAL \inst47|Selector14~0_combout\ : std_logic;
SIGNAL \inst48|temp[0]~1_combout\ : std_logic;
SIGNAL \inst48|Add0~2_combout\ : std_logic;
SIGNAL \inst48|Add0~0_combout\ : std_logic;
SIGNAL \inst48|Add0~1_combout\ : std_logic;
SIGNAL \inst49|Equal0~0_combout\ : std_logic;
SIGNAL \inst47|Selector15~2_combout\ : std_logic;
SIGNAL \inst47|y.s15~q\ : std_logic;
SIGNAL \inst47|Selector14~1_combout\ : std_logic;
SIGNAL \inst47|Selector14~2_combout\ : std_logic;
SIGNAL \inst55|Equal0~0_combout\ : std_logic;
SIGNAL \inst47|Selector14~3_combout\ : std_logic;
SIGNAL \inst47|Selector14~4_combout\ : std_logic;
SIGNAL \inst47|Selector14~5_combout\ : std_logic;
SIGNAL \inst47|Selector23~0_combout\ : std_logic;
SIGNAL \inst47|y.s23~q\ : std_logic;
SIGNAL \inst47|Selector14~6_combout\ : std_logic;
SIGNAL \inst47|y.s14~q\ : std_logic;
SIGNAL \inst54|temp[0]~15_combout\ : std_logic;
SIGNAL \inst54|temp[0]~6\ : std_logic;
SIGNAL \inst54|temp[1]~7_combout\ : std_logic;
SIGNAL \inst54|temp[1]~8\ : std_logic;
SIGNAL \inst54|temp[2]~9_combout\ : std_logic;
SIGNAL \inst54|temp[2]~10\ : std_logic;
SIGNAL \inst54|temp[3]~11_combout\ : std_logic;
SIGNAL \inst54|temp[3]~12\ : std_logic;
SIGNAL \inst54|temp[4]~13_combout\ : std_logic;
SIGNAL \inst47|y.s25~0_combout\ : std_logic;
SIGNAL \inst47|y.s25~q\ : std_logic;
SIGNAL \inst47|Selector2~4_combout\ : std_logic;
SIGNAL \inst52|temp~1_combout\ : std_logic;
SIGNAL \inst47|Selector24~3_combout\ : std_logic;
SIGNAL \inst47|Selector24~2_combout\ : std_logic;
SIGNAL \inst47|y.s24~q\ : std_logic;
SIGNAL \inst52|temp[0]~0_combout\ : std_logic;
SIGNAL \inst52|Add0~0_combout\ : std_logic;
SIGNAL \inst52|Add0~2_combout\ : std_logic;
SIGNAL \inst52|Add0~1_combout\ : std_logic;
SIGNAL \inst53|Equal0~0_combout\ : std_logic;
SIGNAL \inst47|Selector1~0_combout\ : std_logic;
SIGNAL \inst47|y.s1~q\ : std_logic;
SIGNAL \inst47|Selector2~2_combout\ : std_logic;
SIGNAL \inst47|Selector2~3_combout\ : std_logic;
SIGNAL \inst47|y.s2~q\ : std_logic;
SIGNAL \inst47|Selector3~0_combout\ : std_logic;
SIGNAL \inst47|y.s3~q\ : std_logic;
SIGNAL \inst47|Selector4~0_combout\ : std_logic;
SIGNAL \inst47|y.s4~q\ : std_logic;
SIGNAL \inst1|temp[0]~0_combout\ : std_logic;
SIGNAL \inst4|Equal4~2_combout\ : std_logic;
SIGNAL \inst4|Equal5~0_combout\ : std_logic;
SIGNAL \inst4|Equal6~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|Equal4~3_combout\ : std_logic;
SIGNAL \inst200|temp~18_combout\ : std_logic;
SIGNAL \inst200|temp~19_combout\ : std_logic;
SIGNAL \inst47|en1~0_combout\ : std_logic;
SIGNAL \inst200|temp[3]~20_combout\ : std_logic;
SIGNAL \inst4|Equal8~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~3_combout\ : std_logic;
SIGNAL \inst4|Salida[3]~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst200|temp~21_combout\ : std_logic;
SIGNAL \inst4|Salida[3]~1_combout\ : std_logic;
SIGNAL \inst4|Salida[3]~2_combout\ : std_logic;
SIGNAL \inst200|temp~22_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst200|temp~23_combout\ : std_logic;
SIGNAL \inst200|temp~24_combout\ : std_logic;
SIGNAL \inst2|temp[3]~0_combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst200|temp~25_combout\ : std_logic;
SIGNAL \inst200|temp~26_combout\ : std_logic;
SIGNAL \inst18~1_combout\ : std_logic;
SIGNAL \inst3|temp[3]~0_combout\ : std_logic;
SIGNAL \inst18~2_combout\ : std_logic;
SIGNAL \inst18~3_combout\ : std_logic;
SIGNAL \inst18~4_combout\ : std_logic;
SIGNAL \inst43~0_combout\ : std_logic;
SIGNAL \inst43~1_combout\ : std_logic;
SIGNAL \inst43~2_combout\ : std_logic;
SIGNAL \inst43~3_combout\ : std_logic;
SIGNAL \inst43~4_combout\ : std_logic;
SIGNAL \inst43~5_combout\ : std_logic;
SIGNAL \inst43~6_combout\ : std_logic;
SIGNAL \inst43~7_combout\ : std_logic;
SIGNAL \inst47|en2~0_combout\ : std_logic;
SIGNAL \inst47|en3~0_combout\ : std_logic;
SIGNAL \inst47|en4~0_combout\ : std_logic;
SIGNAL \inst47|WideOr25~combout\ : std_logic;
SIGNAL \inst55|Equal0~1_combout\ : std_logic;
SIGNAL \inst47|WideOr17~0_combout\ : std_logic;
SIGNAL \inst47|WideOr23~0_combout\ : std_logic;
SIGNAL \inst47|WideOr23~combout\ : std_logic;
SIGNAL \inst47|WideOr24~0_combout\ : std_logic;
SIGNAL \inst47|WideOr24~combout\ : std_logic;
SIGNAL \inst47|WideOr17~combout\ : std_logic;
SIGNAL \inst47|WideOr18~0_combout\ : std_logic;
SIGNAL \inst47|WideOr18~1_combout\ : std_logic;
SIGNAL \inst47|WideOr18~2_combout\ : std_logic;
SIGNAL \inst47|WideOr19~0_combout\ : std_logic;
SIGNAL \inst47|WideOr19~1_combout\ : std_logic;
SIGNAL \inst47|WideOr19~2_combout\ : std_logic;
SIGNAL \inst47|WideOr20~0_combout\ : std_logic;
SIGNAL \inst47|WideOr20~1_combout\ : std_logic;
SIGNAL \inst47|WideOr20~2_combout\ : std_logic;
SIGNAL \inst47|WideOr21~1_combout\ : std_logic;
SIGNAL \inst47|WideOr21~2_combout\ : std_logic;
SIGNAL \inst200|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst44|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst48|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst52|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst54|temp\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst47|ALT_INV_y.s0~q\ : std_logic;
SIGNAL \inst49|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ldn <= ww_ldn;
ww_clk <= clk;
ww_rstn <= rstn;
tecla <= ww_tecla;
ww_teclado <= teclado;
clave <= ww_clave;
num1 <= ww_num1;
en1 <= ww_en1;
num2 <= ww_num2;
en2 <= ww_en2;
num3 <= ww_num3;
en3 <= ww_en3;
num4 <= ww_num4;
en4 <= ww_en4;
ww_start <= start;
ok10s <= ww_ok10s;
en10s <= ww_en10s;
ld10s <= ww_ld10s;
ww_clk_1 <= clk_1;
ww_sp <= sp;
sensores <= ww_sensores;
ww_s2 <= s2;
ww_s3 <= s3;
ww_s1 <= s1;
ok10se <= ww_ok10se;
en10se <= ww_en10se;
ld10se <= ww_ld10se;
ok2s <= ww_ok2s;
en2s <= ww_en2s;
ld2s <= ww_ld2s;
ok20s <= ww_ok20s;
en20s <= ww_en20s;
ld20s <= ww_ld20s;
alarma <= ww_alarma;
sirena <= ww_sirena;
ua <= ww_ua;
estados <= ww_estados;
s10 <= ww_s10;
s20 <= ww_s20;
se10 <= ww_se10;
se2 <= ww_se2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst47|ALT_INV_y.s0~q\ <= NOT \inst47|y.s0~q\;
\inst49|ALT_INV_Equal0~0_combout\ <= NOT \inst49|Equal0~0_combout\;

\ldn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_y.s0~q\,
	devoe => ww_devoe,
	o => \ldn~output_o\);

\tecla~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~combout\,
	devoe => ww_devoe,
	o => \tecla~output_o\);

\clave~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst43~7_combout\,
	devoe => ww_devoe,
	o => \clave~output_o\);

\num1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst200|temp\(3),
	devoe => ww_devoe,
	o => \num1[3]~output_o\);

\num1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst200|temp\(2),
	devoe => ww_devoe,
	o => \num1[2]~output_o\);

\num1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst200|temp\(1),
	devoe => ww_devoe,
	o => \num1[1]~output_o\);

\num1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst200|temp\(0),
	devoe => ww_devoe,
	o => \num1[0]~output_o\);

\en1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|en1~0_combout\,
	devoe => ww_devoe,
	o => \en1~output_o\);

\num2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(3),
	devoe => ww_devoe,
	o => \num2[3]~output_o\);

\num2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(2),
	devoe => ww_devoe,
	o => \num2[2]~output_o\);

\num2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(1),
	devoe => ww_devoe,
	o => \num2[1]~output_o\);

\num2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|temp\(0),
	devoe => ww_devoe,
	o => \num2[0]~output_o\);

\en2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|en2~0_combout\,
	devoe => ww_devoe,
	o => \en2~output_o\);

\num3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|temp\(3),
	devoe => ww_devoe,
	o => \num3[3]~output_o\);

\num3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|temp\(2),
	devoe => ww_devoe,
	o => \num3[2]~output_o\);

\num3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|temp\(1),
	devoe => ww_devoe,
	o => \num3[1]~output_o\);

\num3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|temp\(0),
	devoe => ww_devoe,
	o => \num3[0]~output_o\);

\en3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|en3~0_combout\,
	devoe => ww_devoe,
	o => \en3~output_o\);

\num4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|temp\(3),
	devoe => ww_devoe,
	o => \num4[3]~output_o\);

\num4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|temp\(2),
	devoe => ww_devoe,
	o => \num4[2]~output_o\);

\num4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|temp\(1),
	devoe => ww_devoe,
	o => \num4[1]~output_o\);

\num4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|temp\(0),
	devoe => ww_devoe,
	o => \num4[0]~output_o\);

\en4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|en4~0_combout\,
	devoe => ww_devoe,
	o => \en4~output_o\);

\ok10s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ok10s~output_o\);

\en10s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|y.s11~q\,
	devoe => ww_devoe,
	o => \en10s~output_o\);

\ld10s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_y.s0~q\,
	devoe => ww_devoe,
	o => \ld10s~output_o\);

\sensores~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst50~0_combout\,
	devoe => ww_devoe,
	o => \sensores~output_o\);

\ok10se~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst49|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ok10se~output_o\);

\en10se~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr25~combout\,
	devoe => ww_devoe,
	o => \en10se~output_o\);

\ld10se~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_y.s0~q\,
	devoe => ww_devoe,
	o => \ld10se~output_o\);

\ok2s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst53|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ok2s~output_o\);

\en2s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|y.s24~q\,
	devoe => ww_devoe,
	o => \en2s~output_o\);

\ld2s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_y.s0~q\,
	devoe => ww_devoe,
	o => \ld2s~output_o\);

\ok20s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst55|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \ok20s~output_o\);

\en20s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|y.s14~q\,
	devoe => ww_devoe,
	o => \en20s~output_o\);

\ld20s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|ALT_INV_y.s0~q\,
	devoe => ww_devoe,
	o => \ld20s~output_o\);

\alarma~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr23~combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

\sirena~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr24~combout\,
	devoe => ww_devoe,
	o => \sirena~output_o\);

\ua~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|y.s24~q\,
	devoe => ww_devoe,
	o => \ua~output_o\);

\estados[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \estados[5]~output_o\);

\estados[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr17~combout\,
	devoe => ww_devoe,
	o => \estados[4]~output_o\);

\estados[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr18~2_combout\,
	devoe => ww_devoe,
	o => \estados[3]~output_o\);

\estados[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr19~2_combout\,
	devoe => ww_devoe,
	o => \estados[2]~output_o\);

\estados[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => \estados[1]~output_o\);

\estados[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst47|WideOr21~2_combout\,
	devoe => ww_devoe,
	o => \estados[0]~output_o\);

\s10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|temp\(3),
	devoe => ww_devoe,
	o => \s10[3]~output_o\);

\s10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|temp\(2),
	devoe => ww_devoe,
	o => \s10[2]~output_o\);

\s10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|temp\(1),
	devoe => ww_devoe,
	o => \s10[1]~output_o\);

\s10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44|temp\(0),
	devoe => ww_devoe,
	o => \s10[0]~output_o\);

\s20[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|temp\(4),
	devoe => ww_devoe,
	o => \s20[4]~output_o\);

\s20[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|temp\(3),
	devoe => ww_devoe,
	o => \s20[3]~output_o\);

\s20[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|temp\(2),
	devoe => ww_devoe,
	o => \s20[2]~output_o\);

\s20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|temp\(1),
	devoe => ww_devoe,
	o => \s20[1]~output_o\);

\s20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst54|temp\(0),
	devoe => ww_devoe,
	o => \s20[0]~output_o\);

\se10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst48|temp\(3),
	devoe => ww_devoe,
	o => \se10[3]~output_o\);

\se10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst48|temp\(2),
	devoe => ww_devoe,
	o => \se10[2]~output_o\);

\se10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst48|temp\(1),
	devoe => ww_devoe,
	o => \se10[1]~output_o\);

\se10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst48|temp\(0),
	devoe => ww_devoe,
	o => \se10[0]~output_o\);

\se2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst52|temp\(3),
	devoe => ww_devoe,
	o => \se2[3]~output_o\);

\se2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst52|temp\(2),
	devoe => ww_devoe,
	o => \se2[2]~output_o\);

\se2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst52|temp\(1),
	devoe => ww_devoe,
	o => \se2[1]~output_o\);

\se2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst52|temp\(0),
	devoe => ww_devoe,
	o => \se2[0]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\inst47|y.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|y.s0~0_combout\ = (\inst47|y.s0~q\) # (\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s0~q\,
	datab => \start~input_o\,
	combout => \inst47|y.s0~0_combout\);

\rstn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstn,
	o => \rstn~input_o\);

\inst47|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|y.s0~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s0~q\);

\teclado[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(4),
	o => \teclado[4]~input_o\);

\teclado[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(6),
	o => \teclado[6]~input_o\);

\teclado[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(5),
	o => \teclado[5]~input_o\);

\inst4|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~2_combout\ = (!\teclado[4]~input_o\ & (!\teclado[6]~input_o\ & !\teclado[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \teclado[4]~input_o\,
	datac => \teclado[6]~input_o\,
	datad => \teclado[5]~input_o\,
	combout => \inst4|Equal7~2_combout\);

\teclado[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(7),
	o => \teclado[7]~input_o\);

\teclado[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(9),
	o => \teclado[9]~input_o\);

\teclado[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(8),
	o => \teclado[8]~input_o\);

\inst4|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = (!\teclado[7]~input_o\ & (!\teclado[9]~input_o\ & !\teclado[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \teclado[7]~input_o\,
	datac => \teclado[9]~input_o\,
	datad => \teclado[8]~input_o\,
	combout => \inst4|Equal4~0_combout\);

\teclado[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(0),
	o => \teclado[0]~input_o\);

\teclado[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(3),
	o => \teclado[3]~input_o\);

\teclado[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(2),
	o => \teclado[2]~input_o\);

\teclado[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_teclado(1),
	o => \teclado[1]~input_o\);

\inst4|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal4~1_combout\ = (!\teclado[0]~input_o\ & (!\teclado[3]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[0]~input_o\,
	datab => \teclado[3]~input_o\,
	datac => \teclado[2]~input_o\,
	datad => \teclado[1]~input_o\,
	combout => \inst4|Equal4~1_combout\);

inst29 : cycloneive_lcell_comb
-- Equation(s):
-- \inst29~combout\ = ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal4~0_combout\)) # (!\inst4|Equal7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal7~2_combout\,
	datac => \inst4|Equal4~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst29~combout\);

\inst200|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~8_combout\ = (\teclado[4]~input_o\ & (!\teclado[0]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[8]~input_o\))) # (!\teclado[4]~input_o\ & ((\teclado[0]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[8]~input_o\)) # (!\teclado[0]~input_o\ & 
-- (\teclado[2]~input_o\ $ (\teclado[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[4]~input_o\,
	datab => \teclado[0]~input_o\,
	datac => \teclado[2]~input_o\,
	datad => \teclado[8]~input_o\,
	combout => \inst200|temp~8_combout\);

\inst200|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~9_combout\ = (!\teclado[4]~input_o\ & (!\teclado[0]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[4]~input_o\,
	datab => \teclado[0]~input_o\,
	datac => \teclado[2]~input_o\,
	datad => \teclado[8]~input_o\,
	combout => \inst200|temp~9_combout\);

\inst200|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~7_combout\ = (\teclado[6]~input_o\ & ((\inst200|temp~9_combout\))) # (!\teclado[6]~input_o\ & (\inst200|temp~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp~8_combout\,
	datab => \inst200|temp~9_combout\,
	datac => \teclado[6]~input_o\,
	combout => \inst200|temp~7_combout\);

\inst200|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~3_combout\ = (\inst200|temp~7_combout\ & (!\teclado[5]~input_o\ & (!\teclado[9]~input_o\ & !\teclado[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp~7_combout\,
	datab => \teclado[5]~input_o\,
	datac => \teclado[9]~input_o\,
	datad => \teclado[7]~input_o\,
	combout => \inst200|temp~3_combout\);

\inst200|temp~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~27_combout\ = (\inst200|temp~3_combout\ & (!\teclado[1]~input_o\ & (!\teclado[3]~input_o\ & \inst47|y.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp~3_combout\,
	datab => \teclado[1]~input_o\,
	datac => \teclado[3]~input_o\,
	datad => \inst47|y.s0~q\,
	combout => \inst200|temp~27_combout\);

\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|Equal7~2_combout\ & (!\teclado[7]~input_o\ & (!\teclado[9]~input_o\ & !\teclado[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~2_combout\,
	datab => \teclado[7]~input_o\,
	datac => \teclado[9]~input_o\,
	datad => \teclado[8]~input_o\,
	combout => \inst4|Equal0~0_combout\);

\clk_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1,
	o => \clk_1~input_o\);

\inst54|temp[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[0]~5_combout\ = \inst54|temp\(0) $ (VCC)
-- \inst54|temp[0]~6\ = CARRY(\inst54|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(0),
	datad => VCC,
	combout => \inst54|temp[0]~5_combout\,
	cout => \inst54|temp[0]~6\);

\inst44|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|temp~1_combout\ = (!\inst44|temp\(0) & \inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|temp\(0),
	datad => \inst47|y.s0~q\,
	combout => \inst44|temp~1_combout\);

\inst47|y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|y~58_combout\ = (\inst47|y.s25~q\) # (\inst47|y.s26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	combout => \inst47|y~58_combout\);

\sp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sp,
	o => \sp~input_o\);

\inst47|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector11~0_combout\ = (\inst47|y.s11~q\ & ((\inst47|y~58_combout\) # ((\sp~input_o\ & !\inst45|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s11~q\,
	datab => \inst47|y~58_combout\,
	datac => \sp~input_o\,
	datad => \inst45|Equal0~0_combout\,
	combout => \inst47|Selector11~0_combout\);

\inst47|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector5~0_combout\ = (\inst47|y.s4~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s4~q\ & (\inst47|y.s5~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s4~q\,
	datab => \inst47|y.s5~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|Selector5~0_combout\);

\inst47|y.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector5~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s5~q\);

\inst47|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector6~0_combout\ = (\inst4|Equal0~0_combout\ & (\inst4|Equal4~1_combout\ & ((\inst47|y.s6~q\) # (\inst47|y.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst4|Equal4~1_combout\,
	datac => \inst47|y.s6~q\,
	datad => \inst47|y.s5~q\,
	combout => \inst47|Selector6~0_combout\);

\inst47|y.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector6~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s6~q\);

\inst47|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector7~0_combout\ = (\inst47|y.s6~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s6~q\ & (\inst47|y.s7~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s6~q\,
	datab => \inst47|y.s7~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|Selector7~0_combout\);

\inst47|y.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector7~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s7~q\);

\inst47|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector8~0_combout\ = (\inst4|Equal0~0_combout\ & (\inst4|Equal4~1_combout\ & ((\inst47|y.s8~q\) # (\inst47|y.s7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst4|Equal4~1_combout\,
	datac => \inst47|y.s8~q\,
	datad => \inst47|y.s7~q\,
	combout => \inst47|Selector8~0_combout\);

\inst47|y.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector8~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s8~q\);

\inst47|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector9~0_combout\ = (\inst47|y.s8~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s8~q\ & (\inst47|y.s9~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s8~q\,
	datab => \inst47|y.s9~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|Selector9~0_combout\);

\inst47|y.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector9~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s9~q\);

\inst47|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector10~0_combout\ = (\inst4|Equal7~2_combout\ & (\inst4|Equal4~0_combout\ & (\inst4|Equal4~1_combout\ & \inst47|y.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~2_combout\,
	datab => \inst4|Equal4~0_combout\,
	datac => \inst4|Equal4~1_combout\,
	datad => \inst47|y.s9~q\,
	combout => \inst47|Selector10~0_combout\);

\inst47|y.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector10~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s10~q\);

\inst47|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector11~1_combout\ = (\inst47|Selector11~0_combout\) # ((\inst43~7_combout\ & \inst47|y.s10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector11~0_combout\,
	datab => \inst43~7_combout\,
	datac => \inst47|y.s10~q\,
	combout => \inst47|Selector11~1_combout\);

\inst47|y.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector11~1_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s11~q\);

\inst44|temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|temp[0]~0_combout\ = (\inst47|y.s11~q\) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s11~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst44|temp[0]~0_combout\);

\inst44|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst44|temp~1_combout\,
	clrn => \rstn~input_o\,
	ena => \inst44|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|temp\(0));

\inst44|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Add0~1_combout\ = \inst44|temp\(0) $ (\inst44|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst44|temp\(0),
	datad => \inst44|temp\(1),
	combout => \inst44|Add0~1_combout\);

\inst44|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst44|Add0~1_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst44|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|temp\(1));

\inst44|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Add0~2_combout\ = \inst44|temp\(2) $ (((\inst44|temp\(0) & \inst44|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst44|temp\(2),
	datac => \inst44|temp\(0),
	datad => \inst44|temp\(1),
	combout => \inst44|Add0~2_combout\);

\inst44|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst44|Add0~2_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst44|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|temp\(2));

\inst44|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst44|Add0~0_combout\ = \inst44|temp\(3) $ (((\inst44|temp\(0) & (\inst44|temp\(2) & \inst44|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|temp\(3),
	datab => \inst44|temp\(0),
	datac => \inst44|temp\(2),
	datad => \inst44|temp\(1),
	combout => \inst44|Add0~0_combout\);

\inst44|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst44|Add0~0_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst44|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44|temp\(3));

\inst45|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst45|Equal0~0_combout\ = (\inst44|temp\(3) & (\inst44|temp\(1) & (!\inst44|temp\(0) & !\inst44|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44|temp\(3),
	datab => \inst44|temp\(1),
	datac => \inst44|temp\(0),
	datad => \inst44|temp\(2),
	combout => \inst45|Equal0~0_combout\);

\inst47|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector13~0_combout\ = (\inst45|Equal0~0_combout\ & (\inst47|y.s11~q\ & \sp~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45|Equal0~0_combout\,
	datab => \inst47|y.s11~q\,
	datac => \sp~input_o\,
	combout => \inst47|Selector13~0_combout\);

\inst47|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector12~0_combout\ = (!\sp~input_o\ & ((\inst47|y.s11~q\) # (\inst47|y.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s11~q\,
	datab => \inst47|y.s12~q\,
	datad => \sp~input_o\,
	combout => \inst47|Selector12~0_combout\);

\inst47|y.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector12~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s12~q\);

\inst47|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector13~1_combout\ = (\inst47|y.s13~q\ & ((\inst47|y~58_combout\) # ((\inst47|y.s12~q\ & \sp~input_o\)))) # (!\inst47|y.s13~q\ & (\inst47|y.s12~q\ & (\sp~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s13~q\,
	datab => \inst47|y.s12~q\,
	datac => \sp~input_o\,
	datad => \inst47|y~58_combout\,
	combout => \inst47|Selector13~1_combout\);

\inst47|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector13~2_combout\ = (\inst47|Selector13~0_combout\) # ((\inst47|Selector13~1_combout\) # ((\inst47|Selector26~0_combout\ & !\inst29~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector13~0_combout\,
	datab => \inst47|Selector13~1_combout\,
	datac => \inst47|Selector26~0_combout\,
	datad => \inst29~combout\,
	combout => \inst47|Selector13~2_combout\);

\inst47|y.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector13~2_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s13~q\);

\s2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

\s3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s3,
	o => \s3~input_o\);

\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

\inst50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50~0_combout\ = (\s2~input_o\) # ((\s3~input_o\) # (\s1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \s3~input_o\,
	datac => \s1~input_o\,
	combout => \inst50~0_combout\);

\inst47|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector26~0_combout\ = (\inst47|y.s13~q\ & (\sp~input_o\ & !\inst50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s13~q\,
	datab => \sp~input_o\,
	datad => \inst50~0_combout\,
	combout => \inst47|Selector26~0_combout\);

\inst47|y.s26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|y.s26~0_combout\ = (\inst47|y.s26~q\) # ((\inst47|Selector26~0_combout\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s26~q\,
	datab => \inst47|Selector26~0_combout\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|y.s26~0_combout\);

\inst47|y.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|y.s26~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s26~q\);

\inst47|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector15~0_combout\ = (\inst47|y.s15~q\ & ((\inst47|y.s25~q\) # (\inst47|y.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s15~q\,
	datab => \inst47|y.s25~q\,
	datac => \inst47|y.s26~q\,
	combout => \inst47|Selector15~0_combout\);

\inst47|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector15~1_combout\ = (\inst47|Selector15~0_combout\) # ((\inst47|y.s13~q\ & (!\inst50~0_combout\ & !\sp~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector15~0_combout\,
	datab => \inst47|y.s13~q\,
	datac => \inst50~0_combout\,
	datad => \sp~input_o\,
	combout => \inst47|Selector15~1_combout\);

\inst48|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|temp~0_combout\ = (!\inst48|temp\(0) & \inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|temp\(0),
	datad => \inst47|y.s0~q\,
	combout => \inst48|temp~0_combout\);

\inst47|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector16~2_combout\ = (\inst29~combout\ & ((\inst47|y.s15~q\) # ((\inst49|Equal0~0_combout\ & \inst47|y.s16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s15~q\,
	datac => \inst49|Equal0~0_combout\,
	datad => \inst47|y.s16~q\,
	combout => \inst47|Selector16~2_combout\);

\inst47|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector16~3_combout\ = (\inst47|Selector16~2_combout\) # ((\inst47|y.s16~q\ & ((\inst47|y.s25~q\) # (\inst47|y.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|Selector16~2_combout\,
	datad => \inst47|y.s16~q\,
	combout => \inst47|Selector16~3_combout\);

\inst47|y.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector16~3_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s16~q\);

\inst47|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector17~2_combout\ = (!\inst29~combout\ & ((\inst47|y.s16~q\) # ((\inst47|y.s17~q\ & \inst49|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s16~q\,
	datab => \inst47|y.s17~q\,
	datac => \inst49|Equal0~0_combout\,
	datad => \inst29~combout\,
	combout => \inst47|Selector17~2_combout\);

\inst47|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector17~3_combout\ = (\inst47|Selector17~2_combout\) # ((\inst47|y.s17~q\ & ((\inst47|y.s25~q\) # (\inst47|y.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|Selector17~2_combout\,
	datad => \inst47|y.s17~q\,
	combout => \inst47|Selector17~3_combout\);

\inst47|y.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector17~3_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s17~q\);

\inst47|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector18~0_combout\ = (\inst47|y.s17~q\) # ((\inst49|Equal0~0_combout\ & \inst47|y.s18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s17~q\,
	datab => \inst49|Equal0~0_combout\,
	datac => \inst47|y.s18~q\,
	combout => \inst47|Selector18~0_combout\);

\inst47|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector18~1_combout\ = (\inst29~combout\ & ((\inst47|Selector18~0_combout\) # ((\inst47|y.s18~q\ & \inst47|y~58_combout\)))) # (!\inst29~combout\ & (\inst47|y.s18~q\ & (\inst47|y~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s18~q\,
	datac => \inst47|y~58_combout\,
	datad => \inst47|Selector18~0_combout\,
	combout => \inst47|Selector18~1_combout\);

\inst47|y.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector18~1_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s18~q\);

\inst47|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector19~2_combout\ = (!\inst29~combout\ & ((\inst47|y.s18~q\) # ((\inst47|y.s19~q\ & \inst49|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s18~q\,
	datab => \inst47|y.s19~q\,
	datac => \inst49|Equal0~0_combout\,
	datad => \inst29~combout\,
	combout => \inst47|Selector19~2_combout\);

\inst47|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector19~3_combout\ = (\inst47|Selector19~2_combout\) # ((\inst47|y.s19~q\ & ((\inst47|y.s25~q\) # (\inst47|y.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|Selector19~2_combout\,
	datad => \inst47|y.s19~q\,
	combout => \inst47|Selector19~3_combout\);

\inst47|y.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector19~3_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s19~q\);

\inst47|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector20~0_combout\ = (\inst47|y.s19~q\) # ((\inst49|Equal0~0_combout\ & \inst47|y.s20~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s19~q\,
	datab => \inst49|Equal0~0_combout\,
	datac => \inst47|y.s20~q\,
	combout => \inst47|Selector20~0_combout\);

\inst47|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector20~1_combout\ = (\inst29~combout\ & ((\inst47|Selector20~0_combout\) # ((\inst47|y.s20~q\ & \inst47|y~58_combout\)))) # (!\inst29~combout\ & (\inst47|y.s20~q\ & (\inst47|y~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s20~q\,
	datac => \inst47|y~58_combout\,
	datad => \inst47|Selector20~0_combout\,
	combout => \inst47|Selector20~1_combout\);

\inst47|y.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector20~1_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s20~q\);

\inst47|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector21~2_combout\ = (!\inst29~combout\ & ((\inst47|y.s20~q\) # ((\inst47|y.s21~q\ & \inst49|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s20~q\,
	datab => \inst47|y.s21~q\,
	datac => \inst49|Equal0~0_combout\,
	datad => \inst29~combout\,
	combout => \inst47|Selector21~2_combout\);

\inst47|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector21~3_combout\ = (\inst47|Selector21~2_combout\) # ((\inst47|y.s21~q\ & ((\inst47|y.s25~q\) # (\inst47|y.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|Selector21~2_combout\,
	datad => \inst47|y.s21~q\,
	combout => \inst47|Selector21~3_combout\);

\inst47|y.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector21~3_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s21~q\);

\inst47|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr21~0_combout\ = (!\inst47|y.s17~q\ & (!\inst47|y.s19~q\ & !\inst47|y.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|y.s17~q\,
	datac => \inst47|y.s19~q\,
	datad => \inst47|y.s21~q\,
	combout => \inst47|WideOr21~0_combout\);

\inst47|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector22~0_combout\ = (\inst47|y.s21~q\) # ((\inst49|Equal0~0_combout\ & \inst47|y.s22~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s21~q\,
	datab => \inst49|Equal0~0_combout\,
	datac => \inst47|y.s22~q\,
	combout => \inst47|Selector22~0_combout\);

\inst47|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector22~1_combout\ = (\inst29~combout\ & ((\inst47|Selector22~0_combout\) # ((\inst47|y.s22~q\ & \inst47|y~58_combout\)))) # (!\inst29~combout\ & (\inst47|y.s22~q\ & (\inst47|y~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s22~q\,
	datac => \inst47|y~58_combout\,
	datad => \inst47|Selector22~0_combout\,
	combout => \inst47|Selector22~1_combout\);

\inst47|y.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector22~1_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s22~q\);

\inst47|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~0_combout\ = (!\inst47|y.s16~q\ & (!\inst47|y.s18~q\ & (!\inst47|y.s20~q\ & !\inst47|y.s22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s16~q\,
	datab => \inst47|y.s18~q\,
	datac => \inst47|y.s20~q\,
	datad => \inst47|y.s22~q\,
	combout => \inst47|Selector14~0_combout\);

\inst48|temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|temp[0]~1_combout\ = (\inst47|y.s15~q\) # (((!\inst47|Selector14~0_combout\) # (!\inst47|WideOr21~0_combout\)) # (!\inst47|y.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s15~q\,
	datab => \inst47|y.s0~q\,
	datac => \inst47|WideOr21~0_combout\,
	datad => \inst47|Selector14~0_combout\,
	combout => \inst48|temp[0]~1_combout\);

\inst48|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst48|temp~0_combout\,
	clrn => \rstn~input_o\,
	ena => \inst48|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|temp\(0));

\inst48|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|Add0~2_combout\ = \inst48|temp\(0) $ (\inst48|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst48|temp\(0),
	datad => \inst48|temp\(1),
	combout => \inst48|Add0~2_combout\);

\inst48|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst48|Add0~2_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst48|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|temp\(1));

\inst48|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|Add0~0_combout\ = \inst48|temp\(2) $ (((\inst48|temp\(0) & \inst48|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst48|temp\(2),
	datac => \inst48|temp\(0),
	datad => \inst48|temp\(1),
	combout => \inst48|Add0~0_combout\);

\inst48|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst48|Add0~0_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst48|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|temp\(2));

\inst48|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst48|Add0~1_combout\ = \inst48|temp\(3) $ (((\inst48|temp\(0) & (\inst48|temp\(2) & \inst48|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|temp\(3),
	datab => \inst48|temp\(0),
	datac => \inst48|temp\(2),
	datad => \inst48|temp\(1),
	combout => \inst48|Add0~1_combout\);

\inst48|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst48|Add0~1_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst48|temp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst48|temp\(3));

\inst49|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|Equal0~0_combout\ = (\inst48|temp\(0)) # ((\inst48|temp\(2)) # ((!\inst48|temp\(1)) # (!\inst48|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst48|temp\(0),
	datab => \inst48|temp\(2),
	datac => \inst48|temp\(3),
	datad => \inst48|temp\(1),
	combout => \inst49|Equal0~0_combout\);

\inst47|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector15~2_combout\ = (\inst47|Selector15~1_combout\) # ((\inst47|y.s15~q\ & (\inst49|Equal0~0_combout\ & !\inst29~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector15~1_combout\,
	datab => \inst47|y.s15~q\,
	datac => \inst49|Equal0~0_combout\,
	datad => \inst29~combout\,
	combout => \inst47|Selector15~2_combout\);

\inst47|y.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector15~2_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s15~q\);

\inst47|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~1_combout\ = (\inst47|y.s15~q\) # ((\inst47|y.s17~q\) # ((\inst47|y.s19~q\) # (\inst47|y.s21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s15~q\,
	datab => \inst47|y.s17~q\,
	datac => \inst47|y.s19~q\,
	datad => \inst47|y.s21~q\,
	combout => \inst47|Selector14~1_combout\);

\inst47|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~2_combout\ = (!\inst49|Equal0~0_combout\ & ((\inst29~combout\ & ((!\inst47|Selector14~0_combout\))) # (!\inst29~combout\ & (\inst47|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector14~1_combout\,
	datab => \inst29~combout\,
	datac => \inst47|Selector14~0_combout\,
	datad => \inst49|Equal0~0_combout\,
	combout => \inst47|Selector14~2_combout\);

\inst55|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|Equal0~0_combout\ = (\inst54|temp\(2) & (!\inst54|temp\(0) & (!\inst54|temp\(1) & !\inst54|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(2),
	datab => \inst54|temp\(0),
	datac => \inst54|temp\(1),
	datad => \inst54|temp\(3),
	combout => \inst55|Equal0~0_combout\);

\inst47|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~3_combout\ = (\inst47|y.s13~q\ & ((\s2~input_o\) # ((\s3~input_o\) # (\s1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s13~q\,
	datab => \s2~input_o\,
	datac => \s3~input_o\,
	datad => \s1~input_o\,
	combout => \inst47|Selector14~3_combout\);

\inst47|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~4_combout\ = ((\inst47|y.s25~q\) # (\inst47|y.s26~q\)) # (!\inst54|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(4),
	datab => \inst47|y.s25~q\,
	datac => \inst47|y.s26~q\,
	combout => \inst47|Selector14~4_combout\);

\inst47|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~5_combout\ = (\inst47|Selector14~3_combout\) # ((\inst47|y.s14~q\ & ((\inst47|Selector14~4_combout\) # (!\inst55|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s14~q\,
	datab => \inst55|Equal0~0_combout\,
	datac => \inst47|Selector14~3_combout\,
	datad => \inst47|Selector14~4_combout\,
	combout => \inst47|Selector14~5_combout\);

\inst47|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector23~0_combout\ = (\inst4|Equal7~2_combout\ & (\inst4|Equal4~0_combout\ & (\inst4|Equal4~1_combout\ & \inst47|y.s22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~2_combout\,
	datab => \inst4|Equal4~0_combout\,
	datac => \inst4|Equal4~1_combout\,
	datad => \inst47|y.s22~q\,
	combout => \inst47|Selector23~0_combout\);

\inst47|y.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector23~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s23~q\);

\inst47|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector14~6_combout\ = (\inst47|Selector14~2_combout\) # ((\inst47|Selector14~5_combout\) # ((\inst47|y.s23~q\ & !\inst43~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector14~2_combout\,
	datab => \inst47|Selector14~5_combout\,
	datac => \inst47|y.s23~q\,
	datad => \inst43~7_combout\,
	combout => \inst47|Selector14~6_combout\);

\inst47|y.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector14~6_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s14~q\);

\inst54|temp[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[0]~15_combout\ = (\inst47|y.s14~q\) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s14~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst54|temp[0]~15_combout\);

\inst54|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst54|temp[0]~5_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst54|temp[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54|temp\(0));

\inst54|temp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[1]~7_combout\ = (\inst54|temp\(1) & (!\inst54|temp[0]~6\)) # (!\inst54|temp\(1) & ((\inst54|temp[0]~6\) # (GND)))
-- \inst54|temp[1]~8\ = CARRY((!\inst54|temp[0]~6\) # (!\inst54|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(1),
	datad => VCC,
	cin => \inst54|temp[0]~6\,
	combout => \inst54|temp[1]~7_combout\,
	cout => \inst54|temp[1]~8\);

\inst54|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst54|temp[1]~7_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst54|temp[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54|temp\(1));

\inst54|temp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[2]~9_combout\ = (\inst54|temp\(2) & (\inst54|temp[1]~8\ $ (GND))) # (!\inst54|temp\(2) & (!\inst54|temp[1]~8\ & VCC))
-- \inst54|temp[2]~10\ = CARRY((\inst54|temp\(2) & !\inst54|temp[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(2),
	datad => VCC,
	cin => \inst54|temp[1]~8\,
	combout => \inst54|temp[2]~9_combout\,
	cout => \inst54|temp[2]~10\);

\inst54|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst54|temp[2]~9_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst54|temp[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54|temp\(2));

\inst54|temp[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[3]~11_combout\ = (\inst54|temp\(3) & (!\inst54|temp[2]~10\)) # (!\inst54|temp\(3) & ((\inst54|temp[2]~10\) # (GND)))
-- \inst54|temp[3]~12\ = CARRY((!\inst54|temp[2]~10\) # (!\inst54|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(3),
	datad => VCC,
	cin => \inst54|temp[2]~10\,
	combout => \inst54|temp[3]~11_combout\,
	cout => \inst54|temp[3]~12\);

\inst54|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst54|temp[3]~11_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst54|temp[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54|temp\(3));

\inst54|temp[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst54|temp[4]~13_combout\ = \inst54|temp\(4) $ (!\inst54|temp[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(4),
	cin => \inst54|temp[3]~12\,
	combout => \inst54|temp[4]~13_combout\);

\inst54|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst54|temp[4]~13_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst54|temp[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst54|temp\(4));

\inst47|y.s25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|y.s25~0_combout\ = (\inst47|y.s25~q\) # ((\inst54|temp\(4) & (\inst55|Equal0~0_combout\ & \inst47|y.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst54|temp\(4),
	datac => \inst55|Equal0~0_combout\,
	datad => \inst47|y.s14~q\,
	combout => \inst47|y.s25~0_combout\);

\inst47|y.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|y.s25~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s25~q\);

\inst47|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector2~4_combout\ = (\inst47|y.s2~q\ & ((\inst47|y.s25~q\) # ((\inst47|y.s26~q\) # (!\inst29~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|y.s2~q\,
	datad => \inst29~combout\,
	combout => \inst47|Selector2~4_combout\);

\inst52|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52|temp~1_combout\ = (!\inst52|temp\(0) & \inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|temp\(0),
	datad => \inst47|y.s0~q\,
	combout => \inst52|temp~1_combout\);

\inst47|Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector24~3_combout\ = (\inst47|y.s24~q\ & ((\inst47|y.s25~q\) # ((\inst47|y.s26~q\) # (!\inst53|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s25~q\,
	datab => \inst47|y.s26~q\,
	datac => \inst47|y.s24~q\,
	datad => \inst53|Equal0~0_combout\,
	combout => \inst47|Selector24~3_combout\);

\inst47|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector24~2_combout\ = (\inst47|Selector24~3_combout\) # ((\inst43~7_combout\ & \inst47|y.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector24~3_combout\,
	datab => \inst43~7_combout\,
	datac => \inst47|y.s23~q\,
	combout => \inst47|Selector24~2_combout\);

\inst47|y.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector24~2_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s24~q\);

\inst52|temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52|temp[0]~0_combout\ = (\inst47|y.s24~q\) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s24~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst52|temp[0]~0_combout\);

\inst52|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst52|temp~1_combout\,
	clrn => \rstn~input_o\,
	ena => \inst52|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst52|temp\(0));

\inst52|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52|Add0~0_combout\ = \inst52|temp\(0) $ (\inst52|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst52|temp\(0),
	datad => \inst52|temp\(1),
	combout => \inst52|Add0~0_combout\);

\inst52|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst52|Add0~0_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst52|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst52|temp\(1));

\inst52|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52|Add0~2_combout\ = \inst52|temp\(2) $ (((\inst52|temp\(0) & \inst52|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst52|temp\(2),
	datac => \inst52|temp\(0),
	datad => \inst52|temp\(1),
	combout => \inst52|Add0~2_combout\);

\inst52|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst52|Add0~2_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst52|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst52|temp\(2));

\inst52|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst52|Add0~1_combout\ = \inst52|temp\(3) $ (((\inst52|temp\(0) & (\inst52|temp\(2) & \inst52|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|temp\(3),
	datab => \inst52|temp\(0),
	datac => \inst52|temp\(2),
	datad => \inst52|temp\(1),
	combout => \inst52|Add0~1_combout\);

\inst52|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1~input_o\,
	d => \inst52|Add0~1_combout\,
	clrn => \rstn~input_o\,
	sclr => \inst47|ALT_INV_y.s0~q\,
	ena => \inst52|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst52|temp\(3));

\inst53|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst53|Equal0~0_combout\ = (\inst52|temp\(1) & (!\inst52|temp\(0) & (!\inst52|temp\(3) & !\inst52|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst52|temp\(1),
	datab => \inst52|temp\(0),
	datac => \inst52|temp\(3),
	datad => \inst52|temp\(2),
	combout => \inst53|Equal0~0_combout\);

\inst47|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector1~0_combout\ = (\start~input_o\ & ((\inst47|y.s1~q\) # (!\inst47|y.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \inst47|y.s1~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst47|Selector1~0_combout\);

\inst47|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector1~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s1~q\);

\inst47|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector2~2_combout\ = (\inst53|Equal0~0_combout\ & ((\inst47|y.s24~q\) # ((\inst47|y.s1~q\ & !\start~input_o\)))) # (!\inst53|Equal0~0_combout\ & (((\inst47|y.s1~q\ & !\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|Equal0~0_combout\,
	datab => \inst47|y.s24~q\,
	datac => \inst47|y.s1~q\,
	datad => \start~input_o\,
	combout => \inst47|Selector2~2_combout\);

\inst47|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector2~3_combout\ = (\inst47|Selector2~4_combout\) # ((\inst47|Selector2~2_combout\) # ((\inst47|y.s10~q\ & !\inst43~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|Selector2~4_combout\,
	datab => \inst47|Selector2~2_combout\,
	datac => \inst47|y.s10~q\,
	datad => \inst43~7_combout\,
	combout => \inst47|Selector2~3_combout\);

\inst47|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector2~3_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s2~q\);

\inst47|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector3~0_combout\ = (\inst47|y.s2~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s2~q\ & (\inst47|y.s3~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s2~q\,
	datab => \inst47|y.s3~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|Selector3~0_combout\);

\inst47|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector3~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s3~q\);

\inst47|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|Selector4~0_combout\ = (\inst4|Equal0~0_combout\ & (\inst4|Equal4~1_combout\ & ((\inst47|y.s4~q\) # (\inst47|y.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~0_combout\,
	datab => \inst4|Equal4~1_combout\,
	datac => \inst47|y.s4~q\,
	datad => \inst47|y.s3~q\,
	combout => \inst47|Selector4~0_combout\);

\inst47|y.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst47|Selector4~0_combout\,
	clrn => \rstn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst47|y.s4~q\);

\inst1|temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|temp[0]~0_combout\ = ((\inst29~combout\ & ((\inst47|y.s4~q\) # (\inst47|y.s17~q\)))) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s4~q\,
	datac => \inst47|y.s17~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst1|temp[0]~0_combout\);

\inst1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~27_combout\,
	clrn => \rstn~input_o\,
	ena => \inst1|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(0));

\inst4|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal4~2_combout\ = (\inst4|Equal4~1_combout\ & (!\teclado[7]~input_o\ & (!\teclado[9]~input_o\ & !\teclado[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal4~1_combout\,
	datab => \teclado[7]~input_o\,
	datac => \teclado[9]~input_o\,
	datad => \teclado[8]~input_o\,
	combout => \inst4|Equal4~2_combout\);

\inst4|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal5~0_combout\ = (\teclado[5]~input_o\ & (\inst4|Equal4~2_combout\ & (!\teclado[4]~input_o\ & !\teclado[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[5]~input_o\,
	datab => \inst4|Equal4~2_combout\,
	datac => \teclado[4]~input_o\,
	datad => \teclado[6]~input_o\,
	combout => \inst4|Equal5~0_combout\);

\inst4|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal6~0_combout\ = (\teclado[6]~input_o\ & (\inst4|Equal4~2_combout\ & (!\teclado[4]~input_o\ & !\teclado[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[6]~input_o\,
	datab => \inst4|Equal4~2_combout\,
	datac => \teclado[4]~input_o\,
	datad => \teclado[5]~input_o\,
	combout => \inst4|Equal6~0_combout\);

\inst4|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = (\teclado[3]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[3]~input_o\,
	datac => \teclado[2]~input_o\,
	datad => \teclado[1]~input_o\,
	combout => \inst4|Equal3~0_combout\);

\inst4|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal4~3_combout\ = (\teclado[4]~input_o\ & (\inst4|Equal4~2_combout\ & (!\teclado[6]~input_o\ & !\teclado[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[4]~input_o\,
	datab => \inst4|Equal4~2_combout\,
	datac => \teclado[6]~input_o\,
	datad => \teclado[5]~input_o\,
	combout => \inst4|Equal4~3_combout\);

\inst200|temp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~18_combout\ = (!\inst4|Equal4~3_combout\ & ((\teclado[0]~input_o\) # ((!\inst4|Equal3~0_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[0]~input_o\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|Equal4~3_combout\,
	combout => \inst200|temp~18_combout\);

\inst200|temp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~19_combout\ = (\inst47|y.s0~q\ & ((\inst4|Equal5~0_combout\) # ((\inst4|Equal6~0_combout\) # (!\inst200|temp~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s0~q\,
	datab => \inst4|Equal5~0_combout\,
	datac => \inst4|Equal6~0_combout\,
	datad => \inst200|temp~18_combout\,
	combout => \inst200|temp~19_combout\);

\inst47|en1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|en1~0_combout\ = (\inst29~combout\ & ((\inst47|y.s2~q\) # ((\inst47|y.s13~q\) # (\inst47|y.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s2~q\,
	datac => \inst47|y.s13~q\,
	datad => \inst47|y.s15~q\,
	combout => \inst47|en1~0_combout\);

\inst200|temp[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp[3]~20_combout\ = (\inst47|en1~0_combout\) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|en1~0_combout\,
	datad => \inst47|y.s0~q\,
	combout => \inst200|temp[3]~20_combout\);

\inst200|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~19_combout\,
	clrn => \rstn~input_o\,
	ena => \inst200|temp[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst200|temp\(2));

\inst4|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal8~0_combout\ = (\inst4|Equal7~2_combout\ & (\inst4|Equal4~1_combout\ & !\teclado[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~2_combout\,
	datab => \inst4|Equal4~1_combout\,
	datad => \teclado[7]~input_o\,
	combout => \inst4|Equal8~0_combout\);

\inst4|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~3_combout\ = (!\teclado[4]~input_o\ & (!\teclado[6]~input_o\ & (!\teclado[5]~input_o\ & \inst4|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[4]~input_o\,
	datab => \teclado[6]~input_o\,
	datac => \teclado[5]~input_o\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst4|Equal7~3_combout\);

\inst4|Salida[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Salida[3]~0_combout\ = (\inst4|Equal7~3_combout\ & (!\teclado[9]~input_o\ & (\teclado[7]~input_o\ $ (\teclado[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~3_combout\,
	datab => \teclado[7]~input_o\,
	datac => \teclado[8]~input_o\,
	datad => \teclado[9]~input_o\,
	combout => \inst4|Salida[3]~0_combout\);

\inst4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (\inst4|Equal7~2_combout\ & (\inst4|Equal4~0_combout\ & (!\teclado[0]~input_o\ & !\teclado[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~2_combout\,
	datab => \inst4|Equal4~0_combout\,
	datac => \teclado[0]~input_o\,
	datad => \teclado[3]~input_o\,
	combout => \inst4|Equal2~0_combout\);

\inst200|temp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~21_combout\ = (!\inst4|Equal6~0_combout\ & ((\teclado[2]~input_o\ $ (!\teclado[1]~input_o\)) # (!\inst4|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[2]~input_o\,
	datab => \teclado[1]~input_o\,
	datac => \inst4|Equal2~0_combout\,
	datad => \inst4|Equal6~0_combout\,
	combout => \inst200|temp~21_combout\);

\inst4|Salida[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Salida[3]~1_combout\ = (\inst4|Equal5~0_combout\) # ((\inst4|Salida[3]~0_combout\) # ((!\inst200|temp~21_combout\) # (!\inst200|temp~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal5~0_combout\,
	datab => \inst4|Salida[3]~0_combout\,
	datac => \inst200|temp~18_combout\,
	datad => \inst200|temp~21_combout\,
	combout => \inst4|Salida[3]~1_combout\);

\inst4|Salida[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Salida[3]~2_combout\ = (\teclado[9]~input_o\ & (\inst4|Equal8~0_combout\ & (!\teclado[8]~input_o\ & !\inst4|Salida[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[9]~input_o\,
	datab => \inst4|Equal8~0_combout\,
	datac => \teclado[8]~input_o\,
	datad => \inst4|Salida[3]~1_combout\,
	combout => \inst4|Salida[3]~2_combout\);

\inst200|temp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~22_combout\ = (\inst200|temp~18_combout\ & (\inst200|temp~21_combout\ & !\inst4|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp~18_combout\,
	datab => \inst200|temp~21_combout\,
	datad => \inst4|Equal5~0_combout\,
	combout => \inst200|temp~22_combout\);

\inst4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (\teclado[0]~input_o\ & (!\teclado[3]~input_o\ & (!\teclado[2]~input_o\ & !\teclado[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \teclado[0]~input_o\,
	datab => \teclado[3]~input_o\,
	datac => \teclado[2]~input_o\,
	datad => \teclado[1]~input_o\,
	combout => \inst4|Equal0~1_combout\);

\inst200|temp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~23_combout\ = (\inst4|Salida[3]~1_combout\ & ((!\inst4|Equal0~1_combout\) # (!\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Salida[3]~1_combout\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal0~1_combout\,
	combout => \inst200|temp~23_combout\);

\inst200|temp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~24_combout\ = (\inst47|y.s0~q\ & ((\inst4|Salida[3]~2_combout\) # ((\inst200|temp~22_combout\ & \inst200|temp~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s0~q\,
	datab => \inst4|Salida[3]~2_combout\,
	datac => \inst200|temp~22_combout\,
	datad => \inst200|temp~23_combout\,
	combout => \inst200|temp~24_combout\);

\inst200|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~24_combout\,
	clrn => \rstn~input_o\,
	ena => \inst200|temp[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst200|temp\(3));

\inst2|temp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|temp[3]~0_combout\ = ((\inst29~combout\ & ((\inst47|y.s6~q\) # (\inst47|y.s19~q\)))) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s6~q\,
	datac => \inst47|y.s19~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst2|temp[3]~0_combout\);

\inst2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~27_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(0));

\inst18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\inst1|temp\(0) & (!\inst200|temp\(2) & (!\inst200|temp\(3) & !\inst2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(0),
	datab => \inst200|temp\(2),
	datac => \inst200|temp\(3),
	datad => \inst2|temp\(0),
	combout => \inst18~0_combout\);

\inst200|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~27_combout\,
	clrn => \rstn~input_o\,
	ena => \inst200|temp[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst200|temp\(0));

\inst200|temp~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~25_combout\ = (\inst200|temp~21_combout\ & !\inst4|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp~21_combout\,
	datad => \inst4|Equal5~0_combout\,
	combout => \inst200|temp~25_combout\);

\inst200|temp~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst200|temp~26_combout\ = (\inst47|y.s0~q\ & ((\inst4|Salida[3]~2_combout\) # ((\inst200|temp~23_combout\ & !\inst200|temp~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s0~q\,
	datab => \inst4|Salida[3]~2_combout\,
	datac => \inst200|temp~23_combout\,
	datad => \inst200|temp~25_combout\,
	combout => \inst200|temp~26_combout\);

\inst200|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~26_combout\,
	clrn => \rstn~input_o\,
	ena => \inst200|temp[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst200|temp\(1));

\inst1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~24_combout\,
	clrn => \rstn~input_o\,
	ena => \inst1|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(3));

\inst2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~24_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(3));

\inst18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~1_combout\ = (\inst200|temp\(0) & (\inst200|temp\(1) & (!\inst1|temp\(3) & !\inst2|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp\(0),
	datab => \inst200|temp\(1),
	datac => \inst1|temp\(3),
	datad => \inst2|temp\(3),
	combout => \inst18~1_combout\);

\inst3|temp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|temp[3]~0_combout\ = ((\inst29~combout\ & ((\inst47|y.s8~q\) # (\inst47|y.s21~q\)))) # (!\inst47|y.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst47|y.s8~q\,
	datac => \inst47|y.s21~q\,
	datad => \inst47|y.s0~q\,
	combout => \inst3|temp[3]~0_combout\);

\inst3|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~26_combout\,
	clrn => \rstn~input_o\,
	ena => \inst3|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|temp\(1));

\inst1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~19_combout\,
	clrn => \rstn~input_o\,
	ena => \inst1|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(2));

\inst2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~19_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(2));

\inst3|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~24_combout\,
	clrn => \rstn~input_o\,
	ena => \inst3|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|temp\(3));

\inst18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~2_combout\ = (\inst3|temp\(1) & (\inst1|temp\(2) & (!\inst2|temp\(2) & !\inst3|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|temp\(1),
	datab => \inst1|temp\(2),
	datac => \inst2|temp\(2),
	datad => \inst3|temp\(3),
	combout => \inst18~2_combout\);

\inst1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~26_combout\,
	clrn => \rstn~input_o\,
	ena => \inst1|temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|temp\(1));

\inst2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~26_combout\,
	clrn => \rstn~input_o\,
	ena => \inst2|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(1));

\inst3|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~19_combout\,
	clrn => \rstn~input_o\,
	ena => \inst3|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|temp\(2));

\inst3|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst200|temp~27_combout\,
	clrn => \rstn~input_o\,
	ena => \inst3|temp[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|temp\(0));

\inst18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~3_combout\ = (\inst1|temp\(1) & (\inst2|temp\(1) & (\inst3|temp\(2) & !\inst3|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(1),
	datab => \inst2|temp\(1),
	datac => \inst3|temp\(2),
	datad => \inst3|temp\(0),
	combout => \inst18~3_combout\);

\inst18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18~4_combout\ = (\inst18~0_combout\ & (\inst18~1_combout\ & (\inst18~2_combout\ & \inst18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~0_combout\,
	datab => \inst18~1_combout\,
	datac => \inst18~2_combout\,
	datad => \inst18~3_combout\,
	combout => \inst18~4_combout\);

\inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~0_combout\ = (\inst200|temp\(2) & (\inst1|temp\(0) & (!\inst200|temp\(3) & !\inst2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp\(2),
	datab => \inst1|temp\(0),
	datac => \inst200|temp\(3),
	datad => \inst2|temp\(0),
	combout => \inst43~0_combout\);

\inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~1_combout\ = (!\inst200|temp\(1) & (!\inst1|temp\(2) & (!\inst1|temp\(1) & !\inst2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst200|temp\(1),
	datab => \inst1|temp\(2),
	datac => \inst1|temp\(1),
	datad => \inst2|temp\(1),
	combout => \inst43~1_combout\);

\inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~2_combout\ = (\inst43~0_combout\ & (\inst43~1_combout\ & (\inst3|temp\(0) & !\inst3|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43~0_combout\,
	datab => \inst43~1_combout\,
	datac => \inst3|temp\(0),
	datad => \inst3|temp\(2),
	combout => \inst43~2_combout\);

\inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~3_combout\ = (\inst2|temp\(2) & (\inst200|temp\(0) & (!\inst1|temp\(3) & !\inst2|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(2),
	datab => \inst200|temp\(0),
	datac => \inst1|temp\(3),
	datad => \inst2|temp\(3),
	combout => \inst43~3_combout\);

\inst43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~4_combout\ = (\inst43~3_combout\ & (\inst3|temp\(3) & !\inst3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43~3_combout\,
	datab => \inst3|temp\(3),
	datad => \inst3|temp\(1),
	combout => \inst43~4_combout\);

\inst43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~5_combout\ = (\inst3|temp\(1) & (!\inst2|temp\(2) & (!\inst200|temp\(0) & !\inst3|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|temp\(1),
	datab => \inst2|temp\(2),
	datac => \inst200|temp\(0),
	datad => \inst3|temp\(3),
	combout => \inst43~5_combout\);

\inst43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~6_combout\ = (\inst1|temp\(3) & (\inst2|temp\(3) & \inst43~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|temp\(3),
	datab => \inst2|temp\(3),
	datac => \inst43~5_combout\,
	combout => \inst43~6_combout\);

\inst43~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43~7_combout\ = (\inst18~4_combout\) # ((\inst43~2_combout\ & ((\inst43~4_combout\) # (\inst43~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~4_combout\,
	datab => \inst43~2_combout\,
	datac => \inst43~4_combout\,
	datad => \inst43~6_combout\,
	combout => \inst43~7_combout\);

\inst47|en2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|en2~0_combout\ = (\inst47|y.s4~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s4~q\ & (\inst47|y.s17~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s4~q\,
	datab => \inst47|y.s17~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|en2~0_combout\);

\inst47|en3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|en3~0_combout\ = (\inst47|y.s6~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s6~q\ & (\inst47|y.s19~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s6~q\,
	datab => \inst47|y.s19~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|en3~0_combout\);

\inst47|en4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|en4~0_combout\ = (\inst47|y.s8~q\ & (((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst47|y.s8~q\ & (\inst47|y.s21~q\ & ((!\inst4|Equal4~1_combout\) # (!\inst4|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s8~q\,
	datab => \inst47|y.s21~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal4~1_combout\,
	combout => \inst47|en4~0_combout\);

\inst47|WideOr25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr25~combout\ = (\inst47|y.s15~q\) # ((!\inst47|Selector14~0_combout\) # (!\inst47|WideOr21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s15~q\,
	datac => \inst47|WideOr21~0_combout\,
	datad => \inst47|Selector14~0_combout\,
	combout => \inst47|WideOr25~combout\);

\inst55|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst55|Equal0~1_combout\ = (\inst54|temp\(4) & \inst55|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|temp\(4),
	datab => \inst55|Equal0~0_combout\,
	combout => \inst55|Equal0~1_combout\);

\inst47|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr17~0_combout\ = (\inst47|WideOr21~0_combout\ & (\inst47|Selector14~0_combout\ & !\inst47|y.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|WideOr21~0_combout\,
	datab => \inst47|Selector14~0_combout\,
	datad => \inst47|y.s23~q\,
	combout => \inst47|WideOr17~0_combout\);

\inst47|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr23~0_combout\ = (!\inst47|y.s13~q\ & (!\inst47|y.s15~q\ & !\inst47|y.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|y.s13~q\,
	datac => \inst47|y.s15~q\,
	datad => \inst47|y.s11~q\,
	combout => \inst47|WideOr23~0_combout\);

\inst47|WideOr23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr23~combout\ = (\inst47|y.s12~q\) # ((!\inst47|WideOr23~0_combout\) # (!\inst47|WideOr17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s12~q\,
	datac => \inst47|WideOr17~0_combout\,
	datad => \inst47|WideOr23~0_combout\,
	combout => \inst47|WideOr23~combout\);

\inst47|WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr24~0_combout\ = (!\inst47|y.s15~q\ & (!\inst47|y.s14~q\ & !\inst47|y.s23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|y.s15~q\,
	datac => \inst47|y.s14~q\,
	datad => \inst47|y.s23~q\,
	combout => \inst47|WideOr24~0_combout\);

\inst47|WideOr24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr24~combout\ = ((!\inst47|WideOr24~0_combout\) # (!\inst47|Selector14~0_combout\)) # (!\inst47|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst47|WideOr21~0_combout\,
	datac => \inst47|Selector14~0_combout\,
	datad => \inst47|WideOr24~0_combout\,
	combout => \inst47|WideOr24~combout\);

\inst47|WideOr17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr17~combout\ = (\inst47|y.s24~q\) # ((\inst47|y.s25~q\) # ((\inst47|y.s26~q\) # (!\inst47|WideOr17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s24~q\,
	datab => \inst47|y.s25~q\,
	datac => \inst47|y.s26~q\,
	datad => \inst47|WideOr17~0_combout\,
	combout => \inst47|WideOr17~combout\);

\inst47|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr18~0_combout\ = (\inst47|y.s8~q\) # ((\inst47|y.s24~q\) # ((\inst47|y.s26~q\) # (\inst47|y.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s8~q\,
	datab => \inst47|y.s24~q\,
	datac => \inst47|y.s26~q\,
	datad => \inst47|y.s10~q\,
	combout => \inst47|WideOr18~0_combout\);

\inst47|WideOr18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr18~1_combout\ = (\inst47|WideOr23~0_combout\ & (!\inst47|y.s25~q\ & !\inst47|y.s9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|WideOr23~0_combout\,
	datac => \inst47|y.s25~q\,
	datad => \inst47|y.s9~q\,
	combout => \inst47|WideOr18~1_combout\);

\inst47|WideOr18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr18~2_combout\ = (\inst47|y.s14~q\) # ((\inst47|y.s12~q\) # ((\inst47|WideOr18~0_combout\) # (!\inst47|WideOr18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s14~q\,
	datab => \inst47|y.s12~q\,
	datac => \inst47|WideOr18~0_combout\,
	datad => \inst47|WideOr18~1_combout\,
	combout => \inst47|WideOr18~2_combout\);

\inst47|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr19~0_combout\ = (\inst47|y.s13~q\) # ((\inst47|y.s4~q\) # ((\inst47|y.s12~q\) # (\inst47|y.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s13~q\,
	datab => \inst47|y.s4~q\,
	datac => \inst47|y.s12~q\,
	datad => \inst47|y.s5~q\,
	combout => \inst47|WideOr19~0_combout\);

\inst47|WideOr19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr19~1_combout\ = (\inst47|WideOr24~0_combout\ & (!\inst47|y.s6~q\ & (!\inst47|y.s22~q\ & !\inst47|y.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|WideOr24~0_combout\,
	datab => \inst47|y.s6~q\,
	datac => \inst47|y.s22~q\,
	datad => \inst47|y.s7~q\,
	combout => \inst47|WideOr19~1_combout\);

\inst47|WideOr19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr19~2_combout\ = (\inst47|y.s21~q\) # ((\inst47|y.s20~q\) # ((\inst47|WideOr19~0_combout\) # (!\inst47|WideOr19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s21~q\,
	datab => \inst47|y.s20~q\,
	datac => \inst47|WideOr19~0_combout\,
	datad => \inst47|WideOr19~1_combout\,
	combout => \inst47|WideOr19~2_combout\);

\inst47|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr20~0_combout\ = (\inst47|y.s2~q\) # ((\inst47|y.s11~q\) # ((\inst47|y.s10~q\) # (\inst47|y.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s2~q\,
	datab => \inst47|y.s11~q\,
	datac => \inst47|y.s10~q\,
	datad => \inst47|y.s3~q\,
	combout => \inst47|WideOr20~0_combout\);

\inst47|WideOr20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr20~1_combout\ = (\inst47|y.s19~q\) # ((\inst47|y.s18~q\) # (\inst47|y.s26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s19~q\,
	datab => \inst47|y.s18~q\,
	datac => \inst47|y.s26~q\,
	combout => \inst47|WideOr20~1_combout\);

\inst47|WideOr20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr20~2_combout\ = (\inst47|WideOr20~0_combout\) # ((\inst47|WideOr20~1_combout\) # (!\inst47|WideOr19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|WideOr20~0_combout\,
	datab => \inst47|WideOr20~1_combout\,
	datad => \inst47|WideOr19~1_combout\,
	combout => \inst47|WideOr20~2_combout\);

\inst47|WideOr21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr21~1_combout\ = (\inst47|y.s23~q\) # ((\inst47|y.s7~q\) # ((\inst47|y.s5~q\) # (\inst47|y.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s23~q\,
	datab => \inst47|y.s7~q\,
	datac => \inst47|y.s5~q\,
	datad => \inst47|y.s3~q\,
	combout => \inst47|WideOr21~1_combout\);

\inst47|WideOr21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst47|WideOr21~2_combout\ = (\inst47|y.s1~q\) # ((\inst47|WideOr21~1_combout\) # ((!\inst47|WideOr18~1_combout\) # (!\inst47|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst47|y.s1~q\,
	datab => \inst47|WideOr21~1_combout\,
	datac => \inst47|WideOr21~0_combout\,
	datad => \inst47|WideOr18~1_combout\,
	combout => \inst47|WideOr21~2_combout\);

ww_ldn <= \ldn~output_o\;

ww_tecla <= \tecla~output_o\;

ww_clave <= \clave~output_o\;

ww_num1(3) <= \num1[3]~output_o\;

ww_num1(2) <= \num1[2]~output_o\;

ww_num1(1) <= \num1[1]~output_o\;

ww_num1(0) <= \num1[0]~output_o\;

ww_en1 <= \en1~output_o\;

ww_num2(3) <= \num2[3]~output_o\;

ww_num2(2) <= \num2[2]~output_o\;

ww_num2(1) <= \num2[1]~output_o\;

ww_num2(0) <= \num2[0]~output_o\;

ww_en2 <= \en2~output_o\;

ww_num3(3) <= \num3[3]~output_o\;

ww_num3(2) <= \num3[2]~output_o\;

ww_num3(1) <= \num3[1]~output_o\;

ww_num3(0) <= \num3[0]~output_o\;

ww_en3 <= \en3~output_o\;

ww_num4(3) <= \num4[3]~output_o\;

ww_num4(2) <= \num4[2]~output_o\;

ww_num4(1) <= \num4[1]~output_o\;

ww_num4(0) <= \num4[0]~output_o\;

ww_en4 <= \en4~output_o\;

ww_ok10s <= \ok10s~output_o\;

ww_en10s <= \en10s~output_o\;

ww_ld10s <= \ld10s~output_o\;

ww_sensores <= \sensores~output_o\;

ww_ok10se <= \ok10se~output_o\;

ww_en10se <= \en10se~output_o\;

ww_ld10se <= \ld10se~output_o\;

ww_ok2s <= \ok2s~output_o\;

ww_en2s <= \en2s~output_o\;

ww_ld2s <= \ld2s~output_o\;

ww_ok20s <= \ok20s~output_o\;

ww_en20s <= \en20s~output_o\;

ww_ld20s <= \ld20s~output_o\;

ww_alarma <= \alarma~output_o\;

ww_sirena <= \sirena~output_o\;

ww_ua <= \ua~output_o\;

ww_estados(5) <= \estados[5]~output_o\;

ww_estados(4) <= \estados[4]~output_o\;

ww_estados(3) <= \estados[3]~output_o\;

ww_estados(2) <= \estados[2]~output_o\;

ww_estados(1) <= \estados[1]~output_o\;

ww_estados(0) <= \estados[0]~output_o\;

ww_s10(3) <= \s10[3]~output_o\;

ww_s10(2) <= \s10[2]~output_o\;

ww_s10(1) <= \s10[1]~output_o\;

ww_s10(0) <= \s10[0]~output_o\;

ww_s20(4) <= \s20[4]~output_o\;

ww_s20(3) <= \s20[3]~output_o\;

ww_s20(2) <= \s20[2]~output_o\;

ww_s20(1) <= \s20[1]~output_o\;

ww_s20(0) <= \s20[0]~output_o\;

ww_se10(3) <= \se10[3]~output_o\;

ww_se10(2) <= \se10[2]~output_o\;

ww_se10(1) <= \se10[1]~output_o\;

ww_se10(0) <= \se10[0]~output_o\;

ww_se2(3) <= \se2[3]~output_o\;

ww_se2(2) <= \se2[2]~output_o\;

ww_se2(1) <= \se2[1]~output_o\;

ww_se2(0) <= \se2[0]~output_o\;
END structure;


