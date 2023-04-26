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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/26/2023 11:40:42"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clock_50 : IN std_logic;
	key_n : IN std_logic;
	uart_rxd : IN std_logic;
	uart_txd : OUT std_logic;
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic_vector(1 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- uart_txd	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- uart_rxd	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key_n : std_logic;
SIGNAL ww_uart_rxd : std_logic;
SIGNAL ww_uart_txd : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_LED_Blink|counter_500ms[1]~27_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[2]~29_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[3]~31_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[4]~33_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[8]~41_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[18]~61_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[22]~69_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[23]~72\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[24]~73_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \uart_rxd~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \key_n~combout\ : std_logic;
SIGNAL \reset_n_r~feeder_combout\ : std_logic;
SIGNAL \reset_n_r~regout\ : std_logic;
SIGNAL \reset_n_2r~feeder_combout\ : std_logic;
SIGNAL \reset_n_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~8_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~14\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[11]~36\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~2_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~37_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~16\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~18\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~20\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~22\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~24\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~26\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~28\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~30\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[9]~32\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[10]~34\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[11]~35_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~3_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector26~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[11]~36\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~4_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[10]~37_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~20\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~22\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~24\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~26\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~28\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~30\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[9]~32\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[10]~34\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[11]~35_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[5]~10_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~1_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data_valid~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[0]~25_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[0]~26\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[1]~28\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[2]~30\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[3]~32\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[4]~34\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[5]~35_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[5]~36\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[6]~38\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[7]~39_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[7]~40\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[8]~42\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[9]~43_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[9]~44\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[10]~45_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[10]~46\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[11]~48\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[12]~49_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[12]~50\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[13]~51_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[13]~52\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[14]~53_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[14]~54\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[15]~55_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[15]~56\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[16]~57_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[16]~58\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[17]~60\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[18]~62\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[19]~64\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[20]~66\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[21]~67_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[21]~68\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[22]~70\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[23]~71_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[20]~65_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[19]~63_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[17]~59_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~4_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~5_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[6]~37_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~2_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~0_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[11]~47_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~1_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~3_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~6_combout\ : std_logic;
SIGNAL \i_LED_Blink|tick~regout\ : std_logic;
SIGNAL \i_LED_Blink|led~0_combout\ : std_logic;
SIGNAL \i_LED_Blink|led~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_error~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|tx_bit_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i_serial_uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i_serial_uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_LED_Blink|counter_500ms\ : std_logic_vector(24 DOWNTO 0);
SIGNAL seven_seg_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|ALT_INV_reset_2r~regout\ : std_logic;
SIGNAL \ALT_INV_reset_n_2r~regout\ : std_logic;
SIGNAL ALT_INV_seven_seg_vector : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
ww_uart_rxd <= uart_rxd;
uart_txd <= ww_uart_txd;
hex0 <= ww_hex0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\i_serial_uart|ALT_INV_reset_2r~regout\ <= NOT \i_serial_uart|reset_2r~regout\;
\ALT_INV_reset_n_2r~regout\ <= NOT \reset_n_2r~regout\;
ALT_INV_seven_seg_vector(6) <= NOT seven_seg_vector(6);
ALT_INV_seven_seg_vector(5) <= NOT seven_seg_vector(5);
ALT_INV_seven_seg_vector(4) <= NOT seven_seg_vector(4);
ALT_INV_seven_seg_vector(3) <= NOT seven_seg_vector(3);
ALT_INV_seven_seg_vector(2) <= NOT seven_seg_vector(2);
ALT_INV_seven_seg_vector(1) <= NOT seven_seg_vector(1);
ALT_INV_seven_seg_vector(0) <= NOT seven_seg_vector(0);

-- Location: LCFF_X27_Y14_N25
\i_LED_Blink|counter_500ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[8]~41_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(8));

-- Location: LCFF_X27_Y13_N13
\i_LED_Blink|counter_500ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[18]~61_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(18));

-- Location: LCFF_X27_Y13_N21
\i_LED_Blink|counter_500ms[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[22]~69_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(22));

-- Location: LCFF_X27_Y13_N25
\i_LED_Blink|counter_500ms[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[24]~73_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(24));

-- Location: LCFF_X32_Y16_N17
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~29_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCFF_X26_Y23_N13
\i_serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(3));

-- Location: LCFF_X26_Y23_N17
\i_serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[5]~23_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X27_Y14_N17
\i_LED_Blink|counter_500ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[4]~33_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(4));

-- Location: LCFF_X27_Y14_N15
\i_LED_Blink|counter_500ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[3]~31_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(3));

-- Location: LCFF_X27_Y14_N13
\i_LED_Blink|counter_500ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[2]~29_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(2));

-- Location: LCFF_X27_Y14_N11
\i_LED_Blink|counter_500ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[1]~27_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(1));

-- Location: LCCOMB_X27_Y14_N10
\i_LED_Blink|counter_500ms[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[1]~27_combout\ = (\i_LED_Blink|counter_500ms\(1) & (!\i_LED_Blink|counter_500ms[0]~26\)) # (!\i_LED_Blink|counter_500ms\(1) & ((\i_LED_Blink|counter_500ms[0]~26\) # (GND)))
-- \i_LED_Blink|counter_500ms[1]~28\ = CARRY((!\i_LED_Blink|counter_500ms[0]~26\) # (!\i_LED_Blink|counter_500ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(1),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[0]~26\,
	combout => \i_LED_Blink|counter_500ms[1]~27_combout\,
	cout => \i_LED_Blink|counter_500ms[1]~28\);

-- Location: LCCOMB_X27_Y14_N12
\i_LED_Blink|counter_500ms[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[2]~29_combout\ = (\i_LED_Blink|counter_500ms\(2) & (\i_LED_Blink|counter_500ms[1]~28\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(2) & (!\i_LED_Blink|counter_500ms[1]~28\ & VCC))
-- \i_LED_Blink|counter_500ms[2]~30\ = CARRY((\i_LED_Blink|counter_500ms\(2) & !\i_LED_Blink|counter_500ms[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(2),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[1]~28\,
	combout => \i_LED_Blink|counter_500ms[2]~29_combout\,
	cout => \i_LED_Blink|counter_500ms[2]~30\);

-- Location: LCCOMB_X27_Y14_N14
\i_LED_Blink|counter_500ms[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[3]~31_combout\ = (\i_LED_Blink|counter_500ms\(3) & (!\i_LED_Blink|counter_500ms[2]~30\)) # (!\i_LED_Blink|counter_500ms\(3) & ((\i_LED_Blink|counter_500ms[2]~30\) # (GND)))
-- \i_LED_Blink|counter_500ms[3]~32\ = CARRY((!\i_LED_Blink|counter_500ms[2]~30\) # (!\i_LED_Blink|counter_500ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(3),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[2]~30\,
	combout => \i_LED_Blink|counter_500ms[3]~31_combout\,
	cout => \i_LED_Blink|counter_500ms[3]~32\);

-- Location: LCCOMB_X27_Y14_N16
\i_LED_Blink|counter_500ms[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[4]~33_combout\ = (\i_LED_Blink|counter_500ms\(4) & (\i_LED_Blink|counter_500ms[3]~32\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(4) & (!\i_LED_Blink|counter_500ms[3]~32\ & VCC))
-- \i_LED_Blink|counter_500ms[4]~34\ = CARRY((\i_LED_Blink|counter_500ms\(4) & !\i_LED_Blink|counter_500ms[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(4),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[3]~32\,
	combout => \i_LED_Blink|counter_500ms[4]~33_combout\,
	cout => \i_LED_Blink|counter_500ms[4]~34\);

-- Location: LCCOMB_X27_Y14_N24
\i_LED_Blink|counter_500ms[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[8]~41_combout\ = (\i_LED_Blink|counter_500ms\(8) & (\i_LED_Blink|counter_500ms[7]~40\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(8) & (!\i_LED_Blink|counter_500ms[7]~40\ & VCC))
-- \i_LED_Blink|counter_500ms[8]~42\ = CARRY((\i_LED_Blink|counter_500ms\(8) & !\i_LED_Blink|counter_500ms[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(8),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[7]~40\,
	combout => \i_LED_Blink|counter_500ms[8]~41_combout\,
	cout => \i_LED_Blink|counter_500ms[8]~42\);

-- Location: LCCOMB_X27_Y13_N12
\i_LED_Blink|counter_500ms[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[18]~61_combout\ = (\i_LED_Blink|counter_500ms\(18) & (\i_LED_Blink|counter_500ms[17]~60\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(18) & (!\i_LED_Blink|counter_500ms[17]~60\ & VCC))
-- \i_LED_Blink|counter_500ms[18]~62\ = CARRY((\i_LED_Blink|counter_500ms\(18) & !\i_LED_Blink|counter_500ms[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(18),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[17]~60\,
	combout => \i_LED_Blink|counter_500ms[18]~61_combout\,
	cout => \i_LED_Blink|counter_500ms[18]~62\);

-- Location: LCCOMB_X27_Y13_N20
\i_LED_Blink|counter_500ms[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[22]~69_combout\ = (\i_LED_Blink|counter_500ms\(22) & (\i_LED_Blink|counter_500ms[21]~68\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(22) & (!\i_LED_Blink|counter_500ms[21]~68\ & VCC))
-- \i_LED_Blink|counter_500ms[22]~70\ = CARRY((\i_LED_Blink|counter_500ms\(22) & !\i_LED_Blink|counter_500ms[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(22),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[21]~68\,
	combout => \i_LED_Blink|counter_500ms[22]~69_combout\,
	cout => \i_LED_Blink|counter_500ms[22]~70\);

-- Location: LCCOMB_X27_Y13_N22
\i_LED_Blink|counter_500ms[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[23]~71_combout\ = (\i_LED_Blink|counter_500ms\(23) & (!\i_LED_Blink|counter_500ms[22]~70\)) # (!\i_LED_Blink|counter_500ms\(23) & ((\i_LED_Blink|counter_500ms[22]~70\) # (GND)))
-- \i_LED_Blink|counter_500ms[23]~72\ = CARRY((!\i_LED_Blink|counter_500ms[22]~70\) # (!\i_LED_Blink|counter_500ms\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(23),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[22]~70\,
	combout => \i_LED_Blink|counter_500ms[23]~71_combout\,
	cout => \i_LED_Blink|counter_500ms[23]~72\);

-- Location: LCCOMB_X27_Y13_N24
\i_LED_Blink|counter_500ms[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[24]~73_combout\ = \i_LED_Blink|counter_500ms[23]~72\ $ (!\i_LED_Blink|counter_500ms\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_LED_Blink|counter_500ms\(24),
	cin => \i_LED_Blink|counter_500ms[23]~72\,
	combout => \i_LED_Blink|counter_500ms[24]~73_combout\);

-- Location: LCCOMB_X32_Y16_N16
\i_serial_uart|rx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[8]~29_combout\ = (\i_serial_uart|rx_bit_cnt\(8) & (\i_serial_uart|rx_bit_cnt[7]~28\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(8) & (!\i_serial_uart|rx_bit_cnt[7]~28\ & VCC))
-- \i_serial_uart|rx_bit_cnt[8]~30\ = CARRY((\i_serial_uart|rx_bit_cnt\(8) & !\i_serial_uart|rx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[7]~28\,
	combout => \i_serial_uart|rx_bit_cnt[8]~29_combout\,
	cout => \i_serial_uart|rx_bit_cnt[8]~30\);

-- Location: LCCOMB_X26_Y23_N12
\i_serial_uart|tx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[3]~19_combout\ = (\i_serial_uart|tx_bit_cnt\(3) & (!\i_serial_uart|tx_bit_cnt[2]~18\)) # (!\i_serial_uart|tx_bit_cnt\(3) & ((\i_serial_uart|tx_bit_cnt[2]~18\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[3]~20\ = CARRY((!\i_serial_uart|tx_bit_cnt[2]~18\) # (!\i_serial_uart|tx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[2]~18\,
	combout => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	cout => \i_serial_uart|tx_bit_cnt[3]~20\);

-- Location: LCCOMB_X26_Y23_N16
\i_serial_uart|tx_bit_cnt[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[5]~23_combout\ = (\i_serial_uart|tx_bit_cnt\(5) & (!\i_serial_uart|tx_bit_cnt[4]~22\)) # (!\i_serial_uart|tx_bit_cnt\(5) & ((\i_serial_uart|tx_bit_cnt[4]~22\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[5]~24\ = CARRY((!\i_serial_uart|tx_bit_cnt[4]~22\) # (!\i_serial_uart|tx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[4]~22\,
	combout => \i_serial_uart|tx_bit_cnt[5]~23_combout\,
	cout => \i_serial_uart|tx_bit_cnt[5]~24\);

-- Location: LCCOMB_X29_Y14_N12
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\i_serial_uart|received_data\(6) & (\i_serial_uart|received_data\(5) & \i_serial_uart|received_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X31_Y14_N25
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCFF_X31_Y14_N11
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCCOMB_X27_Y23_N6
\i_serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(0) & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_bit_no\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(0),
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_bit_no\(2)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\uart_rxd~I\ : cycloneii_io
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
	padio => ww_uart_rxd,
	combout => \uart_rxd~combout\);

-- Location: LCCOMB_X31_Y14_N24
\i_serial_uart|rx_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_2r~feeder_combout\ = \i_serial_uart|rx_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_r~regout\,
	combout => \i_serial_uart|rx_2r~feeder_combout\);

-- Location: LCCOMB_X31_Y14_N10
\i_serial_uart|rx_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_r~feeder_combout\ = \uart_rxd~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rxd~combout\,
	combout => \i_serial_uart|rx_r~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_n~I\ : cycloneii_io
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
	padio => ww_key_n,
	combout => \key_n~combout\);

-- Location: LCCOMB_X26_Y14_N2
\reset_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_n_r~feeder_combout\ = \key_n~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\,
	combout => \reset_n_r~feeder_combout\);

-- Location: LCFF_X26_Y14_N3
reset_n_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \reset_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_r~regout\);

-- Location: LCCOMB_X26_Y14_N6
\reset_n_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_n_2r~feeder_combout\ = \reset_n_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_n_r~regout\,
	combout => \reset_n_2r~feeder_combout\);

-- Location: LCFF_X26_Y14_N7
reset_n_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \reset_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_2r~regout\);

-- Location: LCFF_X30_Y14_N13
\i_serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \reset_n_2r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_r~regout\);

-- Location: LCFF_X30_Y14_N1
\i_serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_2r~regout\);

-- Location: LCCOMB_X27_Y23_N0
\i_serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~7_combout\ = (\i_serial_uart|reset_2r~regout\ & ((!\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|tx_state~7_combout\);

-- Location: LCFF_X27_Y23_N1
\i_serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X27_Y23_N28
\i_serial_uart|tx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~8_combout\ = (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|reset_2r~regout\ & ((\i_serial_uart|tx_state.s_start_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_state.s_start_bit~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|tx_state~8_combout\);

-- Location: LCFF_X27_Y23_N29
\i_serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X26_Y23_N6
\i_serial_uart|tx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[0]~13_combout\ = \i_serial_uart|tx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|tx_bit_cnt[0]~14\ = CARRY(\i_serial_uart|tx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|tx_bit_cnt[0]~13_combout\,
	cout => \i_serial_uart|tx_bit_cnt[0]~14\);

-- Location: LCCOMB_X26_Y23_N8
\i_serial_uart|tx_bit_cnt[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[1]~15_combout\ = (\i_serial_uart|tx_bit_cnt\(1) & (!\i_serial_uart|tx_bit_cnt[0]~14\)) # (!\i_serial_uart|tx_bit_cnt\(1) & ((\i_serial_uart|tx_bit_cnt[0]~14\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[1]~16\ = CARRY((!\i_serial_uart|tx_bit_cnt[0]~14\) # (!\i_serial_uart|tx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[0]~14\,
	combout => \i_serial_uart|tx_bit_cnt[1]~15_combout\,
	cout => \i_serial_uart|tx_bit_cnt[1]~16\);

-- Location: LCCOMB_X26_Y23_N28
\i_serial_uart|tx_bit_cnt[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[11]~35_combout\ = (\i_serial_uart|tx_bit_cnt\(11) & (!\i_serial_uart|tx_bit_cnt[10]~34\)) # (!\i_serial_uart|tx_bit_cnt\(11) & ((\i_serial_uart|tx_bit_cnt[10]~34\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[11]~36\ = CARRY((!\i_serial_uart|tx_bit_cnt[10]~34\) # (!\i_serial_uart|tx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(11),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[10]~34\,
	combout => \i_serial_uart|tx_bit_cnt[11]~35_combout\,
	cout => \i_serial_uart|tx_bit_cnt[11]~36\);

-- Location: LCCOMB_X26_Y23_N30
\i_serial_uart|tx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[12]~38_combout\ = \i_serial_uart|tx_bit_cnt[11]~36\ $ (!\i_serial_uart|tx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|tx_bit_cnt\(12),
	cin => \i_serial_uart|tx_bit_cnt[11]~36\,
	combout => \i_serial_uart|tx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X26_Y23_N31
\i_serial_uart|tx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[12]~38_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(12));

-- Location: LCCOMB_X27_Y23_N8
\i_serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~0_combout\ = ((!\i_serial_uart|tx_bit_cnt\(10) & !\i_serial_uart|tx_bit_cnt\(11))) # (!\i_serial_uart|tx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(10),
	datac => \i_serial_uart|tx_bit_cnt\(12),
	datad => \i_serial_uart|tx_bit_cnt\(11),
	combout => \i_serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y23_N10
\i_serial_uart|tx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[2]~17_combout\ = (\i_serial_uart|tx_bit_cnt\(2) & (\i_serial_uart|tx_bit_cnt[1]~16\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt[1]~16\ & VCC))
-- \i_serial_uart|tx_bit_cnt[2]~18\ = CARRY((\i_serial_uart|tx_bit_cnt\(2) & !\i_serial_uart|tx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[1]~16\,
	combout => \i_serial_uart|tx_bit_cnt[2]~17_combout\,
	cout => \i_serial_uart|tx_bit_cnt[2]~18\);

-- Location: LCFF_X26_Y23_N11
\i_serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[2]~17_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(2));

-- Location: LCFF_X26_Y23_N7
\i_serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[0]~13_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X26_Y23_N0
\i_serial_uart|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~1_combout\ = (!\i_serial_uart|tx_bit_cnt\(3) & (((!\i_serial_uart|tx_bit_cnt\(0)) # (!\i_serial_uart|tx_bit_cnt\(2))) # (!\i_serial_uart|tx_bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(3),
	datab => \i_serial_uart|tx_bit_cnt\(1),
	datac => \i_serial_uart|tx_bit_cnt\(2),
	datad => \i_serial_uart|tx_bit_cnt\(0),
	combout => \i_serial_uart|LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y23_N2
\i_serial_uart|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~2_combout\ = ((!\i_serial_uart|tx_bit_cnt\(5) & ((\i_serial_uart|LessThan2~1_combout\) # (!\i_serial_uart|tx_bit_cnt\(4))))) # (!\i_serial_uart|tx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(5),
	datab => \i_serial_uart|tx_bit_cnt\(6),
	datac => \i_serial_uart|tx_bit_cnt\(4),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|LessThan2~2_combout\);

-- Location: LCCOMB_X26_Y23_N4
\i_serial_uart|tx_bit_cnt[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[2]~37_combout\ = ((!\i_serial_uart|LessThan2~0_combout\ & ((!\i_serial_uart|LessThan2~2_combout\) # (!\i_serial_uart|LessThan2~3_combout\)))) # (!\i_serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_en~regout\,
	datab => \i_serial_uart|LessThan2~3_combout\,
	datac => \i_serial_uart|LessThan2~0_combout\,
	datad => \i_serial_uart|LessThan2~2_combout\,
	combout => \i_serial_uart|tx_bit_cnt[2]~37_combout\);

-- Location: LCFF_X26_Y23_N9
\i_serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[1]~15_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(1));

-- Location: LCCOMB_X26_Y23_N14
\i_serial_uart|tx_bit_cnt[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[4]~21_combout\ = (\i_serial_uart|tx_bit_cnt\(4) & (\i_serial_uart|tx_bit_cnt[3]~20\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(4) & (!\i_serial_uart|tx_bit_cnt[3]~20\ & VCC))
-- \i_serial_uart|tx_bit_cnt[4]~22\ = CARRY((\i_serial_uart|tx_bit_cnt\(4) & !\i_serial_uart|tx_bit_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[3]~20\,
	combout => \i_serial_uart|tx_bit_cnt[4]~21_combout\,
	cout => \i_serial_uart|tx_bit_cnt[4]~22\);

-- Location: LCFF_X26_Y23_N15
\i_serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[4]~21_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(4));

-- Location: LCCOMB_X26_Y23_N18
\i_serial_uart|tx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[6]~25_combout\ = (\i_serial_uart|tx_bit_cnt\(6) & (\i_serial_uart|tx_bit_cnt[5]~24\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(6) & (!\i_serial_uart|tx_bit_cnt[5]~24\ & VCC))
-- \i_serial_uart|tx_bit_cnt[6]~26\ = CARRY((\i_serial_uart|tx_bit_cnt\(6) & !\i_serial_uart|tx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[5]~24\,
	combout => \i_serial_uart|tx_bit_cnt[6]~25_combout\,
	cout => \i_serial_uart|tx_bit_cnt[6]~26\);

-- Location: LCFF_X26_Y23_N19
\i_serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[6]~25_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(6));

-- Location: LCCOMB_X26_Y23_N20
\i_serial_uart|tx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[7]~27_combout\ = (\i_serial_uart|tx_bit_cnt\(7) & (!\i_serial_uart|tx_bit_cnt[6]~26\)) # (!\i_serial_uart|tx_bit_cnt\(7) & ((\i_serial_uart|tx_bit_cnt[6]~26\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[7]~28\ = CARRY((!\i_serial_uart|tx_bit_cnt[6]~26\) # (!\i_serial_uart|tx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[6]~26\,
	combout => \i_serial_uart|tx_bit_cnt[7]~27_combout\,
	cout => \i_serial_uart|tx_bit_cnt[7]~28\);

-- Location: LCCOMB_X26_Y23_N22
\i_serial_uart|tx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[8]~29_combout\ = (\i_serial_uart|tx_bit_cnt\(8) & (\i_serial_uart|tx_bit_cnt[7]~28\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(8) & (!\i_serial_uart|tx_bit_cnt[7]~28\ & VCC))
-- \i_serial_uart|tx_bit_cnt[8]~30\ = CARRY((\i_serial_uart|tx_bit_cnt\(8) & !\i_serial_uart|tx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(8),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[7]~28\,
	combout => \i_serial_uart|tx_bit_cnt[8]~29_combout\,
	cout => \i_serial_uart|tx_bit_cnt[8]~30\);

-- Location: LCFF_X26_Y23_N23
\i_serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[8]~29_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(8));

-- Location: LCCOMB_X26_Y23_N24
\i_serial_uart|tx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[9]~31_combout\ = (\i_serial_uart|tx_bit_cnt\(9) & (!\i_serial_uart|tx_bit_cnt[8]~30\)) # (!\i_serial_uart|tx_bit_cnt\(9) & ((\i_serial_uart|tx_bit_cnt[8]~30\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[9]~32\ = CARRY((!\i_serial_uart|tx_bit_cnt[8]~30\) # (!\i_serial_uart|tx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(9),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[8]~30\,
	combout => \i_serial_uart|tx_bit_cnt[9]~31_combout\,
	cout => \i_serial_uart|tx_bit_cnt[9]~32\);

-- Location: LCCOMB_X26_Y23_N26
\i_serial_uart|tx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[10]~33_combout\ = (\i_serial_uart|tx_bit_cnt\(10) & (\i_serial_uart|tx_bit_cnt[9]~32\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(10) & (!\i_serial_uart|tx_bit_cnt[9]~32\ & VCC))
-- \i_serial_uart|tx_bit_cnt[10]~34\ = CARRY((\i_serial_uart|tx_bit_cnt\(10) & !\i_serial_uart|tx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(10),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[9]~32\,
	combout => \i_serial_uart|tx_bit_cnt[10]~33_combout\,
	cout => \i_serial_uart|tx_bit_cnt[10]~34\);

-- Location: LCFF_X26_Y23_N27
\i_serial_uart|tx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[10]~33_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(10));

-- Location: LCFF_X26_Y23_N29
\i_serial_uart|tx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[11]~35_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(11));

-- Location: LCFF_X26_Y23_N21
\i_serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[7]~27_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(7));

-- Location: LCFF_X26_Y23_N25
\i_serial_uart|tx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[9]~31_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(9));

-- Location: LCCOMB_X27_Y23_N30
\i_serial_uart|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~3_combout\ = (!\i_serial_uart|tx_bit_cnt\(8) & (!\i_serial_uart|tx_bit_cnt\(11) & (!\i_serial_uart|tx_bit_cnt\(7) & !\i_serial_uart|tx_bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(8),
	datab => \i_serial_uart|tx_bit_cnt\(11),
	datac => \i_serial_uart|tx_bit_cnt\(7),
	datad => \i_serial_uart|tx_bit_cnt\(9),
	combout => \i_serial_uart|LessThan2~3_combout\);

-- Location: LCCOMB_X27_Y23_N4
\i_serial_uart|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector26~0_combout\ = (!\i_serial_uart|tx_bit_cnt_wrap~regout\) # (!\i_serial_uart|tx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector26~0_combout\);

-- Location: LCFF_X27_Y23_N5
\i_serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector26~0_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X27_Y23_N12
\i_serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|LessThan2~0_combout\ & (\i_serial_uart|tx_bit_cnt_en~regout\ & ((!\i_serial_uart|LessThan2~2_combout\) # (!\i_serial_uart|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan2~0_combout\,
	datab => \i_serial_uart|LessThan2~3_combout\,
	datac => \i_serial_uart|tx_bit_cnt_en~regout\,
	datad => \i_serial_uart|LessThan2~2_combout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X27_Y23_N13
\i_serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X27_Y23_N10
\i_serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~1_combout\ = (\i_serial_uart|Selector28~0_combout\ & (\i_serial_uart|tx_state.s_start_bit~regout\ & ((\i_serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\i_serial_uart|Selector28~0_combout\ & 
-- ((\i_serial_uart|tx_state.s_tx_data~regout\) # ((\i_serial_uart|tx_state.s_start_bit~regout\ & \i_serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector28~0_combout\,
	datab => \i_serial_uart|tx_state.s_start_bit~regout\,
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector28~1_combout\);

-- Location: LCFF_X27_Y23_N11
\i_serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector28~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X27_Y23_N26
\i_serial_uart|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector33~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no~0_combout\ $ (((!\i_serial_uart|tx_bit_no\(0)))))) # (!\i_serial_uart|tx_state.s_tx_data~regout\ & (((\i_serial_uart|tx_state.s_idle~regout\ & 
-- \i_serial_uart|tx_bit_no\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no~0_combout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector33~0_combout\);

-- Location: LCFF_X27_Y23_N27
\i_serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X27_Y23_N22
\i_serial_uart|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector31~0_combout\ = (\i_serial_uart|Selector29~0_combout\) # ((\i_serial_uart|tx_bit_no\(2) & ((\i_serial_uart|tx_state.s_tx_data~regout\) # (\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|Selector29~0_combout\,
	datac => \i_serial_uart|tx_bit_no\(2),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector31~0_combout\);

-- Location: LCFF_X27_Y23_N23
\i_serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X27_Y23_N20
\i_serial_uart|tx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no~0_combout\ = ((\i_serial_uart|tx_bit_no\(0) & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_bit_no\(2)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(0),
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|tx_bit_no~0_combout\);

-- Location: LCCOMB_X27_Y23_N18
\i_serial_uart|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~0_combout\ = (\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) $ (((\i_serial_uart|tx_bit_no\(0) & !\i_serial_uart|tx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(1),
	datab => \i_serial_uart|tx_bit_no\(0),
	datac => \i_serial_uart|tx_bit_no~0_combout\,
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector32~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\i_serial_uart|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~1_combout\ = (\i_serial_uart|Selector32~0_combout\) # ((!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|Selector32~0_combout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector32~1_combout\);

-- Location: LCFF_X27_Y23_N25
\i_serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X27_Y23_N14
\i_serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~0_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(0) & (\i_serial_uart|tx_bit_no\(1) & \i_serial_uart|tx_state.s_tx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|tx_bit_no\(0),
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\i_serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~1_combout\ = (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|Selector29~0_combout\ & ((\i_serial_uart|tx_bit_no\(2))))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & ((\i_serial_uart|tx_state.s_stop_bit~regout\) # 
-- ((\i_serial_uart|Selector29~0_combout\ & \i_serial_uart|tx_bit_no\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|Selector29~0_combout\,
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_no\(2),
	combout => \i_serial_uart|Selector29~1_combout\);

-- Location: LCFF_X27_Y23_N17
\i_serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector29~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X27_Y23_N2
\i_serial_uart|tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx~0_combout\ = (\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_state.s_idle~regout\,
	combout => \i_serial_uart|tx~0_combout\);

-- Location: LCFF_X27_Y23_N3
\i_serial_uart|tx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx~regout\);

-- Location: LCCOMB_X32_Y16_N0
\i_serial_uart|rx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~13_combout\ = \i_serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|rx_bit_cnt[0]~14\ = CARRY(\i_serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|rx_bit_cnt[0]~13_combout\,
	cout => \i_serial_uart|rx_bit_cnt[0]~14\);

-- Location: LCCOMB_X31_Y14_N2
\i_serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~3_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|Equal0~0_combout\ & ((\i_serial_uart|rx_state.s_rx_data~regout\)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & 
-- (((\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector4~3_combout\);

-- Location: LCFF_X31_Y14_N3
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~3_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X31_Y16_N18
\i_serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y16_N12
\i_serial_uart|rx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[6]~25_combout\ = (\i_serial_uart|rx_bit_cnt\(6) & (\i_serial_uart|rx_bit_cnt[5]~24\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(6) & (!\i_serial_uart|rx_bit_cnt[5]~24\ & VCC))
-- \i_serial_uart|rx_bit_cnt[6]~26\ = CARRY((\i_serial_uart|rx_bit_cnt\(6) & !\i_serial_uart|rx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[5]~24\,
	combout => \i_serial_uart|rx_bit_cnt[6]~25_combout\,
	cout => \i_serial_uart|rx_bit_cnt[6]~26\);

-- Location: LCFF_X32_Y16_N13
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~25_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X32_Y16_N30
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt\(2)) # ((\i_serial_uart|rx_bit_cnt\(1) & \i_serial_uart|rx_bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datab => \i_serial_uart|rx_bit_cnt\(1),
	datac => \i_serial_uart|rx_bit_cnt\(2),
	datad => \i_serial_uart|rx_bit_cnt\(0),
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCCOMB_X32_Y16_N10
\i_serial_uart|rx_bit_cnt[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[5]~23_combout\ = (\i_serial_uart|rx_bit_cnt\(5) & (!\i_serial_uart|rx_bit_cnt[4]~22\)) # (!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|rx_bit_cnt[4]~22\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[5]~24\ = CARRY((!\i_serial_uart|rx_bit_cnt[4]~22\) # (!\i_serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[4]~22\,
	combout => \i_serial_uart|rx_bit_cnt[5]~23_combout\,
	cout => \i_serial_uart|rx_bit_cnt[5]~24\);

-- Location: LCFF_X32_Y16_N11
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~23_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X32_Y16_N28
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt\(7)) # ((\i_serial_uart|rx_bit_cnt\(4) & \i_serial_uart|rx_bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datac => \i_serial_uart|rx_bit_cnt\(4),
	datad => \i_serial_uart|rx_bit_cnt\(5),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X31_Y16_N20
\i_serial_uart|rx_bit_cnt_half~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~2_combout\ = (\i_serial_uart|rx_bit_cnt_half~0_combout\) # ((\i_serial_uart|rx_bit_cnt_half~1_combout\ & \i_serial_uart|rx_bit_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	datac => \i_serial_uart|rx_bit_cnt\(5),
	datad => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~2_combout\);

-- Location: LCCOMB_X31_Y16_N14
\i_serial_uart|rx_bit_cnt_half~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~3_combout\ = (\i_serial_uart|rx_bit_cnt\(10)) # ((\i_serial_uart|rx_bit_cnt\(9) & ((\i_serial_uart|rx_bit_cnt\(6)) # (\i_serial_uart|rx_bit_cnt_half~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(10),
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|rx_bit_cnt_half~2_combout\,
	datad => \i_serial_uart|rx_bit_cnt\(9),
	combout => \i_serial_uart|rx_bit_cnt_half~3_combout\);

-- Location: LCCOMB_X32_Y16_N22
\i_serial_uart|rx_bit_cnt[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[11]~35_combout\ = (\i_serial_uart|rx_bit_cnt\(11) & (!\i_serial_uart|rx_bit_cnt[10]~34\)) # (!\i_serial_uart|rx_bit_cnt\(11) & ((\i_serial_uart|rx_bit_cnt[10]~34\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[11]~36\ = CARRY((!\i_serial_uart|rx_bit_cnt[10]~34\) # (!\i_serial_uart|rx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[10]~34\,
	combout => \i_serial_uart|rx_bit_cnt[11]~35_combout\,
	cout => \i_serial_uart|rx_bit_cnt[11]~36\);

-- Location: LCCOMB_X32_Y16_N24
\i_serial_uart|rx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[12]~38_combout\ = \i_serial_uart|rx_bit_cnt[11]~36\ $ (!\i_serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_bit_cnt\(12),
	cin => \i_serial_uart|rx_bit_cnt[11]~36\,
	combout => \i_serial_uart|rx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X32_Y16_N25
\i_serial_uart|rx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[12]~38_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(12));

-- Location: LCCOMB_X31_Y16_N24
\i_serial_uart|rx_bit_cnt_half~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~4_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(12)) # ((\i_serial_uart|rx_bit_cnt\(11) & \i_serial_uart|rx_bit_cnt_half~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_en~regout\,
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datac => \i_serial_uart|rx_bit_cnt_half~3_combout\,
	datad => \i_serial_uart|rx_bit_cnt\(12),
	combout => \i_serial_uart|rx_bit_cnt_half~4_combout\);

-- Location: LCFF_X31_Y16_N25
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X31_Y16_N2
\i_serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~10_combout\ = (\i_serial_uart|reset_2r~regout\ & (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_bit_cnt_half~regout\) # (\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_half~regout\,
	datab => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|rx_state.s_idle~regout\,
	datad => \i_serial_uart|Selector1~0_combout\,
	combout => \i_serial_uart|rx_state~10_combout\);

-- Location: LCFF_X31_Y16_N3
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X31_Y16_N6
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_2r~regout\ & !\i_serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector1~0_combout\,
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X31_Y16_N7
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X32_Y16_N6
\i_serial_uart|rx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~19_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt[2]~18\)) # (!\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt[2]~18\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[3]~20\ = CARRY((!\i_serial_uart|rx_bit_cnt[2]~18\) # (!\i_serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[2]~18\,
	combout => \i_serial_uart|rx_bit_cnt[3]~19_combout\,
	cout => \i_serial_uart|rx_bit_cnt[3]~20\);

-- Location: LCFF_X32_Y16_N7
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~19_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X31_Y16_N12
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(3) & (((!\i_serial_uart|rx_bit_cnt\(1)) # (!\i_serial_uart|rx_bit_cnt\(0))) # (!\i_serial_uart|rx_bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datab => \i_serial_uart|rx_bit_cnt\(0),
	datac => \i_serial_uart|rx_bit_cnt\(3),
	datad => \i_serial_uart|rx_bit_cnt\(1),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y16_N10
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = ((!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|LessThan0~1_combout\) # (!\i_serial_uart|rx_bit_cnt\(4))))) # (!\i_serial_uart|rx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|LessThan0~1_combout\,
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y16_N26
\i_serial_uart|rx_bit_cnt[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[10]~37_combout\ = ((!\i_serial_uart|LessThan0~0_combout\ & ((!\i_serial_uart|LessThan0~2_combout\) # (!\i_serial_uart|LessThan0~3_combout\)))) # (!\i_serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~3_combout\,
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|LessThan0~0_combout\,
	datad => \i_serial_uart|LessThan0~2_combout\,
	combout => \i_serial_uart|rx_bit_cnt[10]~37_combout\);

-- Location: LCFF_X32_Y16_N1
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X32_Y16_N2
\i_serial_uart|rx_bit_cnt[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[1]~15_combout\ = (\i_serial_uart|rx_bit_cnt\(1) & (!\i_serial_uart|rx_bit_cnt[0]~14\)) # (!\i_serial_uart|rx_bit_cnt\(1) & ((\i_serial_uart|rx_bit_cnt[0]~14\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[1]~16\ = CARRY((!\i_serial_uart|rx_bit_cnt[0]~14\) # (!\i_serial_uart|rx_bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(1),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[0]~14\,
	combout => \i_serial_uart|rx_bit_cnt[1]~15_combout\,
	cout => \i_serial_uart|rx_bit_cnt[1]~16\);

-- Location: LCFF_X32_Y16_N3
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X32_Y16_N4
\i_serial_uart|rx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~17_combout\ = (\i_serial_uart|rx_bit_cnt\(2) & (\i_serial_uart|rx_bit_cnt[1]~16\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt[1]~16\ & VCC))
-- \i_serial_uart|rx_bit_cnt[2]~18\ = CARRY((\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[1]~16\,
	combout => \i_serial_uart|rx_bit_cnt[2]~17_combout\,
	cout => \i_serial_uart|rx_bit_cnt[2]~18\);

-- Location: LCFF_X32_Y16_N5
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X32_Y16_N8
\i_serial_uart|rx_bit_cnt[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[4]~21_combout\ = (\i_serial_uart|rx_bit_cnt\(4) & (\i_serial_uart|rx_bit_cnt[3]~20\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt[3]~20\ & VCC))
-- \i_serial_uart|rx_bit_cnt[4]~22\ = CARRY((\i_serial_uart|rx_bit_cnt\(4) & !\i_serial_uart|rx_bit_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[3]~20\,
	combout => \i_serial_uart|rx_bit_cnt[4]~21_combout\,
	cout => \i_serial_uart|rx_bit_cnt[4]~22\);

-- Location: LCFF_X32_Y16_N9
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~21_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X32_Y16_N14
\i_serial_uart|rx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[7]~27_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt[6]~26\)) # (!\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt[6]~26\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[7]~28\ = CARRY((!\i_serial_uart|rx_bit_cnt[6]~26\) # (!\i_serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[6]~26\,
	combout => \i_serial_uart|rx_bit_cnt[7]~27_combout\,
	cout => \i_serial_uart|rx_bit_cnt[7]~28\);

-- Location: LCFF_X32_Y16_N15
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~27_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X32_Y16_N18
\i_serial_uart|rx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[9]~31_combout\ = (\i_serial_uart|rx_bit_cnt\(9) & (!\i_serial_uart|rx_bit_cnt[8]~30\)) # (!\i_serial_uart|rx_bit_cnt\(9) & ((\i_serial_uart|rx_bit_cnt[8]~30\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[9]~32\ = CARRY((!\i_serial_uart|rx_bit_cnt[8]~30\) # (!\i_serial_uart|rx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(9),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[8]~30\,
	combout => \i_serial_uart|rx_bit_cnt[9]~31_combout\,
	cout => \i_serial_uart|rx_bit_cnt[9]~32\);

-- Location: LCFF_X32_Y16_N19
\i_serial_uart|rx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[9]~31_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(9));

-- Location: LCCOMB_X32_Y16_N20
\i_serial_uart|rx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[10]~33_combout\ = (\i_serial_uart|rx_bit_cnt\(10) & (\i_serial_uart|rx_bit_cnt[9]~32\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(10) & (!\i_serial_uart|rx_bit_cnt[9]~32\ & VCC))
-- \i_serial_uart|rx_bit_cnt[10]~34\ = CARRY((\i_serial_uart|rx_bit_cnt\(10) & !\i_serial_uart|rx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(10),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[9]~32\,
	combout => \i_serial_uart|rx_bit_cnt[10]~33_combout\,
	cout => \i_serial_uart|rx_bit_cnt[10]~34\);

-- Location: LCFF_X32_Y16_N23
\i_serial_uart|rx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[11]~35_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(11));

-- Location: LCFF_X32_Y16_N21
\i_serial_uart|rx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[10]~33_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(10));

-- Location: LCCOMB_X31_Y16_N30
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(11) & !\i_serial_uart|rx_bit_cnt\(10))) # (!\i_serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datac => \i_serial_uart|rx_bit_cnt\(10),
	datad => \i_serial_uart|rx_bit_cnt\(12),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\i_serial_uart|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~3_combout\ = (!\i_serial_uart|rx_bit_cnt\(8) & (!\i_serial_uart|rx_bit_cnt\(11) & (!\i_serial_uart|rx_bit_cnt\(7) & !\i_serial_uart|rx_bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datac => \i_serial_uart|rx_bit_cnt\(7),
	datad => \i_serial_uart|rx_bit_cnt\(9),
	combout => \i_serial_uart|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y16_N28
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & (!\i_serial_uart|LessThan0~0_combout\ & ((!\i_serial_uart|LessThan0~2_combout\) # (!\i_serial_uart|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_en~regout\,
	datab => \i_serial_uart|LessThan0~0_combout\,
	datac => \i_serial_uart|LessThan0~3_combout\,
	datad => \i_serial_uart|LessThan0~2_combout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X31_Y16_N29
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X31_Y16_N16
\i_serial_uart|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~0_combout\ = (\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y14_N0
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|Selector2~0_combout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_cnt_wrap~regout\) # (!\i_serial_uart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|Selector2~0_combout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X31_Y14_N1
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X30_Y14_N22
\i_serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~2_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X31_Y14_N28
\i_serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\) # ((!\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector11~0_combout\);

-- Location: LCCOMB_X30_Y14_N6
\i_serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector6~0_combout\ = (\i_serial_uart|rx_byte_int\(6) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(6) & 
-- (((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(6),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector6~0_combout\);

-- Location: LCFF_X30_Y14_N7
\i_serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X29_Y14_N28
\i_serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~5_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(5),
	combout => \i_serial_uart|received_data~5_combout\);

-- Location: LCCOMB_X31_Y14_N14
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (!\i_serial_uart|rx_bit_no~0_combout\ & ((\i_serial_uart|rx_state.s_rx_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCFF_X31_Y14_N15
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X31_Y14_N6
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((!\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_bit_no\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X31_Y14_N4
\i_serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~1_combout\ = (\i_serial_uart|Selector13~0_combout\) # ((\i_serial_uart|rx_state.s_stop_bit~regout\ & \i_serial_uart|rx_bit_no\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|Selector13~0_combout\,
	combout => \i_serial_uart|Selector13~1_combout\);

-- Location: LCFF_X31_Y14_N5
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X31_Y14_N26
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_rx_data~regout\,
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X31_Y14_N12
\i_serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~1_combout\ = (\i_serial_uart|Selector12~0_combout\) # ((\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|rx_state.s_rx_data~regout\) # (\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_rx_data~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|Selector12~0_combout\,
	combout => \i_serial_uart|Selector12~1_combout\);

-- Location: LCFF_X31_Y14_N13
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X31_Y14_N22
\i_serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Equal0~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_no\(1),
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no\(2),
	combout => \i_serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y14_N2
\i_serial_uart|received_data[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[5]~10_combout\ = ((\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|Equal0~0_combout\))) # (!\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|Equal0~0_combout\,
	combout => \i_serial_uart|received_data[5]~10_combout\);

-- Location: LCFF_X29_Y14_N29
\i_serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~5_combout\,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(5));

-- Location: LCCOMB_X30_Y14_N28
\i_serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector7~0_combout\ = (\i_serial_uart|rx_byte_int\(5) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(4) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(5) & 
-- (((\i_serial_uart|rx_byte_int\(4) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(5),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector7~0_combout\);

-- Location: LCFF_X30_Y14_N29
\i_serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X30_Y14_N4
\i_serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~4_combout\ = (\i_serial_uart|rx_byte_int\(4) & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~4_combout\);

-- Location: LCFF_X29_Y14_N23
\i_serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~4_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(4));

-- Location: LCCOMB_X31_Y14_N8
\i_serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~3_combout\ = (\i_serial_uart|rx_2r~regout\ & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~3_combout\);

-- Location: LCFF_X30_Y14_N5
\i_serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~3_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(7));

-- Location: LCCOMB_X26_Y14_N28
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(6))) # (!\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # (\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(7),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y14_N16
\i_serial_uart|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~1_combout\ = (\i_serial_uart|rx_byte_int\(1) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(0) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(1) & 
-- (((\i_serial_uart|rx_byte_int\(0) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(1),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector11~1_combout\);

-- Location: LCFF_X30_Y14_N17
\i_serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X30_Y14_N10
\i_serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~6_combout\ = (\i_serial_uart|rx_byte_int\(0) & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~6_combout\);

-- Location: LCFF_X29_Y14_N15
\i_serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~6_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(0));

-- Location: LCCOMB_X30_Y14_N20
\i_serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector8~0_combout\ = (\i_serial_uart|rx_byte_int\(4) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(4) & 
-- (((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(4),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector8~0_combout\);

-- Location: LCFF_X30_Y14_N21
\i_serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X30_Y14_N0
\i_serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~9_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(3),
	combout => \i_serial_uart|received_data~9_combout\);

-- Location: LCFF_X29_Y14_N1
\i_serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~9_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(3));

-- Location: LCCOMB_X30_Y14_N18
\i_serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~0_combout\ = (\i_serial_uart|rx_byte_int\(2) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(1) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(2) & 
-- (((\i_serial_uart|rx_byte_int\(1) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(2),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector10~0_combout\);

-- Location: LCFF_X30_Y14_N19
\i_serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X30_Y14_N12
\i_serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~7_combout\ = (\i_serial_uart|rx_byte_int\(1) & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~7_combout\);

-- Location: LCFF_X29_Y14_N9
\i_serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~7_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(1));

-- Location: LCCOMB_X30_Y14_N30
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\i_serial_uart|received_data\(3) & ((\i_serial_uart|received_data\(2) & ((!\i_serial_uart|received_data\(1)))) # (!\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(0) & \i_serial_uart|received_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(1),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X30_Y14_N24
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(3)) # ((!\i_serial_uart|received_data\(0) & !\i_serial_uart|received_data\(1))))) # (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(0) & 
-- (\i_serial_uart|received_data\(3) $ (!\i_serial_uart|received_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(1),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y14_N20
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\i_serial_uart|received_data\(6) & (!\Mux6~0_combout\ & (\Mux6~2_combout\))) # (!\i_serial_uart|received_data\(6) & (\Mux6~0_combout\ & ((!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \Mux6~0_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X31_Y14_N18
\i_serial_uart|received_data_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data_valid~0_combout\ = (\i_serial_uart|rx_2r~regout\ & (\i_serial_uart|rx_state.s_stop_bit~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|received_data_valid~0_combout\);

-- Location: LCFF_X31_Y14_N19
\i_serial_uart|received_data_valid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data_valid~regout\);

-- Location: LCFF_X26_Y14_N21
\seven_seg_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux6~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(0));

-- Location: LCCOMB_X30_Y14_N14
\i_serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector9~0_combout\ = (\i_serial_uart|rx_byte_int\(3) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|rx_byte_int\(2) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|rx_byte_int\(3) & 
-- (((\i_serial_uart|rx_byte_int\(2) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(3),
	datab => \i_serial_uart|Selector4~2_combout\,
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector9~0_combout\);

-- Location: LCFF_X30_Y14_N15
\i_serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X30_Y14_N8
\i_serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~8_combout\ = (\i_serial_uart|rx_byte_int\(2) & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~8_combout\);

-- Location: LCFF_X29_Y14_N3
\i_serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~8_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(2));

-- Location: LCCOMB_X29_Y14_N6
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i_serial_uart|received_data\(1) & ((\i_serial_uart|received_data\(0) & (\i_serial_uart|received_data\(3))) # (!\i_serial_uart|received_data\(0) & ((\i_serial_uart|received_data\(2)))))) # (!\i_serial_uart|received_data\(1) & 
-- (\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(3)) # (\i_serial_uart|received_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(3),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X31_Y14_N30
\i_serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector5~0_combout\ = (\i_serial_uart|rx_2r~regout\ & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(6))))) # (!\i_serial_uart|rx_2r~regout\ & 
-- (\i_serial_uart|Selector11~0_combout\ & (\i_serial_uart|rx_byte_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector5~0_combout\);

-- Location: LCFF_X31_Y14_N31
\i_serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X30_Y14_N26
\i_serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~2_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(6),
	combout => \i_serial_uart|received_data~2_combout\);

-- Location: LCFF_X29_Y14_N21
\i_serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~2_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(6));

-- Location: LCCOMB_X26_Y14_N24
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\i_serial_uart|received_data\(4) & ((\Mux5~2_combout\) # ((\i_serial_uart|received_data\(6)) # (!\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \Mux5~2_combout\,
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X29_Y14_N2
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_serial_uart|received_data\(6) & (\i_serial_uart|received_data\(0) & (!\i_serial_uart|received_data\(2) & !\i_serial_uart|received_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(2),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y14_N14
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\i_serial_uart|received_data\(4) & ((!\Mux5~0_combout\) # (!\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(1),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X26_Y14_N22
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux5~3_combout\ & !\Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datac => \Mux5~3_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCFF_X26_Y14_N23
\seven_seg_vector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux5~4_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(1));

-- Location: LCCOMB_X29_Y14_N16
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_serial_uart|received_data\(2) & (((\i_serial_uart|received_data\(3))))) # (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(0) $ (!\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y14_N18
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # ((\Mux4~0_combout\) # (!\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \Mux4~0_combout\,
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X26_Y14_N0
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\Mux4~1_combout\ & (!\i_serial_uart|received_data\(7) & ((\i_serial_uart|received_data\(4)) # (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \Mux4~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \i_serial_uart|received_data\(7),
	combout => \Mux4~2_combout\);

-- Location: LCFF_X26_Y14_N1
\seven_seg_vector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux4~2_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(2));

-- Location: LCCOMB_X29_Y14_N8
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\i_serial_uart|received_data\(1) & ((\i_serial_uart|received_data\(0)) # (\i_serial_uart|received_data\(3) $ (!\i_serial_uart|received_data\(2))))) # (!\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(3) & 
-- ((\i_serial_uart|received_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(3),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X26_Y14_N16
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(6))) # (!\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # (\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(7),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(3)) # (\i_serial_uart|received_data\(0) $ (!\i_serial_uart|received_data\(1))))) # (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(0) & 
-- (\i_serial_uart|received_data\(1) $ (!\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(3),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y14_N26
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\i_serial_uart|received_data\(6) & (!\Mux3~0_combout\ & (\Mux3~2_combout\ $ (\Mux3~1_combout\)))) # (!\i_serial_uart|received_data\(6) & (((\Mux3~0_combout\ & !\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \Mux3~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCFF_X26_Y14_N27
\seven_seg_vector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux3~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(3));

-- Location: LCCOMB_X29_Y14_N30
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_serial_uart|received_data\(2) & ((!\i_serial_uart|received_data\(1)))) # (!\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(0)) # (\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(2),
	datad => \i_serial_uart|received_data\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y14_N30
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\i_serial_uart|received_data\(4) & (!\i_serial_uart|received_data\(6))) # (!\i_serial_uart|received_data\(4) & (\i_serial_uart|received_data\(6) & \Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datac => \i_serial_uart|received_data\(6),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X29_Y14_N10
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\i_serial_uart|received_data\(2)) # ((\i_serial_uart|received_data\(0)) # ((!\i_serial_uart|received_data\(5) & !\i_serial_uart|received_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X29_Y14_N22
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_serial_uart|received_data\(4) & (((\i_serial_uart|received_data\(0)) # (!\i_serial_uart|received_data\(5))) # (!\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X29_Y14_N4
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\i_serial_uart|received_data\(3) & (((\Mux2~3_combout\)) # (!\Mux0~0_combout\))) # (!\i_serial_uart|received_data\(3) & (((\Mux2~3_combout\ & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \i_serial_uart|received_data\(3),
	datac => \Mux2~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X26_Y14_N4
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux2~4_combout\ & ((\Mux2~1_combout\) # (\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \Mux2~1_combout\,
	datac => \i_serial_uart|received_data\(3),
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCFF_X26_Y14_N5
\seven_seg_vector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux2~5_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(4));

-- Location: LCCOMB_X29_Y14_N24
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\i_serial_uart|received_data\(3) & (((\i_serial_uart|received_data\(1)) # (\i_serial_uart|received_data\(2))) # (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \i_serial_uart|received_data\(3),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X29_Y14_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_serial_uart|received_data\(5) & ((\i_serial_uart|received_data\(2) & ((!\i_serial_uart|received_data\(0)) # (!\i_serial_uart|received_data\(1)))) # (!\i_serial_uart|received_data\(2) & (!\i_serial_uart|received_data\(1) & 
-- !\i_serial_uart|received_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y14_N12
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\i_serial_uart|received_data\(3) & (((\i_serial_uart|received_data\(4) & !\Mux1~0_combout\)) # (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \Mux1~0_combout\,
	datac => \i_serial_uart|received_data\(3),
	datad => \Mux2~1_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X26_Y14_N10
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux1~2_combout\ & !\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datac => \Mux1~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCFF_X26_Y14_N11
\seven_seg_vector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux1~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(5));

-- Location: LCCOMB_X29_Y14_N26
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(0) & \i_serial_uart|received_data\(2))) # (!\i_serial_uart|received_data\(1) & ((!\i_serial_uart|received_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \i_serial_uart|received_data\(0),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X29_Y14_N20
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\i_serial_uart|received_data\(4) & (\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(6) & !\i_serial_uart|received_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X26_Y14_N8
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\i_serial_uart|received_data\(7)) # ((\i_serial_uart|received_data\(3)) # ((!\Mux0~1_combout\ & !\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(3),
	datac => \Mux0~1_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCFF_X26_Y14_N9
\seven_seg_vector[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux0~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	ena => \i_serial_uart|received_data_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(6));

-- Location: LCCOMB_X27_Y14_N8
\i_LED_Blink|counter_500ms[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[0]~25_combout\ = \i_LED_Blink|counter_500ms\(0) $ (VCC)
-- \i_LED_Blink|counter_500ms[0]~26\ = CARRY(\i_LED_Blink|counter_500ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(0),
	datad => VCC,
	combout => \i_LED_Blink|counter_500ms[0]~25_combout\,
	cout => \i_LED_Blink|counter_500ms[0]~26\);

-- Location: LCFF_X27_Y14_N9
\i_LED_Blink|counter_500ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[0]~25_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(0));

-- Location: LCCOMB_X27_Y14_N18
\i_LED_Blink|counter_500ms[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[5]~35_combout\ = (\i_LED_Blink|counter_500ms\(5) & (!\i_LED_Blink|counter_500ms[4]~34\)) # (!\i_LED_Blink|counter_500ms\(5) & ((\i_LED_Blink|counter_500ms[4]~34\) # (GND)))
-- \i_LED_Blink|counter_500ms[5]~36\ = CARRY((!\i_LED_Blink|counter_500ms[4]~34\) # (!\i_LED_Blink|counter_500ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(5),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[4]~34\,
	combout => \i_LED_Blink|counter_500ms[5]~35_combout\,
	cout => \i_LED_Blink|counter_500ms[5]~36\);

-- Location: LCFF_X27_Y14_N19
\i_LED_Blink|counter_500ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[5]~35_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(5));

-- Location: LCCOMB_X27_Y14_N20
\i_LED_Blink|counter_500ms[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[6]~37_combout\ = (\i_LED_Blink|counter_500ms\(6) & (\i_LED_Blink|counter_500ms[5]~36\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(6) & (!\i_LED_Blink|counter_500ms[5]~36\ & VCC))
-- \i_LED_Blink|counter_500ms[6]~38\ = CARRY((\i_LED_Blink|counter_500ms\(6) & !\i_LED_Blink|counter_500ms[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(6),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[5]~36\,
	combout => \i_LED_Blink|counter_500ms[6]~37_combout\,
	cout => \i_LED_Blink|counter_500ms[6]~38\);

-- Location: LCCOMB_X27_Y14_N22
\i_LED_Blink|counter_500ms[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[7]~39_combout\ = (\i_LED_Blink|counter_500ms\(7) & (!\i_LED_Blink|counter_500ms[6]~38\)) # (!\i_LED_Blink|counter_500ms\(7) & ((\i_LED_Blink|counter_500ms[6]~38\) # (GND)))
-- \i_LED_Blink|counter_500ms[7]~40\ = CARRY((!\i_LED_Blink|counter_500ms[6]~38\) # (!\i_LED_Blink|counter_500ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(7),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[6]~38\,
	combout => \i_LED_Blink|counter_500ms[7]~39_combout\,
	cout => \i_LED_Blink|counter_500ms[7]~40\);

-- Location: LCFF_X27_Y14_N23
\i_LED_Blink|counter_500ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[7]~39_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(7));

-- Location: LCCOMB_X27_Y14_N26
\i_LED_Blink|counter_500ms[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[9]~43_combout\ = (\i_LED_Blink|counter_500ms\(9) & (!\i_LED_Blink|counter_500ms[8]~42\)) # (!\i_LED_Blink|counter_500ms\(9) & ((\i_LED_Blink|counter_500ms[8]~42\) # (GND)))
-- \i_LED_Blink|counter_500ms[9]~44\ = CARRY((!\i_LED_Blink|counter_500ms[8]~42\) # (!\i_LED_Blink|counter_500ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(9),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[8]~42\,
	combout => \i_LED_Blink|counter_500ms[9]~43_combout\,
	cout => \i_LED_Blink|counter_500ms[9]~44\);

-- Location: LCFF_X27_Y14_N27
\i_LED_Blink|counter_500ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[9]~43_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(9));

-- Location: LCCOMB_X27_Y14_N28
\i_LED_Blink|counter_500ms[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[10]~45_combout\ = (\i_LED_Blink|counter_500ms\(10) & (\i_LED_Blink|counter_500ms[9]~44\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(10) & (!\i_LED_Blink|counter_500ms[9]~44\ & VCC))
-- \i_LED_Blink|counter_500ms[10]~46\ = CARRY((\i_LED_Blink|counter_500ms\(10) & !\i_LED_Blink|counter_500ms[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(10),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[9]~44\,
	combout => \i_LED_Blink|counter_500ms[10]~45_combout\,
	cout => \i_LED_Blink|counter_500ms[10]~46\);

-- Location: LCFF_X27_Y14_N29
\i_LED_Blink|counter_500ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[10]~45_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(10));

-- Location: LCCOMB_X27_Y14_N30
\i_LED_Blink|counter_500ms[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[11]~47_combout\ = (\i_LED_Blink|counter_500ms\(11) & (!\i_LED_Blink|counter_500ms[10]~46\)) # (!\i_LED_Blink|counter_500ms\(11) & ((\i_LED_Blink|counter_500ms[10]~46\) # (GND)))
-- \i_LED_Blink|counter_500ms[11]~48\ = CARRY((!\i_LED_Blink|counter_500ms[10]~46\) # (!\i_LED_Blink|counter_500ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(11),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[10]~46\,
	combout => \i_LED_Blink|counter_500ms[11]~47_combout\,
	cout => \i_LED_Blink|counter_500ms[11]~48\);

-- Location: LCCOMB_X27_Y13_N0
\i_LED_Blink|counter_500ms[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[12]~49_combout\ = (\i_LED_Blink|counter_500ms\(12) & (\i_LED_Blink|counter_500ms[11]~48\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(12) & (!\i_LED_Blink|counter_500ms[11]~48\ & VCC))
-- \i_LED_Blink|counter_500ms[12]~50\ = CARRY((\i_LED_Blink|counter_500ms\(12) & !\i_LED_Blink|counter_500ms[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(12),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[11]~48\,
	combout => \i_LED_Blink|counter_500ms[12]~49_combout\,
	cout => \i_LED_Blink|counter_500ms[12]~50\);

-- Location: LCFF_X27_Y13_N1
\i_LED_Blink|counter_500ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[12]~49_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(12));

-- Location: LCCOMB_X27_Y13_N2
\i_LED_Blink|counter_500ms[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[13]~51_combout\ = (\i_LED_Blink|counter_500ms\(13) & (!\i_LED_Blink|counter_500ms[12]~50\)) # (!\i_LED_Blink|counter_500ms\(13) & ((\i_LED_Blink|counter_500ms[12]~50\) # (GND)))
-- \i_LED_Blink|counter_500ms[13]~52\ = CARRY((!\i_LED_Blink|counter_500ms[12]~50\) # (!\i_LED_Blink|counter_500ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(13),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[12]~50\,
	combout => \i_LED_Blink|counter_500ms[13]~51_combout\,
	cout => \i_LED_Blink|counter_500ms[13]~52\);

-- Location: LCFF_X27_Y13_N3
\i_LED_Blink|counter_500ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[13]~51_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(13));

-- Location: LCCOMB_X27_Y13_N4
\i_LED_Blink|counter_500ms[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[14]~53_combout\ = (\i_LED_Blink|counter_500ms\(14) & (\i_LED_Blink|counter_500ms[13]~52\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(14) & (!\i_LED_Blink|counter_500ms[13]~52\ & VCC))
-- \i_LED_Blink|counter_500ms[14]~54\ = CARRY((\i_LED_Blink|counter_500ms\(14) & !\i_LED_Blink|counter_500ms[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(14),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[13]~52\,
	combout => \i_LED_Blink|counter_500ms[14]~53_combout\,
	cout => \i_LED_Blink|counter_500ms[14]~54\);

-- Location: LCFF_X27_Y13_N5
\i_LED_Blink|counter_500ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[14]~53_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(14));

-- Location: LCCOMB_X27_Y13_N6
\i_LED_Blink|counter_500ms[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[15]~55_combout\ = (\i_LED_Blink|counter_500ms\(15) & (!\i_LED_Blink|counter_500ms[14]~54\)) # (!\i_LED_Blink|counter_500ms\(15) & ((\i_LED_Blink|counter_500ms[14]~54\) # (GND)))
-- \i_LED_Blink|counter_500ms[15]~56\ = CARRY((!\i_LED_Blink|counter_500ms[14]~54\) # (!\i_LED_Blink|counter_500ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(15),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[14]~54\,
	combout => \i_LED_Blink|counter_500ms[15]~55_combout\,
	cout => \i_LED_Blink|counter_500ms[15]~56\);

-- Location: LCFF_X27_Y13_N7
\i_LED_Blink|counter_500ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[15]~55_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(15));

-- Location: LCCOMB_X27_Y13_N8
\i_LED_Blink|counter_500ms[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[16]~57_combout\ = (\i_LED_Blink|counter_500ms\(16) & (\i_LED_Blink|counter_500ms[15]~56\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(16) & (!\i_LED_Blink|counter_500ms[15]~56\ & VCC))
-- \i_LED_Blink|counter_500ms[16]~58\ = CARRY((\i_LED_Blink|counter_500ms\(16) & !\i_LED_Blink|counter_500ms[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(16),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[15]~56\,
	combout => \i_LED_Blink|counter_500ms[16]~57_combout\,
	cout => \i_LED_Blink|counter_500ms[16]~58\);

-- Location: LCFF_X27_Y13_N9
\i_LED_Blink|counter_500ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[16]~57_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(16));

-- Location: LCCOMB_X27_Y13_N10
\i_LED_Blink|counter_500ms[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[17]~59_combout\ = (\i_LED_Blink|counter_500ms\(17) & (!\i_LED_Blink|counter_500ms[16]~58\)) # (!\i_LED_Blink|counter_500ms\(17) & ((\i_LED_Blink|counter_500ms[16]~58\) # (GND)))
-- \i_LED_Blink|counter_500ms[17]~60\ = CARRY((!\i_LED_Blink|counter_500ms[16]~58\) # (!\i_LED_Blink|counter_500ms\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(17),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[16]~58\,
	combout => \i_LED_Blink|counter_500ms[17]~59_combout\,
	cout => \i_LED_Blink|counter_500ms[17]~60\);

-- Location: LCCOMB_X27_Y13_N14
\i_LED_Blink|counter_500ms[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[19]~63_combout\ = (\i_LED_Blink|counter_500ms\(19) & (!\i_LED_Blink|counter_500ms[18]~62\)) # (!\i_LED_Blink|counter_500ms\(19) & ((\i_LED_Blink|counter_500ms[18]~62\) # (GND)))
-- \i_LED_Blink|counter_500ms[19]~64\ = CARRY((!\i_LED_Blink|counter_500ms[18]~62\) # (!\i_LED_Blink|counter_500ms\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(19),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[18]~62\,
	combout => \i_LED_Blink|counter_500ms[19]~63_combout\,
	cout => \i_LED_Blink|counter_500ms[19]~64\);

-- Location: LCCOMB_X27_Y13_N16
\i_LED_Blink|counter_500ms[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[20]~65_combout\ = (\i_LED_Blink|counter_500ms\(20) & (\i_LED_Blink|counter_500ms[19]~64\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(20) & (!\i_LED_Blink|counter_500ms[19]~64\ & VCC))
-- \i_LED_Blink|counter_500ms[20]~66\ = CARRY((\i_LED_Blink|counter_500ms\(20) & !\i_LED_Blink|counter_500ms[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(20),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[19]~64\,
	combout => \i_LED_Blink|counter_500ms[20]~65_combout\,
	cout => \i_LED_Blink|counter_500ms[20]~66\);

-- Location: LCCOMB_X27_Y13_N18
\i_LED_Blink|counter_500ms[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[21]~67_combout\ = (\i_LED_Blink|counter_500ms\(21) & (!\i_LED_Blink|counter_500ms[20]~66\)) # (!\i_LED_Blink|counter_500ms\(21) & ((\i_LED_Blink|counter_500ms[20]~66\) # (GND)))
-- \i_LED_Blink|counter_500ms[21]~68\ = CARRY((!\i_LED_Blink|counter_500ms[20]~66\) # (!\i_LED_Blink|counter_500ms\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(21),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[20]~66\,
	combout => \i_LED_Blink|counter_500ms[21]~67_combout\,
	cout => \i_LED_Blink|counter_500ms[21]~68\);

-- Location: LCFF_X27_Y13_N19
\i_LED_Blink|counter_500ms[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[21]~67_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(21));

-- Location: LCFF_X27_Y13_N23
\i_LED_Blink|counter_500ms[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[23]~71_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(23));

-- Location: LCFF_X27_Y13_N17
\i_LED_Blink|counter_500ms[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[20]~65_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(20));

-- Location: LCFF_X27_Y13_N15
\i_LED_Blink|counter_500ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[19]~63_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(19));

-- Location: LCFF_X27_Y13_N11
\i_LED_Blink|counter_500ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[17]~59_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(17));

-- Location: LCCOMB_X27_Y13_N28
\i_LED_Blink|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~4_combout\ = (((!\i_LED_Blink|counter_500ms\(16) & !\i_LED_Blink|counter_500ms\(17))) # (!\i_LED_Blink|counter_500ms\(19))) # (!\i_LED_Blink|counter_500ms\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(18),
	datab => \i_LED_Blink|counter_500ms\(19),
	datac => \i_LED_Blink|counter_500ms\(16),
	datad => \i_LED_Blink|counter_500ms\(17),
	combout => \i_LED_Blink|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y13_N30
\i_LED_Blink|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~5_combout\ = (((\i_LED_Blink|LessThan0~4_combout\) # (!\i_LED_Blink|counter_500ms\(20))) # (!\i_LED_Blink|counter_500ms\(21))) # (!\i_LED_Blink|counter_500ms\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(22),
	datab => \i_LED_Blink|counter_500ms\(21),
	datac => \i_LED_Blink|counter_500ms\(20),
	datad => \i_LED_Blink|LessThan0~4_combout\,
	combout => \i_LED_Blink|LessThan0~5_combout\);

-- Location: LCFF_X27_Y14_N21
\i_LED_Blink|counter_500ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[6]~37_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(6));

-- Location: LCCOMB_X27_Y14_N4
\i_LED_Blink|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~2_combout\ = (!\i_LED_Blink|counter_500ms\(8) & (!\i_LED_Blink|counter_500ms\(7) & (!\i_LED_Blink|counter_500ms\(6) & !\i_LED_Blink|counter_500ms\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(8),
	datab => \i_LED_Blink|counter_500ms\(7),
	datac => \i_LED_Blink|counter_500ms\(6),
	datad => \i_LED_Blink|counter_500ms\(9),
	combout => \i_LED_Blink|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y13_N26
\i_LED_Blink|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~0_combout\ = (!\i_LED_Blink|counter_500ms\(15) & (!\i_LED_Blink|counter_500ms\(17) & !\i_LED_Blink|counter_500ms\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(15),
	datac => \i_LED_Blink|counter_500ms\(17),
	datad => \i_LED_Blink|counter_500ms\(23),
	combout => \i_LED_Blink|LessThan0~0_combout\);

-- Location: LCFF_X27_Y14_N31
\i_LED_Blink|counter_500ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[11]~47_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(11));

-- Location: LCCOMB_X27_Y14_N6
\i_LED_Blink|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~1_combout\ = (((!\i_LED_Blink|counter_500ms\(13)) # (!\i_LED_Blink|counter_500ms\(11))) # (!\i_LED_Blink|counter_500ms\(12))) # (!\i_LED_Blink|counter_500ms\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(14),
	datab => \i_LED_Blink|counter_500ms\(12),
	datac => \i_LED_Blink|counter_500ms\(11),
	datad => \i_LED_Blink|counter_500ms\(13),
	combout => \i_LED_Blink|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y14_N2
\i_LED_Blink|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~3_combout\ = (\i_LED_Blink|LessThan0~0_combout\ & ((\i_LED_Blink|LessThan0~1_combout\) # ((!\i_LED_Blink|counter_500ms\(10) & \i_LED_Blink|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(10),
	datab => \i_LED_Blink|LessThan0~2_combout\,
	datac => \i_LED_Blink|LessThan0~0_combout\,
	datad => \i_LED_Blink|LessThan0~1_combout\,
	combout => \i_LED_Blink|LessThan0~3_combout\);

-- Location: LCCOMB_X27_Y14_N0
\i_LED_Blink|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~6_combout\ = (\i_LED_Blink|counter_500ms\(24) & (!\i_LED_Blink|LessThan0~3_combout\ & ((\i_LED_Blink|counter_500ms\(23)) # (!\i_LED_Blink|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(24),
	datab => \i_LED_Blink|counter_500ms\(23),
	datac => \i_LED_Blink|LessThan0~5_combout\,
	datad => \i_LED_Blink|LessThan0~3_combout\,
	combout => \i_LED_Blink|LessThan0~6_combout\);

-- Location: LCFF_X27_Y14_N1
\i_LED_Blink|tick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|LessThan0~6_combout\,
	ena => \reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|tick~regout\);

-- Location: LCCOMB_X26_Y14_N14
\i_LED_Blink|led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|led~0_combout\ = \i_LED_Blink|tick~regout\ $ (\i_LED_Blink|led~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|tick~regout\,
	datac => \i_LED_Blink|led~regout\,
	combout => \i_LED_Blink|led~0_combout\);

-- Location: LCFF_X26_Y14_N15
\i_LED_Blink|led\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|led~0_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|led~regout\);

-- Location: LCCOMB_X31_Y14_N20
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\ & (!\i_serial_uart|rx_2r~regout\)) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- ((\i_serial_uart|received_error~regout\))))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|received_error~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|received_error~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: LCFF_X31_Y14_N21
\i_serial_uart|received_error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~regout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\uart_txd~I\ : cycloneii_io
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
	datain => \i_serial_uart|tx~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_uart_txd);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => ALT_INV_seven_seg_vector(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
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
	datain => \i_LED_Blink|led~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
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
	datain => \i_serial_uart|received_error~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));
END structure;


