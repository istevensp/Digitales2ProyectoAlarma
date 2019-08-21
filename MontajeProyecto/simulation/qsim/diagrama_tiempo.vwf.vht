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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/20/2019 15:03:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          particion
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY particion_vhd_vec_tst IS
END particion_vhd_vec_tst;
ARCHITECTURE particion_arch OF particion_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarma : STD_LOGIC;
SIGNAL clave : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clk_1 : STD_LOGIC;
SIGNAL en1 : STD_LOGIC;
SIGNAL en2 : STD_LOGIC;
SIGNAL en2s : STD_LOGIC;
SIGNAL en3 : STD_LOGIC;
SIGNAL en4 : STD_LOGIC;
SIGNAL en10s : STD_LOGIC;
SIGNAL en10se : STD_LOGIC;
SIGNAL en20s : STD_LOGIC;
SIGNAL estados : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL ld2s : STD_LOGIC;
SIGNAL ld10s : STD_LOGIC;
SIGNAL ld10se : STD_LOGIC;
SIGNAL ld20s : STD_LOGIC;
SIGNAL ldn : STD_LOGIC;
SIGNAL num1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL num2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL num3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL num4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ok2s : STD_LOGIC;
SIGNAL ok10s : STD_LOGIC;
SIGNAL ok10se : STD_LOGIC;
SIGNAL ok20s : STD_LOGIC;
SIGNAL rstn : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL s3 : STD_LOGIC;
SIGNAL s10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s20 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL se2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL se10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sensores : STD_LOGIC;
SIGNAL sirena : STD_LOGIC;
SIGNAL sp : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL tecla : STD_LOGIC;
SIGNAL teclado : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ua : STD_LOGIC;
COMPONENT particion
	PORT (
	alarma : OUT STD_LOGIC;
	clave : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	clk_1 : IN STD_LOGIC;
	en1 : OUT STD_LOGIC;
	en2 : OUT STD_LOGIC;
	en2s : OUT STD_LOGIC;
	en3 : OUT STD_LOGIC;
	en4 : OUT STD_LOGIC;
	en10s : OUT STD_LOGIC;
	en10se : OUT STD_LOGIC;
	en20s : OUT STD_LOGIC;
	estados : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	ld2s : OUT STD_LOGIC;
	ld10s : OUT STD_LOGIC;
	ld10se : OUT STD_LOGIC;
	ld20s : OUT STD_LOGIC;
	ldn : OUT STD_LOGIC;
	num1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	num2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	num3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	num4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ok2s : OUT STD_LOGIC;
	ok10s : OUT STD_LOGIC;
	ok10se : OUT STD_LOGIC;
	ok20s : OUT STD_LOGIC;
	rstn : IN STD_LOGIC;
	s1 : IN STD_LOGIC;
	s2 : IN STD_LOGIC;
	s3 : IN STD_LOGIC;
	s10 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s20 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	se2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	se10 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sensores : OUT STD_LOGIC;
	sirena : OUT STD_LOGIC;
	sp : IN STD_LOGIC;
	start : IN STD_LOGIC;
	tecla : OUT STD_LOGIC;
	teclado : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	ua : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : particion
	PORT MAP (
-- list connections between master ports and signals
	alarma => alarma,
	clave => clave,
	clk => clk,
	clk_1 => clk_1,
	en1 => en1,
	en2 => en2,
	en2s => en2s,
	en3 => en3,
	en4 => en4,
	en10s => en10s,
	en10se => en10se,
	en20s => en20s,
	estados => estados,
	ld2s => ld2s,
	ld10s => ld10s,
	ld10se => ld10se,
	ld20s => ld20s,
	ldn => ldn,
	num1 => num1,
	num2 => num2,
	num3 => num3,
	num4 => num4,
	ok2s => ok2s,
	ok10s => ok10s,
	ok10se => ok10se,
	ok20s => ok20s,
	rstn => rstn,
	s1 => s1,
	s2 => s2,
	s3 => s3,
	s10 => s10,
	s20 => s20,
	se2 => se2,
	se10 => se10,
	sensores => sensores,
	sirena => sirena,
	sp => sp,
	start => start,
	tecla => tecla,
	teclado => teclado,
	ua => ua
	);

-- rstn
t_prcs_rstn: PROCESS
BEGIN
	rstn <= '0';
	WAIT FOR 80000 ps;
	rstn <= '1';
WAIT;
END PROCESS t_prcs_rstn;

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 1000 ps;
	clk <= '0';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 1998
	LOOP
		clk <= '1';
		WAIT FOR 1000 ps;
		clk <= '0';
		WAIT FOR 1000 ps;
	END LOOP;
	clk <= '1';
	WAIT FOR 1000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clk_1
t_prcs_clk_1: PROCESS
BEGIN
	clk_1 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 199
	LOOP
		clk_1 <= '0';
		WAIT FOR 10000 ps;
		clk_1 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk_1 <= '0';
WAIT;
END PROCESS t_prcs_clk_1;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 120000 ps;
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
-- teclado[9]
t_prcs_teclado_9: PROCESS
BEGIN
	teclado(9) <= '0';
WAIT;
END PROCESS t_prcs_teclado_9;
-- teclado[8]
t_prcs_teclado_8: PROCESS
BEGIN
	teclado(8) <= '0';
	WAIT FOR 520000 ps;
	teclado(8) <= '1';
	WAIT FOR 40000 ps;
	teclado(8) <= '0';
WAIT;
END PROCESS t_prcs_teclado_8;
-- teclado[7]
t_prcs_teclado_7: PROCESS
BEGIN
	teclado(7) <= '0';
	WAIT FOR 680000 ps;
	teclado(7) <= '1';
	WAIT FOR 40000 ps;
	teclado(7) <= '0';
WAIT;
END PROCESS t_prcs_teclado_7;
-- teclado[6]
t_prcs_teclado_6: PROCESS
BEGIN
	teclado(6) <= '0';
	WAIT FOR 1300000 ps;
	teclado(6) <= '1';
	WAIT FOR 10000 ps;
	teclado(6) <= '0';
WAIT;
END PROCESS t_prcs_teclado_6;
-- teclado[5]
t_prcs_teclado_5: PROCESS
BEGIN
	teclado(5) <= '0';
	WAIT FOR 1340000 ps;
	teclado(5) <= '1';
	WAIT FOR 10000 ps;
	teclado(5) <= '0';
WAIT;
END PROCESS t_prcs_teclado_5;
-- teclado[4]
t_prcs_teclado_4: PROCESS
BEGIN
	teclado(4) <= '0';
WAIT;
END PROCESS t_prcs_teclado_4;
-- teclado[3]
t_prcs_teclado_3: PROCESS
BEGIN
	teclado(3) <= '0';
	WAIT FOR 360000 ps;
	teclado(3) <= '1';
	WAIT FOR 40000 ps;
	teclado(3) <= '0';
WAIT;
END PROCESS t_prcs_teclado_3;
-- teclado[2]
t_prcs_teclado_2: PROCESS
BEGIN
	teclado(2) <= '0';
	WAIT FOR 840000 ps;
	teclado(2) <= '1';
	WAIT FOR 40000 ps;
	teclado(2) <= '0';
	WAIT FOR 400000 ps;
	teclado(2) <= '1';
	WAIT FOR 10000 ps;
	teclado(2) <= '0';
WAIT;
END PROCESS t_prcs_teclado_2;
-- teclado[1]
t_prcs_teclado_1: PROCESS
BEGIN
	teclado(1) <= '0';
	WAIT FOR 1320000 ps;
	teclado(1) <= '1';
	WAIT FOR 10000 ps;
	teclado(1) <= '0';
WAIT;
END PROCESS t_prcs_teclado_1;
-- teclado[0]
t_prcs_teclado_0: PROCESS
BEGIN
	teclado(0) <= '0';
WAIT;
END PROCESS t_prcs_teclado_0;

-- sp
t_prcs_sp: PROCESS
BEGIN
	sp <= '1';
	WAIT FOR 960000 ps;
	sp <= '0';
	WAIT FOR 40000 ps;
	sp <= '1';
	WAIT FOR 280000 ps;
	sp <= '0';
	WAIT FOR 40000 ps;
	sp <= '1';
WAIT;
END PROCESS t_prcs_sp;

-- s1
t_prcs_s1: PROCESS
BEGIN
	s1 <= '0';
WAIT;
END PROCESS t_prcs_s1;

-- s2
t_prcs_s2: PROCESS
BEGIN
	s2 <= '0';
WAIT;
END PROCESS t_prcs_s2;

-- s3
t_prcs_s3: PROCESS
BEGIN
	s3 <= '0';
WAIT;
END PROCESS t_prcs_s3;
END particion_arch;
