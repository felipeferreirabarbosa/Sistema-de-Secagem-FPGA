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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/23/2017 17:16:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	finalSDAtualizado1 IS
    PORT (
	led_ligado : OUT std_logic;
	CLOCK : IN std_logic;
	ligar_chave : IN std_logic;
	luzEstado1 : OUT std_logic;
	luzEstado2 : OUT std_logic;
	luzEstado3 : OUT std_logic;
	luzEstado4 : OUT std_logic;
	luzEstado5 : OUT std_logic;
	pwm : OUT std_logic;
	sensorUmidade : IN std_logic;
	sensorTemperatura : IN std_logic;
	led_pwm : OUT std_logic;
	\gnd\ : OUT std_logic
	);
END finalSDAtualizado1;

-- Design Ports Information
-- led_ligado	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luzEstado1	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luzEstado2	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luzEstado3	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luzEstado4	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- luzEstado5	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pwm	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_pwm	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- gnd	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ligar_chave	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensorTemperatura	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sensorUmidade	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF finalSDAtualizado1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_ligado : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_ligar_chave : std_logic;
SIGNAL ww_luzEstado1 : std_logic;
SIGNAL ww_luzEstado2 : std_logic;
SIGNAL ww_luzEstado3 : std_logic;
SIGNAL ww_luzEstado4 : std_logic;
SIGNAL ww_luzEstado5 : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL ww_sensorUmidade : std_logic;
SIGNAL ww_sensorTemperatura : std_logic;
SIGNAL ww_led_pwm : std_logic;
SIGNAL \ww_gnd\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst10~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~33\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst10~regout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \inst10~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \ligar_chave~combout\ : std_logic;
SIGNAL \inst17~regout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst21~1_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst21~2_combout\ : std_logic;
SIGNAL \inst21~3_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst6~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \sensorUmidade~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \sensorTemperatura~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst33|LPM_COMPARE_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~33\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst18|LPM_COMPARE_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst19|LPM_COMPARE_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst56|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\ : std_logic;
SIGNAL \inst36|LPM_COMPARE_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst70|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \inst62|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst27|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst35|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst37|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst69|lpm_mult_component|auto_generated|result\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst88|lpm_mult_component|auto_generated|result\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst87|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);

BEGIN

led_ligado <= ww_led_ligado;
ww_CLOCK <= CLOCK;
ww_ligar_chave <= ligar_chave;
luzEstado1 <= ww_luzEstado1;
luzEstado2 <= ww_luzEstado2;
luzEstado3 <= ww_luzEstado3;
luzEstado4 <= ww_luzEstado4;
luzEstado5 <= ww_luzEstado5;
pwm <= ww_pwm;
ww_sensorUmidade <= sensorUmidade;
ww_sensorTemperatura <= sensorTemperatura;
led_pwm <= ww_led_pwm;
\gnd\ <= \ww_gnd\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst69|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & 
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\
& \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\
& \inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst69|lpm_mult_component|auto_generated|mac_mult1~dataout\);

\inst69|lpm_mult_component|auto_generated|mac_out2~dataout\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT12\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT13\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT14\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT15\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT16\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst69|lpm_mult_component|auto_generated|mac_out2~DATAOUT17\ <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst69|lpm_mult_component|auto_generated|result\(0) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst69|lpm_mult_component|auto_generated|result\(1) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst69|lpm_mult_component|auto_generated|result\(2) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst69|lpm_mult_component|auto_generated|result\(3) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst69|lpm_mult_component|auto_generated|result\(4) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst69|lpm_mult_component|auto_generated|result\(5) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst69|lpm_mult_component|auto_generated|result\(6) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst69|lpm_mult_component|auto_generated|result\(7) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst69|lpm_mult_component|auto_generated|result\(8) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst69|lpm_mult_component|auto_generated|result\(9) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst69|lpm_mult_component|auto_generated|result\(10) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst69|lpm_mult_component|auto_generated|result\(11) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst69|lpm_mult_component|auto_generated|result\(12) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst69|lpm_mult_component|auto_generated|result\(13) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst69|lpm_mult_component|auto_generated|result\(14) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst69|lpm_mult_component|auto_generated|result\(15) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst69|lpm_mult_component|auto_generated|result\(16) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst69|lpm_mult_component|auto_generated|result\(17) <= \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst88|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & 
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\
& \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\
& \inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst88|lpm_mult_component|auto_generated|mac_mult1~dataout\);

\inst88|lpm_mult_component|auto_generated|mac_out2~dataout\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT1\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT2\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT3\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT4\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT5\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT6\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT7\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT8\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT9\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT10\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT11\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT12\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT13\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT14\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT15\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT16\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst88|lpm_mult_component|auto_generated|mac_out2~DATAOUT17\ <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst88|lpm_mult_component|auto_generated|result\(0) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst88|lpm_mult_component|auto_generated|result\(1) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst88|lpm_mult_component|auto_generated|result\(2) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst88|lpm_mult_component|auto_generated|result\(3) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst88|lpm_mult_component|auto_generated|result\(4) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst88|lpm_mult_component|auto_generated|result\(5) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst88|lpm_mult_component|auto_generated|result\(6) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst88|lpm_mult_component|auto_generated|result\(7) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst88|lpm_mult_component|auto_generated|result\(8) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst88|lpm_mult_component|auto_generated|result\(9) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst88|lpm_mult_component|auto_generated|result\(10) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst88|lpm_mult_component|auto_generated|result\(11) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst88|lpm_mult_component|auto_generated|result\(12) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst88|lpm_mult_component|auto_generated|result\(13) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst88|lpm_mult_component|auto_generated|result\(14) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst88|lpm_mult_component|auto_generated|result\(15) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst88|lpm_mult_component|auto_generated|result\(16) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst88|lpm_mult_component|auto_generated|result\(17) <= \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst69|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(17) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(16) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(15) & 
\inst62|LPM_COUNTER_component|auto_generated|safe_q\(14) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(13) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(12) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(11) & 
\inst62|LPM_COUNTER_component|auto_generated|safe_q\(10) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(9) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(8) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(7) & 
\inst62|LPM_COUNTER_component|auto_generated|safe_q\(6) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(4) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
\inst62|LPM_COUNTER_component|auto_generated|safe_q\(2) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst62|LPM_COUNTER_component|auto_generated|safe_q\(0));

\inst69|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd);

\inst69|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst69|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ <= \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst88|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(17) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(16) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(15) & 
\inst87|LPM_COUNTER_component|auto_generated|safe_q\(14) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(13) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(12) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(11) & 
\inst87|LPM_COUNTER_component|auto_generated|safe_q\(10) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(9) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(8) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(7) & 
\inst87|LPM_COUNTER_component|auto_generated|safe_q\(6) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(5) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(4) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
\inst87|LPM_COUNTER_component|auto_generated|safe_q\(2) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst87|LPM_COUNTER_component|auto_generated|safe_q\(0));

\inst88|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc);

\inst88|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT34\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst88|lpm_mult_component|auto_generated|mac_mult1~DATAOUT35\ <= \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst10~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst10~regout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

-- Location: LCFF_X40_Y13_N21
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X44_Y11_N17
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: DSPOUT_X39_Y11_N2
\inst88|lpm_mult_component|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst88|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X41_Y14_N14
\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(0) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC))) # (!\inst88|lpm_mult_component|auto_generated|result\(0) & 
-- ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (GND)))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (!\inst88|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(0),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X41_Y14_N30
\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) $ (\inst88|lpm_mult_component|auto_generated|result\(8) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))) # (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\) # (!\inst88|lpm_mult_component|auto_generated|result\(8)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst88|lpm_mult_component|auto_generated|result\(8) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst88|lpm_mult_component|auto_generated|result\(8),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X41_Y13_N0
\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst88|lpm_mult_component|auto_generated|result\(9) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(9) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst88|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(9) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst88|lpm_mult_component|auto_generated|result\(9) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst88|lpm_mult_component|auto_generated|result\(9)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst88|lpm_mult_component|auto_generated|result\(9),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~17\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X41_Y13_N2
\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) $ (\inst88|lpm_mult_component|auto_generated|result\(10) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))) # 
-- (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\) # (!\inst88|lpm_mult_component|auto_generated|result\(10)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst88|lpm_mult_component|auto_generated|result\(10) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst88|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~19\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\);

-- Location: LCCOMB_X41_Y13_N8
\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(13) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (\inst88|lpm_mult_component|auto_generated|result\(13) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst88|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\);

-- Location: LCCOMB_X41_Y13_N12
\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(15) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(15) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & 
-- (\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(15) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15)))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(15),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\);

-- Location: LCCOMB_X41_Y13_N14
\inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) $ (\inst88|lpm_mult_component|auto_generated|result\(16) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\)))) # 
-- (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~33\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\) # (!\inst88|lpm_mult_component|auto_generated|result\(16)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst88|lpm_mult_component|auto_generated|result\(16) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst88|lpm_mult_component|auto_generated|result\(16),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~31\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~33\);

-- Location: LCCOMB_X42_Y14_N14
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ & ((GND) # (!\inst69|lpm_mult_component|auto_generated|result\(0)))) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ & (\inst69|lpm_mult_component|auto_generated|result\(0) $ (GND)))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\) # (!\inst69|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(0),
	datad => VCC,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X42_Y14_N18
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(2) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(2) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(2) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(2),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X42_Y14_N20
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(3) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(3) & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(3) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(3),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X42_Y14_N22
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(4) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(4) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(4) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(4),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X42_Y14_N24
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(5) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(5) & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(5) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(5),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X42_Y14_N28
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(7) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(7) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(7) & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(7),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X42_Y14_N30
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ $ (\inst69|lpm_mult_component|auto_generated|result\(8) $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\) # (!\inst69|lpm_mult_component|auto_generated|result\(8)))) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ & (!\inst69|lpm_mult_component|auto_generated|result\(8) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(8),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X42_Y13_N0
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(9) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)))) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & (\inst69|lpm_mult_component|auto_generated|result\(9) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(9)) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(9),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X42_Y13_N8
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(13) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(13) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)))) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(13) & 
-- ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(13) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & (\inst69|lpm_mult_component|auto_generated|result\(13) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(13)) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X42_Y13_N10
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(14) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(14) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(14) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(14),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X42_Y13_N12
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(15) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(15) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)))) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(15) & 
-- ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(15) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & (\inst69|lpm_mult_component|auto_generated|result\(15) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & ((\inst69|lpm_mult_component|auto_generated|result\(15)) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(15),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X42_Y13_N14
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ $ (\inst69|lpm_mult_component|auto_generated|result\(16) $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\) # (!\inst69|lpm_mult_component|auto_generated|result\(16)))) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ & (!\inst69|lpm_mult_component|auto_generated|result\(16) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(16),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCFF_X44_Y11_N7
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X44_Y12_N17
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X40_Y15_N14
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(0) & (!\inst69|lpm_mult_component|auto_generated|result\(0) & VCC)) # (!\inst88|lpm_mult_component|auto_generated|result\(0) & 
-- (\inst69|lpm_mult_component|auto_generated|result\(0) $ (GND)))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((!\inst88|lpm_mult_component|auto_generated|result\(0) & !\inst69|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(0),
	datab => \inst69|lpm_mult_component|auto_generated|result\(0),
	datad => VCC,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X40_Y15_N30
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(8) $ (\inst69|lpm_mult_component|auto_generated|result\(8) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(8) & (!\inst69|lpm_mult_component|auto_generated|result\(8) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(8) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\) # (!\inst69|lpm_mult_component|auto_generated|result\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(8),
	datab => \inst69|lpm_mult_component|auto_generated|result\(8),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X40_Y14_N10
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(14) $ (\inst69|lpm_mult_component|auto_generated|result\(14) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(14) & (!\inst69|lpm_mult_component|auto_generated|result\(14) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(14) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\) # (!\inst69|lpm_mult_component|auto_generated|result\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(14),
	datab => \inst69|lpm_mult_component|auto_generated|result\(14),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X36_Y16_N20
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\ $ (GND))) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ 
-- & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\ & VCC))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X36_Y16_N30
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X36_Y15_N0
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((GND) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\ $ (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X36_Y15_N2
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & 
-- ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X36_Y15_N4
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\ $ (GND))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\ & VCC))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X36_Y15_N6
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X36_Y15_N8
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\ $ (GND))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\ & VCC))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X36_Y15_N12
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((GND) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\ $ (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X36_Y15_N14
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & 
-- ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCFF_X41_Y15_N11
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X41_Y16_N25
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X41_Y16_N17
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X37_Y14_N14
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\inst69|lpm_mult_component|auto_generated|result\(0) $ (GND))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- (!\inst69|lpm_mult_component|auto_generated|result\(0) & VCC))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) & !\inst69|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst69|lpm_mult_component|auto_generated|result\(0),
	datad => VCC,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X37_Y14_N18
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\inst69|lpm_mult_component|auto_generated|result\(2) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\) # (!\inst69|lpm_mult_component|auto_generated|result\(2)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst69|lpm_mult_component|auto_generated|result\(2) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst69|lpm_mult_component|auto_generated|result\(2),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X37_Y14_N20
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(3) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(3) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst69|lpm_mult_component|auto_generated|result\(3) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst69|lpm_mult_component|auto_generated|result\(3),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X37_Y13_N0
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(9) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst69|lpm_mult_component|auto_generated|result\(9) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst69|lpm_mult_component|auto_generated|result\(9),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X37_Y13_N4
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(11) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (\inst69|lpm_mult_component|auto_generated|result\(11) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst69|lpm_mult_component|auto_generated|result\(11),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X37_Y13_N14
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(16) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(16) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(16) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(16),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X36_Y12_N18
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X36_Y12_N20
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\ $ (GND))) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ 
-- & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\ & VCC))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X36_Y12_N28
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((GND) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\ $ (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X36_Y12_N30
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X36_Y11_N2
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X36_Y11_N4
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & ((GND) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\ $ (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X36_Y11_N8
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\ $ (GND))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\ & VCC))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X36_Y11_N10
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X36_Y11_N12
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((GND) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\ $ (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X36_Y11_N14
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X37_Y12_N14
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(0) $ (GND))) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ 
-- & (!\inst88|lpm_mult_component|auto_generated|result\(0) & VCC))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst88|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(0),
	datad => VCC,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X37_Y12_N16
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(1) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(1) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ 
-- & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(1) & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(1) & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(1),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X37_Y12_N20
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(3) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(3) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)))) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(3) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(3) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(3)) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(3),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X37_Y12_N24
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ 
-- & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(5) & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(5) & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(5),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X37_Y12_N26
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(6) $ (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(6) & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(6) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(6),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X37_Y12_N30
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(8) $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\) # (!\inst88|lpm_mult_component|auto_generated|result\(8)))) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(8) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(8),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X37_Y11_N0
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(9) & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(9) & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(9),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X37_Y11_N2
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(10) $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\) # (!\inst88|lpm_mult_component|auto_generated|result\(10)))) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(10) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X37_Y11_N6
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(12) $ (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(12) & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(12) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(12),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X37_Y11_N8
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(13) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)))) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(13) & 
-- ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(13) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(13)) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X37_Y11_N12
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(15) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)))) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(15) & 
-- ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(15) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(15)) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(15),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X37_Y11_N14
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(16) $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\) # (!\inst88|lpm_mult_component|auto_generated|result\(16)))) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(16) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(16),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCFF_X42_Y11_N11
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X43_Y14_N16
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY(\inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X43_Y14_N20
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\ $ (GND))) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ 
-- & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\ & VCC))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X43_Y14_N24
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((GND) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\ $ (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X43_Y14_N30
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X43_Y13_N0
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\ $ (GND))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\ & VCC))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & !\inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X43_Y13_N2
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & !\inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X43_Y13_N8
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\ $ (GND))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\ & VCC))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & !\inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X43_Y13_N10
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X43_Y13_N12
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((GND) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\ $ (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X43_Y13_N14
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCFF_X45_Y11_N7
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X38_Y14_N16
\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(1) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(1) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst69|lpm_mult_component|auto_generated|result\(1) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst69|lpm_mult_component|auto_generated|result\(1),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X38_Y14_N24
\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst69|lpm_mult_component|auto_generated|result\(5) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(5) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst69|lpm_mult_component|auto_generated|result\(5) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(5) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (\inst69|lpm_mult_component|auto_generated|result\(5) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst69|lpm_mult_component|auto_generated|result\(5)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst69|lpm_mult_component|auto_generated|result\(5),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X38_Y13_N0
\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(9) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst69|lpm_mult_component|auto_generated|result\(9) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst69|lpm_mult_component|auto_generated|result\(9),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\);

-- Location: LCCOMB_X38_Y13_N2
\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) $ (\inst69|lpm_mult_component|auto_generated|result\(10) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))) # 
-- (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & ((!\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\) # (!\inst69|lpm_mult_component|auto_generated|result\(10)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst69|lpm_mult_component|auto_generated|result\(10) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst69|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~19\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\);

-- Location: LCCOMB_X38_Y13_N4
\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(11) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (\inst69|lpm_mult_component|auto_generated|result\(11) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst69|lpm_mult_component|auto_generated|result\(11),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~21\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X38_Y13_N6
\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(12) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\)))) # 
-- (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(12) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(12) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~23\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X38_Y13_N8
\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(13) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(13) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & 
-- (\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(13) & ((!\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13)))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(13) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(13),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~25\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\);

-- Location: LCCOMB_X38_Y13_N10
\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(14) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\)))) # 
-- (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(14) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(14) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~27\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\);

-- Location: LCCOMB_X38_Y13_N12
\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst69|lpm_mult_component|auto_generated|result\(15) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(15) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst69|lpm_mult_component|auto_generated|result\(15) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(15) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (\inst69|lpm_mult_component|auto_generated|result\(15) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst69|lpm_mult_component|auto_generated|result\(15)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst69|lpm_mult_component|auto_generated|result\(15),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~29\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\);

-- Location: LCCOMB_X38_Y13_N14
\inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(16) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\)))) # 
-- (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~33\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(16) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(16) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(16),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~31\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~33\);

-- Location: LCCOMB_X38_Y13_N16
\inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\ = \inst69|lpm_mult_component|auto_generated|result\(17) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[16]~33\ $ (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst69|lpm_mult_component|auto_generated|result\(17),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~33\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\);

-- Location: LCCOMB_X38_Y16_N18
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(2) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(2) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(2) & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(2),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X38_Y16_N24
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\) # 
-- (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(5) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(5) & 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst88|lpm_mult_component|auto_generated|result\(5) & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(5)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\))) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(5) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(5),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X38_Y15_N6
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(12) $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(12) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\)) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\) # (!\inst88|lpm_mult_component|auto_generated|result\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(12),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X38_Y15_N10
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(14) $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(14) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\)) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\) # (!\inst88|lpm_mult_component|auto_generated|result\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(14),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X38_Y15_N12
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(15) & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\) # 
-- (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\)))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & 
-- ((\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst88|lpm_mult_component|auto_generated|result\(15) & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(15)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\))) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(15) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[15]~30_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(15),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X38_Y15_N14
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(16) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(16) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(16) & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(16),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[16]~32_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X38_Y15_N16
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = \inst88|lpm_mult_component|auto_generated|result\(17) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\ $ (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(17),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X44_Y16_N16
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = \inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY(\inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X44_Y16_N24
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((GND) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\ $ (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X44_Y16_N26
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & 
-- ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X44_Y16_N28
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\ $ (GND))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\ & VCC))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & !\inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X44_Y15_N2
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC)) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & !\inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X44_Y15_N4
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & ((GND) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\ $ (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X44_Y15_N6
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & !\inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X44_Y15_N14
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & 
-- ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X44_Y15_N16
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = \inst93|LPM_ADD_SUB_component|auto_generated|op_1~31\ $ (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\);

-- Location: LCFF_X42_Y15_N13
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X42_Y15_N11
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X42_Y16_N21
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X40_Y13_N20
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X44_Y12_N16
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X44_Y11_N6
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X44_Y11_N14
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X44_Y11_N16
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCCOMB_X41_Y16_N16
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X41_Y16_N24
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X41_Y15_N10
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X42_Y11_N10
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X45_Y11_N6
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X42_Y16_N20
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X42_Y15_N10
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X42_Y15_N12
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X34_Y1_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X34_Y1_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X34_Y1_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCFF_X34_Y1_N1
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCFF_X34_Y1_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X34_Y1_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCFF_X34_Y1_N3
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCFF_X34_Y2_N23
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCFF_X34_Y2_N21
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X34_Y2_N25
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X34_Y2_N27
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCFF_X34_Y2_N31
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCFF_X34_Y2_N29
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCFF_X34_Y1_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X34_Y1_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCFF_X34_Y2_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X34_Y2_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCFF_X34_Y2_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X34_Y2_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X34_Y2_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X34_Y2_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X34_Y2_N20
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X34_Y2_N22
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X34_Y2_N24
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X34_Y2_N26
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X34_Y2_N28
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X34_Y2_N30
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X34_Y1_N0
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X34_Y1_N2
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X34_Y1_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X34_Y1_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X34_Y1_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X34_Y1_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X34_Y1_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X34_Y1_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X34_Y1_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X34_Y1_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\ = !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\);

-- Location: LCCOMB_X40_Y12_N20
\inst7|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X40_Y13_N10
\inst9|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X41_Y12_N10
\inst22|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCFF_X34_Y1_N23
inst10 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10~regout\);

-- Location: LCCOMB_X33_Y1_N24
\inst3|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst|LPM_COUNTER_component|auto_generated|safe_q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16),
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X35_Y1_N0
\inst3|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(12) & 
-- !\inst|LPM_COUNTER_component|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X34_Y2_N12
\inst3|LPM_COMPARE_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & (((!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst|LPM_COUNTER_component|auto_generated|safe_q\(4))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X34_Y2_N10
\inst3|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\ = (\inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & ((\inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\) # ((!\inst|LPM_COUNTER_component|auto_generated|safe_q\(8)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X34_Y1_N22
\inst3|LPM_COMPARE_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\ = (\inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & (((\inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\,
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X34_Y2_N4
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X34_Y1_N26
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(11) & \inst|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X34_Y1_N30
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(16) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13) & \inst|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X34_Y1_N24
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(6) & 
-- !\inst|LPM_COUNTER_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X34_Y2_N2
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X34_Y1_N28
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & 
-- (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ & \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X34_Y1_N20
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\ = ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\) # ((\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ & 
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\))) # (!\inst17~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\,
	datac => \inst17~regout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~0_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\);

-- Location: LCCOMB_X42_Y16_N0
\inst70|LPM_MUX_component|auto_generated|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ = (\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & (\inst17~regout\ & ((!\inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\)))) # 
-- (!\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & (((\inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~regout\,
	datab => \inst6~0_combout\,
	datac => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X42_Y12_N12
\inst70|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (\inst5~0_combout\ & ((\inst2~0_combout\) # ((\inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & \inst17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datab => \inst5~0_combout\,
	datac => \inst17~regout\,
	datad => \inst2~0_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G13
\inst10~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ligar_chave~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ligar_chave,
	combout => \ligar_chave~combout\);

-- Location: LCFF_X42_Y12_N9
inst17 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \ligar_chave~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17~regout\);

-- Location: LCCOMB_X40_Y13_N14
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X40_Y13_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X40_Y13_N16
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X40_Y13_N18
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X40_Y13_N19
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X40_Y13_N22
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X40_Y13_N23
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X40_Y13_N24
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X40_Y13_N26
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X40_Y13_N27
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X40_Y13_N28
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X40_Y13_N29
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X40_Y13_N30
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X40_Y13_N31
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X40_Y12_N0
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X40_Y12_N1
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X40_Y12_N2
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X40_Y12_N3
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X40_Y12_N4
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X40_Y12_N5
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X40_Y12_N6
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X40_Y12_N7
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X40_Y12_N8
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X40_Y12_N9
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X40_Y12_N10
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X40_Y12_N12
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X40_Y12_N14
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X40_Y12_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X40_Y12_N16
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X40_Y12_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X40_Y12_N11
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X40_Y12_N22
\inst21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst21~1_combout\);

-- Location: LCFF_X40_Y13_N25
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X40_Y13_N12
\inst21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X40_Y13_N2
\inst21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~2_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst21~2_combout\);

-- Location: LCCOMB_X41_Y16_N12
\inst21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~3_combout\ = ((\inst21~1_combout\) # ((\inst21~0_combout\) # (\inst21~2_combout\))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst21~1_combout\,
	datac => \inst21~0_combout\,
	datad => \inst21~2_combout\,
	combout => \inst21~3_combout\);

-- Location: LCCOMB_X42_Y16_N12
\inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\inst17~regout\ & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & \inst21~3_combout\)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~regout\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => \inst21~3_combout\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X41_Y12_N20
\inst7|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCFF_X40_Y13_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X40_Y13_N0
\inst9|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X41_Y12_N26
\inst7|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ & (((\inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCFF_X40_Y12_N13
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X41_Y12_N24
\inst7|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X41_Y12_N6
\inst7|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (((\inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datac => \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X41_Y12_N12
\inst7|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # 
-- (\inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datab => \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X41_Y12_N18
inst26 : cycloneii_lcell_comb
-- Equation(s):
-- \inst26~combout\ = (\inst17~regout\ & \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~regout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	combout => \inst26~combout\);

-- Location: LCCOMB_X41_Y12_N0
\inst8|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X40_Y12_N30
\inst8|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X41_Y12_N4
\inst8|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (((\inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datac => \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X41_Y12_N2
\inst8|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X41_Y12_N30
\inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ & ((\inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\) # ((\inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ & 
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datab => \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datac => \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X41_Y12_N16
\inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = (!\inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & (\inst17~regout\ & \inst1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datac => \inst17~regout\,
	datad => \inst1~0_combout\,
	combout => \inst1~1_combout\);

-- Location: LCCOMB_X40_Y13_N4
\inst9|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X40_Y12_N28
\inst9|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X41_Y13_N30
\inst9|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (\inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # ((\inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\ & ((\inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X41_Y13_N28
\inst9|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = ((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\) # (\inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X41_Y13_N18
\inst9|LPM_COMPARE_component|auto_generated|aleb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\);

-- Location: LCCOMB_X42_Y12_N10
\inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\inst17~regout\ & (!\inst1~0_combout\ & \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~regout\,
	datac => \inst1~0_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X41_Y12_N14
\inst22|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X41_Y12_N8
\inst22|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (\inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # ((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X40_Y12_N26
\inst22|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X40_Y12_N24
\inst22|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (((\inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X41_Y12_N28
\inst22|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\) # ((\inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\ & 
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X41_Y16_N10
\inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\inst17~regout\ & (!\inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ & \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~regout\,
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X42_Y16_N2
\inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6~1_combout\ = (!\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & \inst6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datad => \inst6~0_combout\,
	combout => \inst6~1_combout\);

-- Location: LCCOMB_X40_Y17_N12
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X40_Y11_N14
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst87|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst87|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensorUmidade~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sensorUmidade,
	combout => \sensorUmidade~combout\);

-- Location: LCFF_X40_Y11_N15
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X40_Y11_N16
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X40_Y11_N17
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X40_Y11_N18
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X40_Y11_N19
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X40_Y11_N20
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X40_Y11_N21
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X40_Y11_N22
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X40_Y11_N23
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X40_Y11_N24
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X40_Y11_N25
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X40_Y11_N26
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X40_Y11_N27
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X40_Y11_N28
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X40_Y11_N29
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X40_Y11_N30
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X40_Y11_N31
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X40_Y10_N0
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X40_Y10_N1
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X40_Y10_N2
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X40_Y10_N3
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X40_Y10_N4
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X40_Y10_N5
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X40_Y10_N6
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X40_Y10_N7
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X40_Y10_N8
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X40_Y10_N9
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X40_Y10_N10
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X40_Y10_N11
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X40_Y10_N12
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X40_Y10_N13
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X40_Y10_N14
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst87|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst87|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst87|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X40_Y10_N15
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X40_Y10_N16
\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst87|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X40_Y10_N17
\inst87|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst87|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \sensorUmidade~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst87|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: DSPMULT_X39_Y11_N0
\inst88|lpm_mult_component|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	dataa => \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst88|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y17_N14
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst62|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst62|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sensorTemperatura~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sensorTemperatura,
	combout => \sensorTemperatura~combout\);

-- Location: LCFF_X40_Y17_N15
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X40_Y17_N16
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X40_Y17_N17
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X40_Y17_N18
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X40_Y17_N19
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X40_Y17_N20
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X40_Y17_N21
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X40_Y17_N22
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X40_Y17_N23
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X40_Y17_N24
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X40_Y17_N25
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X40_Y17_N26
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X40_Y17_N27
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X40_Y17_N28
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X40_Y17_N29
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X40_Y17_N30
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X40_Y17_N31
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X40_Y16_N0
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X40_Y16_N1
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X40_Y16_N2
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X40_Y16_N3
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X40_Y16_N4
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X40_Y16_N5
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X40_Y16_N6
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X40_Y16_N7
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X40_Y16_N8
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X40_Y16_N9
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X40_Y16_N10
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCFF_X40_Y16_N11
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X40_Y16_N12
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X40_Y16_N13
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCCOMB_X40_Y16_N14
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst62|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst62|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst62|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X40_Y16_N15
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X40_Y16_N16
\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst62|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X40_Y16_N17
\inst62|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst62|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \sensorTemperatura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst62|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: DSPMULT_X39_Y14_N0
\inst69|lpm_mult_component|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	dataa => \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst69|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y14_N2
\inst69|lpm_mult_component|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst69|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y15_N16
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(1) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # (!\inst69|lpm_mult_component|auto_generated|result\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst88|lpm_mult_component|auto_generated|result\(1) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(1) & (\inst88|lpm_mult_component|auto_generated|result\(1) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(1),
	datab => \inst88|lpm_mult_component|auto_generated|result\(1),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X40_Y15_N18
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(2) $ (\inst69|lpm_mult_component|auto_generated|result\(2) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(2) & (!\inst69|lpm_mult_component|auto_generated|result\(2) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(2) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\) # (!\inst69|lpm_mult_component|auto_generated|result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(2),
	datab => \inst69|lpm_mult_component|auto_generated|result\(2),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X40_Y15_N20
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(3) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # (!\inst69|lpm_mult_component|auto_generated|result\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst88|lpm_mult_component|auto_generated|result\(3) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(3) & (\inst88|lpm_mult_component|auto_generated|result\(3) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(3),
	datab => \inst88|lpm_mult_component|auto_generated|result\(3),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X40_Y15_N22
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(4) $ (\inst88|lpm_mult_component|auto_generated|result\(4) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(4) & (!\inst88|lpm_mult_component|auto_generated|result\(4) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(4) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\) # (!\inst88|lpm_mult_component|auto_generated|result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(4),
	datab => \inst88|lpm_mult_component|auto_generated|result\(4),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X40_Y15_N24
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(5) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\)))) # (!\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst88|lpm_mult_component|auto_generated|result\(5) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst88|lpm_mult_component|auto_generated|result\(5) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst88|lpm_mult_component|auto_generated|result\(5)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(5) & (\inst88|lpm_mult_component|auto_generated|result\(5) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(5),
	datab => \inst88|lpm_mult_component|auto_generated|result\(5),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X40_Y15_N26
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(6) $ (\inst69|lpm_mult_component|auto_generated|result\(6) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(6) & (!\inst69|lpm_mult_component|auto_generated|result\(6) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(6) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\) # (!\inst69|lpm_mult_component|auto_generated|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(6),
	datab => \inst69|lpm_mult_component|auto_generated|result\(6),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X40_Y15_N28
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst69|lpm_mult_component|auto_generated|result\(7) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(7) & (\inst69|lpm_mult_component|auto_generated|result\(7) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(7),
	datab => \inst69|lpm_mult_component|auto_generated|result\(7),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X40_Y14_N0
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\) # (GND))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(9) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst69|lpm_mult_component|auto_generated|result\(9) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst69|lpm_mult_component|auto_generated|result\(9)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(9) & (\inst69|lpm_mult_component|auto_generated|result\(9) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(9),
	datab => \inst69|lpm_mult_component|auto_generated|result\(9),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X40_Y14_N2
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(10) $ (\inst69|lpm_mult_component|auto_generated|result\(10) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(10) & (!\inst69|lpm_mult_component|auto_generated|result\(10) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(10) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\) # (!\inst69|lpm_mult_component|auto_generated|result\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(10),
	datab => \inst69|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X40_Y14_N4
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst69|lpm_mult_component|auto_generated|result\(11) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst69|lpm_mult_component|auto_generated|result\(11)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(11) & (\inst69|lpm_mult_component|auto_generated|result\(11) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(11),
	datab => \inst69|lpm_mult_component|auto_generated|result\(11),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X40_Y14_N6
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(12) $ (\inst69|lpm_mult_component|auto_generated|result\(12) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(12) & (!\inst69|lpm_mult_component|auto_generated|result\(12) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(12) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\) # (!\inst69|lpm_mult_component|auto_generated|result\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(12),
	datab => \inst69|lpm_mult_component|auto_generated|result\(12),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X40_Y14_N8
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # (!\inst69|lpm_mult_component|auto_generated|result\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst88|lpm_mult_component|auto_generated|result\(13) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(13) & ((\inst88|lpm_mult_component|auto_generated|result\(13)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(13) & (\inst88|lpm_mult_component|auto_generated|result\(13) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(13),
	datab => \inst88|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X40_Y14_N12
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(15) & ((\inst88|lpm_mult_component|auto_generated|result\(15) & ((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(15) & (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\)))) # (!\inst69|lpm_mult_component|auto_generated|result\(15) & ((\inst88|lpm_mult_component|auto_generated|result\(15) & 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # (!\inst88|lpm_mult_component|auto_generated|result\(15) & (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC))))
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(15) & ((\inst88|lpm_mult_component|auto_generated|result\(15)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(15) & (\inst88|lpm_mult_component|auto_generated|result\(15) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(15),
	datab => \inst88|lpm_mult_component|auto_generated|result\(15),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X40_Y14_N14
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(16) $ (\inst69|lpm_mult_component|auto_generated|result\(16) $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\)))) # (GND)
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~33\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(16) & (!\inst69|lpm_mult_component|auto_generated|result\(16) & !\inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(16) & ((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\) # (!\inst69|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(16),
	datab => \inst69|lpm_mult_component|auto_generated|result\(16),
	datad => VCC,
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X40_Y14_N16
\inst66|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = \inst88|lpm_mult_component|auto_generated|result\(17) $ (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~33\ $ (\inst69|lpm_mult_component|auto_generated|result\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst88|lpm_mult_component|auto_generated|result\(17),
	datad => \inst69|lpm_mult_component|auto_generated|result\(17),
	cin => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X36_Y16_N16
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY(\inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y16_N18
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & 
-- ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X36_Y16_N22
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X36_Y16_N24
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((GND) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\ $ (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X36_Y16_N26
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X36_Y16_N28
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((GND) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\ $ (GND)))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X36_Y15_N10
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\))
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & !\inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X36_Y15_N16
\inst92|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ $ (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cin => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X41_Y16_N14
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst35|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst35|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X41_Y16_N15
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X41_Y16_N18
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X41_Y16_N19
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X41_Y16_N20
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X41_Y16_N22
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X41_Y16_N23
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X41_Y16_N26
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X41_Y16_N27
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X41_Y16_N28
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X41_Y16_N29
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X41_Y16_N30
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X41_Y16_N31
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X41_Y15_N0
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X41_Y15_N1
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X41_Y15_N2
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X41_Y15_N3
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X41_Y15_N4
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X41_Y15_N5
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X41_Y15_N6
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X41_Y15_N8
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X41_Y15_N9
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X41_Y15_N12
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X41_Y15_N14
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X41_Y15_N15
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X41_Y15_N16
\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst35|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X41_Y15_N17
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X41_Y15_N13
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X41_Y15_N7
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X41_Y16_N21
\inst35|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst35|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X37_Y16_N14
\inst33|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst35|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X37_Y16_N16
\inst33|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\))) 
-- # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X37_Y16_N18
\inst33|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X37_Y16_N20
\inst33|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\)) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X37_Y16_N22
\inst33|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X37_Y16_N24
\inst33|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\))) 
-- # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X37_Y16_N26
\inst33|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X37_Y16_N28
\inst33|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & 
-- !\inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X37_Y16_N30
\inst33|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(8)))) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X37_Y15_N0
\inst33|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\)) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X37_Y15_N2
\inst33|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(10)))) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X37_Y15_N4
\inst33|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\)) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(11)) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X37_Y15_N6
\inst33|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(12)))) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X37_Y15_N8
\inst33|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\)) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X37_Y15_N10
\inst33|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & !\inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\)) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X37_Y15_N12
\inst33|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (\inst35|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\)) # 
-- (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((\inst35|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X37_Y15_N14
\inst33|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((!\inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\) # 
-- (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(16)))) # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datab => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X37_Y15_N16
\inst33|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst33|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & ((\inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\) # (!\inst35|LPM_COUNTER_component|auto_generated|safe_q\(17)))) 
-- # (!\inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (\inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\ & !\inst35|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst92|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => \inst35|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst33|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst33|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X41_Y14_N16
\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(1) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(1) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst88|lpm_mult_component|auto_generated|result\(1) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst88|lpm_mult_component|auto_generated|result\(1)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst88|lpm_mult_component|auto_generated|result\(1),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X41_Y14_N18
\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(2) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(2) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(2) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(2),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X41_Y14_N20
\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(3) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(3) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst88|lpm_mult_component|auto_generated|result\(3) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst88|lpm_mult_component|auto_generated|result\(3)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst88|lpm_mult_component|auto_generated|result\(3),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X41_Y14_N22
\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst88|lpm_mult_component|auto_generated|result\(4) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))) # (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\) # (!\inst88|lpm_mult_component|auto_generated|result\(4)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst88|lpm_mult_component|auto_generated|result\(4) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst88|lpm_mult_component|auto_generated|result\(4),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X41_Y14_N24
\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- (\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(5) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5)))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(5),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[4]~9\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~10_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\);

-- Location: LCCOMB_X41_Y14_N26
\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(6) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))) # (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(6) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(6) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(6),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X41_Y14_N28
\inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & 
-- (\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(7) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7)))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(7),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X41_Y13_N4
\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (GND))))) # (!\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & 
-- (\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\))))
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(11) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11)))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(11),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~21\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\);

-- Location: LCCOMB_X41_Y13_N6
\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) $ (\inst88|lpm_mult_component|auto_generated|result\(12) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\)))) # 
-- (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((!\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\) # (!\inst88|lpm_mult_component|auto_generated|result\(12)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst88|lpm_mult_component|auto_generated|result\(12) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst88|lpm_mult_component|auto_generated|result\(12),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~23\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~25\);

-- Location: LCCOMB_X41_Y13_N10
\inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(14) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\)))) # 
-- (GND)
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(14) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(14) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[13]~27\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~28_combout\,
	cout => \inst89|LPM_ADD_SUB_component|auto_generated|result[14]~29\);

-- Location: LCCOMB_X41_Y13_N16
\inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\ = \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[16]~33\ $ (!\inst88|lpm_mult_component|auto_generated|result\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst88|lpm_mult_component|auto_generated|result\(17),
	cin => \inst89|LPM_ADD_SUB_component|auto_generated|result[16]~33\,
	combout => \inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\);

-- Location: LCCOMB_X42_Y14_N16
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(1) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(1) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(1) & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(1) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(1),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X42_Y14_N26
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(6) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(6) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(6) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(6),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X42_Y13_N2
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ $ (\inst69|lpm_mult_component|auto_generated|result\(10) $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\) # (!\inst69|lpm_mult_component|auto_generated|result\(10)))) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ & (!\inst69|lpm_mult_component|auto_generated|result\(10) & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst89|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	datab => \inst69|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X42_Y13_N4
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(11) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(11) & 
-- ((\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\))))
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(11) & ((!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (!\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(11) & (!\inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(11),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X42_Y13_N6
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(12) $ (\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # 
-- (GND)
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(12) & (\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\ & !\inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(12) & ((\inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(12),
	datab => \inst89|LPM_ADD_SUB_component|auto_generated|result[12]~24_combout\,
	datad => VCC,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X42_Y13_N16
\inst61|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = \inst69|lpm_mult_component|auto_generated|result\(17) $ (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~33\ $ (!\inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst69|lpm_mult_component|auto_generated|result\(17),
	datad => \inst89|LPM_ADD_SUB_component|auto_generated|result[17]~34_combout\,
	cin => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X44_Y12_N14
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst28|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X44_Y12_N15
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X44_Y12_N18
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X44_Y12_N19
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X44_Y12_N20
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X44_Y12_N22
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X44_Y12_N23
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X44_Y12_N24
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X44_Y12_N26
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X44_Y12_N27
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X44_Y12_N28
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X44_Y12_N29
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X44_Y12_N30
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X44_Y12_N31
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X44_Y11_N0
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X44_Y11_N1
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X44_Y11_N2
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X44_Y11_N3
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X44_Y11_N4
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X44_Y11_N5
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X44_Y11_N8
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X44_Y11_N9
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X44_Y11_N10
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X44_Y11_N12
\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X44_Y11_N15
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCFF_X44_Y11_N13
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X44_Y11_N11
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X44_Y12_N25
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X44_Y12_N21
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X43_Y12_N14
\inst11|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst28|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X43_Y12_N16
\inst11|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\))) 
-- # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X43_Y12_N18
\inst11|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2)))) 
-- # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X43_Y12_N20
\inst11|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X43_Y12_N22
\inst11|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4)))) 
-- # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X43_Y12_N24
\inst11|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X43_Y12_N26
\inst11|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & !\inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X43_Y12_N28
\inst11|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X43_Y12_N30
\inst11|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8)))) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X43_Y11_N0
\inst11|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X43_Y11_N2
\inst11|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & !\inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X43_Y11_N4
\inst11|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\))) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & 
-- !\inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X43_Y11_N6
\inst11|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & !\inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X43_Y11_N8
\inst11|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X43_Y11_N10
\inst11|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14)))) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X43_Y11_N12
\inst11|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\)) # 
-- (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X43_Y11_N14
\inst11|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16)))) # (!\inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X43_Y11_N16
\inst11|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(17) & (\inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ & \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\) # (\inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst61|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X42_Y12_N4
\inst70|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\inst2~0_combout\) # ((\inst26~combout\) # ((!\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & \inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~0_combout\,
	datab => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datac => \inst6~0_combout\,
	datad => \inst26~combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X42_Y15_N26
\inst70|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ & ((\inst33|LPM_COMPARE_component|auto_generated|op_1~34_combout\) # 
-- ((\inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\)))) # (!\inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ & (((\inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\ & 
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|LPM_MUX_component|auto_generated|result_node[0]~9_combout\,
	datab => \inst33|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	datac => \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	datad => \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X37_Y14_N16
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(1) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(1) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst69|lpm_mult_component|auto_generated|result\(1) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst69|lpm_mult_component|auto_generated|result\(1)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst69|lpm_mult_component|auto_generated|result\(1),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X37_Y14_N22
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst69|lpm_mult_component|auto_generated|result\(4) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\) # (!\inst69|lpm_mult_component|auto_generated|result\(4)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst69|lpm_mult_component|auto_generated|result\(4) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst69|lpm_mult_component|auto_generated|result\(4),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X37_Y14_N24
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(5) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5)))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(5),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X37_Y14_N26
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(6) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(6) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(6) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(6),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X37_Y14_N28
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(7) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst69|lpm_mult_component|auto_generated|result\(7) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst69|lpm_mult_component|auto_generated|result\(7),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X37_Y14_N30
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(8) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(8) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(8) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(8),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X37_Y13_N2
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(10) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(10) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(10) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(10),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X37_Y13_N6
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) $ (\inst69|lpm_mult_component|auto_generated|result\(12) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\) # (!\inst69|lpm_mult_component|auto_generated|result\(12)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst69|lpm_mult_component|auto_generated|result\(12) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst69|lpm_mult_component|auto_generated|result\(12),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X37_Y13_N8
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst69|lpm_mult_component|auto_generated|result\(13) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(13) & (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst69|lpm_mult_component|auto_generated|result\(13) & 
-- ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(13) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (\inst69|lpm_mult_component|auto_generated|result\(13) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst69|lpm_mult_component|auto_generated|result\(13)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst69|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X37_Y13_N10
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) $ (\inst69|lpm_mult_component|auto_generated|result\(14) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\) # (!\inst69|lpm_mult_component|auto_generated|result\(14)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst69|lpm_mult_component|auto_generated|result\(14) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst69|lpm_mult_component|auto_generated|result\(14),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X37_Y13_N12
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(15) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (GND))))) # (!\inst69|lpm_mult_component|auto_generated|result\(15) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & 
-- (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\ & VCC)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\))))
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(15) & ((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15)))) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(15) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(15),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~29\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	cout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X37_Y13_N16
\inst53|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst53|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = \inst69|lpm_mult_component|auto_generated|result\(17) $ (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~33\ $ (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst69|lpm_mult_component|auto_generated|result\(17),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X36_Y12_N16
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = \inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY(\inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y12_N22
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\ & VCC)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X36_Y12_N24
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\ $ (GND))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\ & VCC))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X36_Y12_N26
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & !\inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X36_Y11_N0
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((GND) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # 
-- (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\ $ (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X36_Y11_N6
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & 
-- ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND)))
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (!\inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X36_Y11_N16
\inst65|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst65|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = \inst53|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ $ (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst53|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cin => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X37_Y12_N18
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(2) $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\) # (!\inst88|lpm_mult_component|auto_generated|result\(2)))) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(2) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(2),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X37_Y12_N22
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(4) $ (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(4) & (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(4) & ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(4),
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X37_Y12_N28
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(7) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(7) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)))) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(7) & 
-- ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(7) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(7) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(7)) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(7),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X37_Y11_N4
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(11) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(11) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC)))) # (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(11) & 
-- ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(11) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\))))
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(11) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(11)) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(11),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X37_Y11_N10
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = ((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(14) $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\)))) # (GND)
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\) # (!\inst88|lpm_mult_component|auto_generated|result\(14)))) # 
-- (!\inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(14) & !\inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(14),
	datad => VCC,
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X37_Y11_N16
\inst91|LPM_ADD_SUB_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ = \inst65|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ $ (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~33\ $ (!\inst88|lpm_mult_component|auto_generated|result\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst65|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datad => \inst88|lpm_mult_component|auto_generated|result\(17),
	cin => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~33\,
	combout => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X42_Y12_N14
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst27|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst27|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X42_Y12_N15
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X42_Y12_N16
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X42_Y12_N18
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X42_Y12_N19
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X42_Y12_N20
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X42_Y12_N22
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X42_Y12_N23
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X42_Y12_N24
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X42_Y12_N26
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X42_Y12_N27
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X42_Y12_N28
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X42_Y12_N29
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X42_Y12_N30
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X42_Y12_N31
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X42_Y11_N0
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X42_Y11_N1
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X42_Y11_N2
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X42_Y11_N3
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X42_Y11_N4
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X42_Y11_N5
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X42_Y11_N6
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X42_Y11_N8
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X42_Y11_N9
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X42_Y11_N12
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X42_Y11_N14
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X42_Y11_N15
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X42_Y11_N16
\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst27|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X42_Y11_N17
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X42_Y11_N13
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X42_Y11_N7
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X42_Y12_N25
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X42_Y12_N21
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X42_Y12_N17
\inst27|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst27|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X38_Y12_N14
\inst18|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst27|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X38_Y12_N16
\inst18|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X38_Y12_N18
\inst18|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & !\inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X38_Y12_N20
\inst18|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X38_Y12_N22
\inst18|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & !\inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X38_Y12_N24
\inst18|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(5)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X38_Y12_N26
\inst18|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(6)))) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X38_Y12_N28
\inst18|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\))) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & 
-- !\inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X38_Y12_N30
\inst18|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(8)))) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X38_Y11_N0
\inst18|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X38_Y11_N2
\inst18|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(10)))) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X38_Y11_N4
\inst18|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\))) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & 
-- !\inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X38_Y11_N6
\inst18|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(12)))) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X38_Y11_N8
\inst18|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X38_Y11_N10
\inst18|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & !\inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\)) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X38_Y11_N12
\inst18|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst27|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\)) # 
-- (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((\inst27|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X38_Y11_N14
\inst18|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & ((!\inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\) # 
-- (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(16)))) # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datab => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X38_Y11_N16
\inst18|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ & ((\inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\) # (!\inst27|LPM_COUNTER_component|auto_generated|safe_q\(17)))) 
-- # (!\inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\ & (\inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\ & !\inst27|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst91|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	datad => \inst27|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst18|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst18|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X45_Y12_N14
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst25|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst25|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X45_Y12_N15
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X45_Y12_N16
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X45_Y12_N18
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X45_Y12_N19
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X45_Y12_N20
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X45_Y12_N22
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X45_Y12_N23
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X45_Y12_N24
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X45_Y12_N26
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X45_Y12_N27
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X45_Y12_N28
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X45_Y12_N29
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X45_Y12_N30
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X45_Y12_N31
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X45_Y11_N0
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X45_Y11_N1
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X45_Y11_N2
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X45_Y11_N3
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X45_Y11_N4
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X45_Y11_N5
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X45_Y11_N8
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X45_Y11_N9
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X45_Y11_N10
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X45_Y11_N12
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X45_Y11_N14
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X45_Y11_N15
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X45_Y11_N16
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X45_Y11_N17
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCCOMB_X43_Y14_N18
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X43_Y14_N22
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X43_Y14_N26
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~9\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X43_Y14_N28
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((GND) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\ $ (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X43_Y13_N4
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & ((GND) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\))) # 
-- (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\ $ (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X43_Y13_N6
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & 
-- ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (GND)))
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\) # (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X43_Y13_N16
\inst90|LPM_ADD_SUB_component|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ = \inst90|LPM_ADD_SUB_component|auto_generated|op_1~31\ $ (!\inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~34_combout\,
	cin => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~31\,
	combout => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\);

-- Location: LCFF_X45_Y11_N13
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X45_Y11_N11
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X45_Y12_N25
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X45_Y12_N21
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X45_Y12_N17
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X44_Y14_N14
\inst19|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((\inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & !\inst25|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst66|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X44_Y14_N16
\inst19|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X44_Y14_N18
\inst19|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X44_Y14_N20
\inst19|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(3)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X44_Y14_N22
\inst19|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X44_Y14_N24
\inst19|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X44_Y14_N26
\inst19|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & !\inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X44_Y14_N28
\inst19|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\))) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & 
-- !\inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X44_Y14_N30
\inst19|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8)))) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X44_Y13_N0
\inst19|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X44_Y13_N2
\inst19|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10)))) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X44_Y13_N4
\inst19|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\))) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & 
-- !\inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X44_Y13_N6
\inst19|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & !\inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X44_Y13_N8
\inst19|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X44_Y13_N10
\inst19|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14)))) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X44_Y13_N12
\inst19|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\)) # 
-- (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X44_Y13_N14
\inst19|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((!\inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16)))) # (!\inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X44_Y13_N16
\inst19|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst19|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(17) & (\inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\ & \inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\) # (\inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst90|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	cin => \inst19|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst19|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X42_Y12_N2
\inst70|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & (\inst18|LPM_COMPARE_component|auto_generated|op_1~34_combout\)) # 
-- (!\inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & ((\inst19|LPM_COMPARE_component|auto_generated|op_1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst70|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst18|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	datad => \inst19|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X42_Y12_N8
\inst48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = ((\inst1~0_combout\ & ((\inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\))) # (!\inst1~0_combout\ & (!\inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\))) # (!\inst17~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~0_combout\,
	datab => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	datac => \inst17~regout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	combout => \inst48~0_combout\);

-- Location: LCCOMB_X42_Y16_N14
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst37|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst37|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCFF_X42_Y16_N15
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X42_Y16_N16
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X42_Y16_N18
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X42_Y16_N19
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X42_Y16_N22
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X42_Y16_N23
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X42_Y16_N24
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X42_Y16_N26
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X42_Y16_N27
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X42_Y16_N28
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X42_Y16_N29
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X42_Y16_N30
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X42_Y16_N31
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X42_Y15_N0
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X42_Y15_N1
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X42_Y15_N2
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X42_Y15_N3
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X42_Y15_N4
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X42_Y15_N5
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X42_Y15_N6
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X42_Y15_N8
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X42_Y15_N9
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X42_Y15_N14
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X42_Y15_N15
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X42_Y15_N16
\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = \inst37|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (\inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\);

-- Location: LCFF_X42_Y15_N17
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCCOMB_X38_Y14_N14
\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst69|lpm_mult_component|auto_generated|result\(0) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC))) # (!\inst69|lpm_mult_component|auto_generated|result\(0) & 
-- ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (GND)))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0)) # (!\inst69|lpm_mult_component|auto_generated|result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(0),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X38_Y14_N18
\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(2) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(2) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(2) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(2),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X38_Y14_N20
\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(3) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(3) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & (\inst69|lpm_mult_component|auto_generated|result\(3) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst69|lpm_mult_component|auto_generated|result\(3)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst69|lpm_mult_component|auto_generated|result\(3),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X38_Y14_N22
\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = ((\inst69|lpm_mult_component|auto_generated|result\(4) $ (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\)))) # (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\ = CARRY((\inst69|lpm_mult_component|auto_generated|result\(4) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(4) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst69|lpm_mult_component|auto_generated|result\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~9\);

-- Location: LCCOMB_X38_Y14_N26
\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) $ (\inst69|lpm_mult_component|auto_generated|result\(6) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))) # (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((!\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\) # (!\inst69|lpm_mult_component|auto_generated|result\(6)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst69|lpm_mult_component|auto_generated|result\(6) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst69|lpm_mult_component|auto_generated|result\(6),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[5]~11\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\);

-- Location: LCCOMB_X38_Y14_N28
\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # 
-- (!\inst69|lpm_mult_component|auto_generated|result\(7) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\ & VCC)))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\) # (GND))) # (!\inst69|lpm_mult_component|auto_generated|result\(7) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\))))
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst69|lpm_mult_component|auto_generated|result\(7) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst69|lpm_mult_component|auto_generated|result\(7)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst69|lpm_mult_component|auto_generated|result\(7),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~13\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\);

-- Location: LCCOMB_X38_Y14_N30
\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ = ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) $ (\inst69|lpm_mult_component|auto_generated|result\(8) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))) # (GND)
-- \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & ((!\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\) # (!\inst69|lpm_mult_component|auto_generated|result\(8)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst69|lpm_mult_component|auto_generated|result\(8) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst69|lpm_mult_component|auto_generated|result\(8),
	datad => VCC,
	cin => \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~15\,
	combout => \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	cout => \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~17\);

-- Location: LCCOMB_X38_Y16_N14
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(0) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ & VCC)) # (!\inst88|lpm_mult_component|auto_generated|result\(0) & 
-- (\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ $ (GND)))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\ = CARRY((!\inst88|lpm_mult_component|auto_generated|result\(0) & !\inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(0),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	datad => VCC,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X38_Y16_N16
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(1) & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND))) 
-- # (!\inst88|lpm_mult_component|auto_generated|result\(1) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\)))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(1) & 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst88|lpm_mult_component|auto_generated|result\(1) & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(1)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\))) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(1) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(1),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X38_Y16_N20
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(3) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND))) 
-- # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(3) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\ & 
-- VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(3) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(3) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(3),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X38_Y16_N22
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(4) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\)))) # (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(4) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(4) & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(4),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~7\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X38_Y16_N26
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(6) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(6) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(6) & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(6),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[6]~12_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~11\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X38_Y16_N28
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\) # 
-- (GND))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(7) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & 
-- (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(7) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(7) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(7),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[7]~14_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X38_Y16_N30
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = ((\inst88|lpm_mult_component|auto_generated|result\(8) $ (\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(8) & (!\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\)) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(8) & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(8),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[8]~16_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X38_Y15_N0
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ = (\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\) # 
-- (GND))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\)))) # (!\inst88|lpm_mult_component|auto_generated|result\(9) & 
-- ((\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\)) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & 
-- (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\ = CARRY((\inst88|lpm_mult_component|auto_generated|result\(9) & ((\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\))) # 
-- (!\inst88|lpm_mult_component|auto_generated|result\(9) & (\inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\ & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst88|lpm_mult_component|auto_generated|result\(9),
	datab => \inst67|LPM_ADD_SUB_component|auto_generated|result[9]~18_combout\,
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~17\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X38_Y15_N2
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ = ((\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ $ (\inst88|lpm_mult_component|auto_generated|result\(10) $ (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\)))) # 
-- (GND)
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ & (!\inst88|lpm_mult_component|auto_generated|result\(10) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\)) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\ & ((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\) # (!\inst88|lpm_mult_component|auto_generated|result\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[10]~20_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(10),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~19\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X38_Y15_N4
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ = (\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(11) & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\) # 
-- (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(11) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\)))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & 
-- ((\inst88|lpm_mult_component|auto_generated|result\(11) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\)) # (!\inst88|lpm_mult_component|auto_generated|result\(11) & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(11)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\))) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(11) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[11]~22_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(11),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~21\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X38_Y15_N8
\inst56|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(13) & ((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\) # 
-- (GND))) # (!\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\)))) # (!\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & 
-- ((\inst88|lpm_mult_component|auto_generated|result\(13) & (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst88|lpm_mult_component|auto_generated|result\(13) & (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\ & VCC))))
-- \inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & ((\inst88|lpm_mult_component|auto_generated|result\(13)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\))) # 
-- (!\inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\ & (\inst88|lpm_mult_component|auto_generated|result\(13) & !\inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst67|LPM_ADD_SUB_component|auto_generated|result[13]~26_combout\,
	datab => \inst88|lpm_mult_component|auto_generated|result\(13),
	datad => VCC,
	cin => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X44_Y16_N18
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & 
-- ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\ = CARRY((!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~1\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X44_Y16_N20
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\ $ (GND))) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ 
-- & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\ & VCC))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~3\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X44_Y16_N22
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & 
-- ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\ = CARRY((!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~5\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X44_Y16_N30
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\ & VCC)) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\ = CARRY((!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & !\inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~13\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X44_Y15_N0
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((GND) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\ $ (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~15\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X44_Y15_N8
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & ((GND) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\ $ (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~23\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X44_Y15_N10
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\)) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & 
-- ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\ = CARRY((!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\) # (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~25\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X44_Y15_N12
\inst93|LPM_ADD_SUB_component|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ = (\inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & ((GND) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\))) # 
-- (!\inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\ $ (GND)))
-- \inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\ = CARRY((\inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~27\,
	combout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	cout => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~29\);

-- Location: LCFF_X42_Y15_N7
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X42_Y16_N25
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X42_Y16_N17
\inst37|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst37|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X43_Y16_N14
\inst36|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(0) & \inst56|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst56|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datad => VCC,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X43_Y16_N16
\inst36|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\)) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\ & ((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~0_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X43_Y16_N18
\inst36|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X43_Y16_N20
\inst36|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\))) 
-- # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X43_Y16_N22
\inst36|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X43_Y16_N24
\inst36|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\)) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\ & ((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(5)) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~8_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X43_Y16_N26
\inst36|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(6)))) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\ & (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~10_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X43_Y16_N28
\inst36|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(7) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\)) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\ & ((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~12_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X43_Y16_N30
\inst36|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(8) & ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X43_Y15_N0
\inst36|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\))) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\ & 
-- !\inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X43_Y15_N2
\inst36|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(10)))) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\ & (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~18_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X43_Y15_N4
\inst36|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & (\inst37|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\)) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\ & ((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(11)) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~20_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X43_Y15_N6
\inst36|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(12)))) # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\ & (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~22_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X43_Y15_N8
\inst36|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\))) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\ & 
-- !\inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X43_Y15_N10
\inst36|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X43_Y15_N12
\inst36|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((!\inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\) # 
-- (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\))) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\ & 
-- !\inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X43_Y15_N14
\inst36|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst37|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\ & !\inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\)) # 
-- (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((\inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\) # (!\inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~30_combout\,
	datad => VCC,
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X43_Y15_N16
\inst36|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst36|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & ((\inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\) # (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(17)))) 
-- # (!\inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\ & (!\inst37|LPM_COUNTER_component|auto_generated|safe_q\(17) & \inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst93|LPM_ADD_SUB_component|auto_generated|op_1~32_combout\,
	datab => \inst37|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst36|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst36|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCCOMB_X42_Y12_N0
\inst70|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst36|LPM_COMPARE_component|auto_generated|op_1~34_combout\) # ((!\inst70|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ & 
-- ((\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\) # (!\inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	datab => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datac => \inst6~0_combout\,
	datad => \inst36|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X42_Y12_N6
\inst70|LPM_MUX_component|auto_generated|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst70|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ = (\inst48~0_combout\ & (\inst70|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ & ((\inst70|LPM_MUX_component|auto_generated|result_node[0]~7_combout\)))) # 
-- (!\inst48~0_combout\ & (((\inst70|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst70|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datab => \inst70|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datac => \inst48~0_combout\,
	datad => \inst70|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	combout => \inst70|LPM_MUX_component|auto_generated|result_node[0]~8_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_ligado~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_ligado);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luzEstado1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luzEstado1);

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luzEstado2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luzEstado2);

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luzEstado3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luzEstado3);

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luzEstado4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luzEstado4);

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\luzEstado5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_luzEstado5);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst70|LPM_MUX_component|auto_generated|result_node[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_pwm~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst70|LPM_MUX_component|auto_generated|result_node[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_pwm);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\gnd~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_gnd\);
END structure;


