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

-- DATE "06/21/2017 16:42:19"

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
SIGNAL ww_led_pwm : std_logic;
SIGNAL \ww_gnd\ : std_logic;
SIGNAL \inst10~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
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
SIGNAL \inst21~1_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
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
SIGNAL \~GND~combout\ : std_logic;
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
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst21~2_combout\ : std_logic;
SIGNAL \inst21~3_combout\ : std_logic;
SIGNAL \inst21~4_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst7|LPM_COMPARE_component|auto_generated|aleb~6_combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
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
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
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
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
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
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst32|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \inst25|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst28|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(17 DOWNTO 0);

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
led_pwm <= ww_led_pwm;
\gnd\ <= \ww_gnd\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst10~regout\);

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

-- Location: LCFF_X61_Y2_N7
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X61_Y3_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCFF_X63_Y3_N11
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X63_Y4_N25
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X63_Y4_N21
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X62_Y3_N13
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X62_Y3_N7
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCCOMB_X61_Y3_N16
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

-- Location: LCCOMB_X61_Y2_N6
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X63_Y4_N20
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

-- Location: LCCOMB_X63_Y4_N24
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

-- Location: LCCOMB_X63_Y3_N10
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

-- Location: LCFF_X62_Y4_N21
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X62_Y4_N17
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X62_Y4_N16
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

-- Location: LCCOMB_X62_Y4_N20
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

-- Location: LCCOMB_X62_Y3_N6
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

-- Location: LCCOMB_X62_Y3_N12
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

-- Location: LCFF_X34_Y3_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCFF_X34_Y3_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCFF_X34_Y3_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X34_Y3_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X34_Y3_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCFF_X34_Y4_N31
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCFF_X34_Y4_N29
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCFF_X34_Y3_N1
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCFF_X34_Y3_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X34_Y3_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCFF_X34_Y3_N3
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCFF_X34_Y4_N23
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCFF_X34_Y4_N21
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X34_Y4_N25
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCFF_X34_Y4_N27
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCFF_X34_Y4_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X34_Y4_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCFF_X34_Y4_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	sload => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X34_Y4_N14
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

-- Location: LCCOMB_X34_Y4_N16
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

-- Location: LCCOMB_X34_Y4_N18
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

-- Location: LCCOMB_X34_Y4_N20
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

-- Location: LCCOMB_X34_Y4_N22
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

-- Location: LCCOMB_X34_Y4_N24
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

-- Location: LCCOMB_X34_Y4_N26
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

-- Location: LCCOMB_X34_Y4_N28
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

-- Location: LCCOMB_X34_Y4_N30
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

-- Location: LCCOMB_X34_Y3_N0
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

-- Location: LCCOMB_X34_Y3_N2
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

-- Location: LCCOMB_X34_Y3_N4
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

-- Location: LCCOMB_X34_Y3_N6
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

-- Location: LCCOMB_X34_Y3_N8
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

-- Location: LCCOMB_X34_Y3_N10
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

-- Location: LCCOMB_X34_Y3_N12
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

-- Location: LCCOMB_X34_Y3_N14
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

-- Location: LCCOMB_X34_Y3_N16
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

-- Location: LCCOMB_X34_Y3_N18
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

-- Location: LCCOMB_X64_Y3_N26
\inst21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst21~1_combout\);

-- Location: LCCOMB_X62_Y3_N24
\inst8|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X64_Y4_N12
\inst22|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X64_Y4_N6
\inst22|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (\inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # ((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCFF_X34_Y3_N23
inst10 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10~regout\);

-- Location: LCCOMB_X35_Y3_N0
\inst3|LPM_COMPARE_component|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(15)) # ((\inst|LPM_COUNTER_component|auto_generated|safe_q\(17)) # (\inst|LPM_COUNTER_component|auto_generated|safe_q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16),
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X35_Y3_N10
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

-- Location: LCCOMB_X34_Y4_N4
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

-- Location: LCCOMB_X34_Y4_N10
\inst3|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\ = (\inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\ & (((\inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(7))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \inst3|LPM_COMPARE_component|auto_generated|op_1~2_combout\,
	datad => \inst3|LPM_COMPARE_component|auto_generated|op_1~1_combout\,
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X34_Y3_N22
\inst3|LPM_COMPARE_component|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\ = (!\inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & (((\inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst3|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst3|LPM_COMPARE_component|auto_generated|op_1~3_combout\,
	combout => \inst3|LPM_COMPARE_component|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X34_Y4_N12
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & \inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X34_Y3_N24
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(15) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(10) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(11) 
-- & !\inst|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(12),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X34_Y3_N30
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(13) & 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(16) & \inst|LPM_COUNTER_component|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X34_Y3_N28
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(8) & 
-- \inst|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X34_Y4_N6
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

-- Location: LCCOMB_X34_Y3_N26
\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\ = (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\ & (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\ & 
-- (\inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\ & \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~1_combout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~2_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~4_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~3_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|cmpr2|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X34_Y3_N20
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

-- Location: LCCOMB_X34_Y4_N0
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

-- Location: CLKCTRL_G14
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

-- Location: LCFF_X62_Y3_N31
inst17 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \ligar_chave~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst17~regout\);

-- Location: LCCOMB_X61_Y3_N14
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

-- Location: LCFF_X61_Y3_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X61_Y3_N18
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

-- Location: LCFF_X61_Y3_N19
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X61_Y3_N20
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

-- Location: LCCOMB_X61_Y3_N22
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

-- Location: LCFF_X61_Y3_N23
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X61_Y3_N24
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

-- Location: LCCOMB_X61_Y3_N26
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

-- Location: LCFF_X61_Y3_N27
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X61_Y3_N28
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

-- Location: LCFF_X61_Y3_N29
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X61_Y3_N30
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

-- Location: LCFF_X61_Y3_N31
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X61_Y2_N0
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

-- Location: LCFF_X61_Y2_N1
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X61_Y2_N2
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

-- Location: LCFF_X61_Y2_N3
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X61_Y2_N4
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

-- Location: LCFF_X61_Y2_N5
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X61_Y2_N8
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

-- Location: LCFF_X61_Y2_N9
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X61_Y2_N10
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

-- Location: LCCOMB_X61_Y2_N12
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

-- Location: LCCOMB_X61_Y2_N14
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

-- Location: LCFF_X61_Y2_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X61_Y2_N16
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

-- Location: LCFF_X61_Y2_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X61_Y3_N25
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X61_Y3_N8
\inst21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst21~0_combout\);

-- Location: LCFF_X61_Y2_N13
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X61_Y2_N11
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X64_Y3_N24
\inst21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~2_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst21~2_combout\);

-- Location: LCCOMB_X63_Y3_N26
\inst21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~3_combout\ = (\inst21~1_combout\) # ((\inst21~0_combout\) # ((\inst21~2_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21~1_combout\,
	datab => \inst21~0_combout\,
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => \inst21~2_combout\,
	combout => \inst21~3_combout\);

-- Location: LCCOMB_X62_Y2_N0
\inst21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21~4_combout\ = (\inst17~regout\ & (((\inst21~3_combout\ & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17~regout\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst21~3_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	combout => \inst21~4_combout\);

-- Location: LCCOMB_X61_Y2_N30
\inst7|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCFF_X61_Y3_N21
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst10~clkctrl_outclk\,
	datain => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X61_Y3_N4
\inst9|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X61_Y3_N10
\inst7|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X61_Y3_N6
\inst7|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\ & (((\inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X61_Y2_N28
\inst7|LPM_COMPARE_component|auto_generated|aleb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X61_Y2_N22
\inst7|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (((\inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X62_Y3_N30
inst26 : cycloneii_lcell_comb
-- Equation(s):
-- \inst26~combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ & (\inst17~regout\ & ((\inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # (\inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datab => \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datac => \inst17~regout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	combout => \inst26~combout\);

-- Location: LCCOMB_X61_Y2_N20
\inst7|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X61_Y3_N0
\inst8|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (((\inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\ & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X61_Y2_N26
\inst8|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X61_Y2_N24
\inst8|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (((\inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst8|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X62_Y3_N26
\inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & ((\inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\) # ((\inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\ & 
-- \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datab => \inst7|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datac => \inst8|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datad => \inst8|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X62_Y3_N28
\inst7|LPM_COMPARE_component|auto_generated|aleb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LPM_COMPARE_component|auto_generated|aleb~6_combout\ = (\inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\ & ((\inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # (\inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datac => \inst7|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	combout => \inst7|LPM_COMPARE_component|auto_generated|aleb~6_combout\);

-- Location: LCCOMB_X62_Y3_N22
\inst1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = (\inst1~0_combout\ & (\inst17~regout\ & !\inst7|LPM_COMPARE_component|auto_generated|aleb~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~0_combout\,
	datac => \inst17~regout\,
	datad => \inst7|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	combout => \inst1~1_combout\);

-- Location: LCCOMB_X64_Y3_N30
\inst9|LPM_COMPARE_component|auto_generated|aleb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\ = (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X64_Y4_N0
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

-- Location: LCCOMB_X64_Y4_N10
\inst9|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (\inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\) # ((\inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\ & ((\inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst9|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~2_combout\,
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X61_Y3_N2
\inst9|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X61_Y2_N18
\inst9|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = ((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((\inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\) # (\inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst9|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \inst9|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X62_Y2_N16
\inst9|LPM_COMPARE_component|auto_generated|aleb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & (((\inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\ & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst9|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	combout => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\);

-- Location: LCCOMB_X62_Y2_N10
\inst2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\ & (\inst17~regout\ & !\inst1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_COMPARE_component|auto_generated|aleb~6_combout\,
	datac => \inst17~regout\,
	datad => \inst1~0_combout\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X64_Y3_N20
\inst22|LPM_COMPARE_component|auto_generated|aleb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X64_Y3_N28
\inst22|LPM_COMPARE_component|auto_generated|aleb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & (((!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X64_Y3_N22
\inst22|LPM_COMPARE_component|auto_generated|aleb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\ = (((\inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14))) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~0_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X64_Y3_N18
\inst22|LPM_COMPARE_component|auto_generated|aleb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\) # ((\inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\ & 
-- \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|LPM_COMPARE_component|auto_generated|aleb~3_combout\,
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \inst22|LPM_COMPARE_component|auto_generated|aleb~4_combout\,
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~1_combout\,
	combout => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X62_Y2_N12
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

-- Location: LCCOMB_X62_Y2_N26
\inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\inst21~4_combout\ & !\inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21~4_combout\,
	datad => \inst22|LPM_COMPARE_component|auto_generated|aleb~5_combout\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X62_Y4_N14
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

-- Location: LCFF_X62_Y4_N15
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X62_Y4_N18
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

-- Location: LCFF_X62_Y4_N19
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X62_Y4_N22
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

-- Location: LCFF_X62_Y4_N23
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X62_Y4_N24
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

-- Location: LCCOMB_X62_Y4_N26
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

-- Location: LCFF_X62_Y4_N27
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X62_Y4_N28
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

-- Location: LCFF_X62_Y4_N29
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X62_Y4_N30
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

-- Location: LCFF_X62_Y4_N31
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X62_Y3_N0
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

-- Location: LCFF_X62_Y3_N1
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X62_Y3_N2
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

-- Location: LCFF_X62_Y3_N3
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X62_Y3_N4
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

-- Location: LCFF_X62_Y3_N5
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X62_Y3_N8
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

-- Location: LCFF_X62_Y3_N9
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X62_Y3_N10
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

-- Location: LCCOMB_X62_Y3_N14
\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & (!\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCFF_X62_Y3_N15
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X62_Y3_N16
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

-- Location: LCFF_X62_Y3_N17
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCCOMB_X63_Y3_N24
\inst32|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst25|LPM_COUNTER_component|auto_generated|safe_q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(17),
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X63_Y4_N14
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

-- Location: LCFF_X63_Y4_N15
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X63_Y4_N16
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

-- Location: LCCOMB_X63_Y4_N18
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

-- Location: LCFF_X63_Y4_N19
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X63_Y4_N22
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

-- Location: LCFF_X63_Y4_N23
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X63_Y4_N26
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

-- Location: LCFF_X63_Y4_N27
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X63_Y4_N28
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

-- Location: LCFF_X63_Y4_N29
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X63_Y4_N30
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

-- Location: LCFF_X63_Y4_N31
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(8));

-- Location: LCCOMB_X63_Y3_N0
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

-- Location: LCFF_X63_Y3_N1
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(9));

-- Location: LCCOMB_X63_Y3_N2
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

-- Location: LCFF_X63_Y3_N3
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(10));

-- Location: LCCOMB_X63_Y3_N4
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

-- Location: LCFF_X63_Y3_N5
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(11));

-- Location: LCCOMB_X63_Y3_N6
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

-- Location: LCCOMB_X63_Y3_N8
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

-- Location: LCFF_X63_Y3_N9
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(13));

-- Location: LCCOMB_X63_Y3_N12
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

-- Location: LCCOMB_X63_Y3_N14
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

-- Location: LCFF_X63_Y3_N15
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(16));

-- Location: LCCOMB_X63_Y3_N16
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

-- Location: LCFF_X63_Y3_N17
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17));

-- Location: LCFF_X63_Y3_N13
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(15));

-- Location: LCFF_X63_Y3_N7
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(12));

-- Location: LCFF_X63_Y4_N17
\inst28|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst28|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	ena => \inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X64_Y4_N14
\inst11|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(0) & \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X64_Y4_N16
\inst11|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X64_Y4_N18
\inst11|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X64_Y4_N20
\inst11|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(3) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X64_Y4_N22
\inst11|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X64_Y4_N24
\inst11|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5)))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(5) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X64_Y4_N26
\inst11|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X64_Y4_N28
\inst11|LPM_COMPARE_component|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(7) & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(7)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\);

-- Location: LCCOMB_X64_Y4_N30
\inst11|LPM_COMPARE_component|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(8) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(8)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~15_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\);

-- Location: LCCOMB_X64_Y3_N0
\inst11|LPM_COMPARE_component|auto_generated|op_1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(9)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~17_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\);

-- Location: LCCOMB_X64_Y3_N2
\inst11|LPM_COMPARE_component|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(10) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(10)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~19_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\);

-- Location: LCCOMB_X64_Y3_N4
\inst11|LPM_COMPARE_component|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11)))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(11) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(11) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~21_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\);

-- Location: LCCOMB_X64_Y3_N6
\inst11|LPM_COMPARE_component|auto_generated|op_1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(12) & (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(12) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~23_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\);

-- Location: LCCOMB_X64_Y3_N8
\inst11|LPM_COMPARE_component|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13) & ((!\inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\) # (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13)))) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(13) & (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~25_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\);

-- Location: LCCOMB_X64_Y3_N10
\inst11|LPM_COMPARE_component|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(14)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~27_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\);

-- Location: LCCOMB_X64_Y3_N12
\inst11|LPM_COMPARE_component|auto_generated|op_1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & (\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(15) & ((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~29_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\);

-- Location: LCCOMB_X64_Y3_N14
\inst11|LPM_COMPARE_component|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\ = CARRY((\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16) & !\inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\)) # 
-- (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((\inst4|LPM_COUNTER_component|auto_generated|safe_q\(16)) # (!\inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~31_cout\,
	cout => \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\);

-- Location: LCCOMB_X64_Y3_N16
\inst11|LPM_COMPARE_component|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & ((\inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\) # (!\inst28|LPM_COUNTER_component|auto_generated|safe_q\(17)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|safe_q\(17) & (\inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\ & !\inst28|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datad => \inst28|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cin => \inst11|LPM_COMPARE_component|auto_generated|op_1~33_cout\,
	combout => \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\);

-- Location: LCFF_X62_Y4_N25
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X62_Y4_N0
\inst32|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (((!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(6)) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(5))) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(4))) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(6),
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X62_Y4_N10
\inst32|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(9) & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(8)) # 
-- (!\inst32|LPM_MUX_component|auto_generated|result_node[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datad => \inst32|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X62_Y3_N20
\inst32|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\inst25|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(10)) # ((\inst25|LPM_COUNTER_component|auto_generated|safe_q\(11)) # 
-- (\inst32|LPM_MUX_component|auto_generated|result_node[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datad => \inst32|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCFF_X62_Y3_N11
\inst25|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \inst25|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	ena => \inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(14));

-- Location: LCCOMB_X62_Y3_N18
\inst32|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (((!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(13) & !\inst32|LPM_MUX_component|auto_generated|result_node[0]~2_combout\)) # 
-- (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(14))) # (!\inst25|LPM_COUNTER_component|auto_generated|safe_q\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datab => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datac => \inst32|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datad => \inst25|LPM_COUNTER_component|auto_generated|safe_q\(14),
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X63_Y3_N22
\inst32|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst32|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\inst26~combout\ & (((\inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\)))) # (!\inst26~combout\ & (\inst32|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ & 
-- ((\inst32|LPM_MUX_component|auto_generated|result_node[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26~combout\,
	datab => \inst32|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
	datad => \inst32|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	combout => \inst32|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

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
	datain => \inst21~4_combout\,
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
	datain => \inst6~0_combout\,
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
	datain => \inst32|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
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
	datain => \inst11|LPM_COMPARE_component|auto_generated|op_1~34_combout\,
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


