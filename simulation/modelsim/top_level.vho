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

-- DATE "04/25/2023 13:59:00"

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
SIGNAL \i_serial_uart|tx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[2]~9_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[11]~36\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_start_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector32~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector26~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~8_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[11]~36\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~2_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~37_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[0]~14\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[1]~16\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[2]~18\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[3]~20\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[4]~22\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[5]~24\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[6]~26\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[7]~28\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~30\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[9]~32\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[10]~34\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[11]~35_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan2~3_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \key_n~combout\ : std_logic;
SIGNAL \reset_n_r~feeder_combout\ : std_logic;
SIGNAL \reset_n_r~regout\ : std_logic;
SIGNAL \reset_n_2r~feeder_combout\ : std_logic;
SIGNAL \reset_n_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector28~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_tx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector33~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector31~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector29~1_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|tx_state~7_combout\ : std_logic;
SIGNAL \i_serial_uart|tx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|tx~0_combout\ : std_logic;
SIGNAL \i_serial_uart|tx~regout\ : std_logic;
SIGNAL \uart_rxd~combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~37_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~20\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~22\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~24\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~25_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[6]~26\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~28\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~29_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[8]~30\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[9]~32\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[10]~33_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[10]~34\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[11]~35_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector1~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~21_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~4_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector2~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~3_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector5~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data[6]~10_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector4~2_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector9~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~8_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector11~1_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~6_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector7~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector8~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~9_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~3_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector6~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~4_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector10~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_data~7_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[0]~5_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[3]~12\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[4]~13_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~1_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[0]~6\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[1]~8\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[2]~10\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[3]~11_combout\ : std_logic;
SIGNAL \i_LED_Blink|counter_500ms[1]~7_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~0_combout\ : std_logic;
SIGNAL \i_LED_Blink|tick~0_combout\ : std_logic;
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
SIGNAL \i_LED_Blink|counter_500ms\ : std_logic_vector(4 DOWNTO 0);
SIGNAL seven_seg_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_seven_seg_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|ALT_INV_reset_2r~regout\ : std_logic;
SIGNAL \ALT_INV_reset_n_2r~regout\ : std_logic;

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
ALT_INV_seven_seg_vector(6) <= NOT seven_seg_vector(6);
ALT_INV_seven_seg_vector(5) <= NOT seven_seg_vector(5);
ALT_INV_seven_seg_vector(4) <= NOT seven_seg_vector(4);
ALT_INV_seven_seg_vector(3) <= NOT seven_seg_vector(3);
ALT_INV_seven_seg_vector(2) <= NOT seven_seg_vector(2);
ALT_INV_seven_seg_vector(1) <= NOT seven_seg_vector(1);
ALT_INV_seven_seg_vector(0) <= NOT seven_seg_vector(0);
\i_serial_uart|ALT_INV_reset_2r~regout\ <= NOT \i_serial_uart|reset_2r~regout\;
\ALT_INV_reset_n_2r~regout\ <= NOT \reset_n_2r~regout\;

-- Location: LCFF_X24_Y20_N13
\i_LED_Blink|counter_500ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[2]~9_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(2));

-- Location: LCFF_X22_Y22_N27
\i_serial_uart|rx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[12]~38_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(12));

-- Location: LCFF_X22_Y22_N7
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCFF_X22_Y22_N17
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~27_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCFF_X29_Y24_N7
\i_serial_uart|tx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[3]~19_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(3));

-- Location: LCFF_X29_Y24_N11
\i_serial_uart|tx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[5]~23_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(5));

-- Location: LCFF_X30_Y24_N13
\i_serial_uart|tx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector26~0_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_en~regout\);

-- Location: LCCOMB_X24_Y20_N12
\i_LED_Blink|counter_500ms[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[2]~9_combout\ = (\i_LED_Blink|counter_500ms\(2) & (\i_LED_Blink|counter_500ms[1]~8\ $ (GND))) # (!\i_LED_Blink|counter_500ms\(2) & (!\i_LED_Blink|counter_500ms[1]~8\ & VCC))
-- \i_LED_Blink|counter_500ms[2]~10\ = CARRY((\i_LED_Blink|counter_500ms\(2) & !\i_LED_Blink|counter_500ms[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(2),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[1]~8\,
	combout => \i_LED_Blink|counter_500ms[2]~9_combout\,
	cout => \i_LED_Blink|counter_500ms[2]~10\);

-- Location: LCCOMB_X22_Y22_N6
\i_serial_uart|rx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~17_combout\ = (\i_serial_uart|rx_bit_cnt\(2) & (\i_serial_uart|rx_bit_cnt[1]~16\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(2) & (!\i_serial_uart|rx_bit_cnt[1]~16\ & VCC))
-- \i_serial_uart|rx_bit_cnt[2]~18\ = CARRY((\i_serial_uart|rx_bit_cnt\(2) & !\i_serial_uart|rx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[1]~16\,
	combout => \i_serial_uart|rx_bit_cnt[2]~17_combout\,
	cout => \i_serial_uart|rx_bit_cnt[2]~18\);

-- Location: LCCOMB_X22_Y22_N16
\i_serial_uart|rx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[7]~27_combout\ = (\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt[6]~26\)) # (!\i_serial_uart|rx_bit_cnt\(7) & ((\i_serial_uart|rx_bit_cnt[6]~26\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[7]~28\ = CARRY((!\i_serial_uart|rx_bit_cnt[6]~26\) # (!\i_serial_uart|rx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[6]~26\,
	combout => \i_serial_uart|rx_bit_cnt[7]~27_combout\,
	cout => \i_serial_uart|rx_bit_cnt[7]~28\);

-- Location: LCCOMB_X22_Y22_N24
\i_serial_uart|rx_bit_cnt[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[11]~35_combout\ = (\i_serial_uart|rx_bit_cnt\(11) & (!\i_serial_uart|rx_bit_cnt[10]~34\)) # (!\i_serial_uart|rx_bit_cnt\(11) & ((\i_serial_uart|rx_bit_cnt[10]~34\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[11]~36\ = CARRY((!\i_serial_uart|rx_bit_cnt[10]~34\) # (!\i_serial_uart|rx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(11),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[10]~34\,
	combout => \i_serial_uart|rx_bit_cnt[11]~35_combout\,
	cout => \i_serial_uart|rx_bit_cnt[11]~36\);

-- Location: LCCOMB_X22_Y22_N26
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

-- Location: LCCOMB_X29_Y24_N6
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

-- Location: LCCOMB_X29_Y24_N10
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

-- Location: LCCOMB_X23_Y20_N10
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\i_serial_uart|received_data\(0) & (\i_serial_uart|received_data\(3) $ (((!\i_serial_uart|received_data\(1) & !\i_serial_uart|received_data\(2)))))) # (!\i_serial_uart|received_data\(0) & (\i_serial_uart|received_data\(2) & 
-- ((\i_serial_uart|received_data\(3)) # (!\i_serial_uart|received_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_uart|received_data\(3),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X23_Y20_N20
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\i_serial_uart|received_data\(1) & ((\i_serial_uart|received_data\(0)) # (\i_serial_uart|received_data\(2) $ (!\i_serial_uart|received_data\(3))))) # (!\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(2) & 
-- ((\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux3~2_combout\);

-- Location: LCFF_X30_Y24_N17
\i_serial_uart|tx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(1));

-- Location: LCCOMB_X21_Y22_N30
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(11) & !\i_serial_uart|rx_bit_cnt\(10))) # (!\i_serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datac => \i_serial_uart|rx_bit_cnt\(12),
	datad => \i_serial_uart|rx_bit_cnt\(10),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCFF_X30_Y24_N25
\i_serial_uart|tx_state.s_start_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_start_bit~regout\);

-- Location: LCCOMB_X30_Y24_N20
\i_serial_uart|tx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_no~0_combout\ = ((\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(2) & \i_serial_uart|tx_bit_no\(0)))) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(1),
	datab => \i_serial_uart|tx_bit_no\(2),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|tx_bit_no~0_combout\);

-- Location: LCCOMB_X30_Y24_N10
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

-- Location: LCCOMB_X30_Y24_N16
\i_serial_uart|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector32~1_combout\ = (\i_serial_uart|Selector32~0_combout\) # ((!\i_serial_uart|tx_state.s_tx_data~regout\ & (\i_serial_uart|tx_state.s_idle~regout\ & \i_serial_uart|tx_bit_no\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_bit_no\(1),
	datad => \i_serial_uart|Selector32~0_combout\,
	combout => \i_serial_uart|Selector32~1_combout\);

-- Location: LCCOMB_X30_Y24_N12
\i_serial_uart|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector26~0_combout\ = (!\i_serial_uart|tx_bit_cnt_wrap~regout\) # (!\i_serial_uart|tx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector26~0_combout\);

-- Location: LCCOMB_X30_Y24_N24
\i_serial_uart|tx_state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~8_combout\ = (\i_serial_uart|reset_2r~regout\ & (!\i_serial_uart|tx_bit_cnt_wrap~regout\ & ((\i_serial_uart|tx_state.s_start_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_state.s_start_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|tx_state~8_combout\);

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

-- Location: LCCOMB_X29_Y24_N0
\i_serial_uart|tx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[0]~13_combout\ = \i_serial_uart|tx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|tx_bit_cnt[0]~14\ = CARRY(\i_serial_uart|tx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|tx_bit_cnt[0]~13_combout\,
	cout => \i_serial_uart|tx_bit_cnt[0]~14\);

-- Location: LCCOMB_X29_Y24_N22
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

-- Location: LCCOMB_X29_Y24_N24
\i_serial_uart|tx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[12]~38_combout\ = \i_serial_uart|tx_bit_cnt\(12) $ (!\i_serial_uart|tx_bit_cnt[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(12),
	cin => \i_serial_uart|tx_bit_cnt[11]~36\,
	combout => \i_serial_uart|tx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X29_Y24_N25
\i_serial_uart|tx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[12]~38_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(12));

-- Location: LCCOMB_X29_Y24_N20
\i_serial_uart|tx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[10]~33_combout\ = (\i_serial_uart|tx_bit_cnt\(10) & (\i_serial_uart|tx_bit_cnt[9]~32\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(10) & (!\i_serial_uart|tx_bit_cnt[9]~32\ & VCC))
-- \i_serial_uart|tx_bit_cnt[10]~34\ = CARRY((\i_serial_uart|tx_bit_cnt\(10) & !\i_serial_uart|tx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(10),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[9]~32\,
	combout => \i_serial_uart|tx_bit_cnt[10]~33_combout\,
	cout => \i_serial_uart|tx_bit_cnt[10]~34\);

-- Location: LCFF_X29_Y24_N21
\i_serial_uart|tx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[10]~33_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(10));

-- Location: LCCOMB_X30_Y24_N8
\i_serial_uart|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~0_combout\ = ((!\i_serial_uart|tx_bit_cnt\(10) & !\i_serial_uart|tx_bit_cnt\(11))) # (!\i_serial_uart|tx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(12),
	datac => \i_serial_uart|tx_bit_cnt\(10),
	datad => \i_serial_uart|tx_bit_cnt\(11),
	combout => \i_serial_uart|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y24_N12
\i_serial_uart|tx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[6]~25_combout\ = (\i_serial_uart|tx_bit_cnt\(6) & (\i_serial_uart|tx_bit_cnt[5]~24\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(6) & (!\i_serial_uart|tx_bit_cnt[5]~24\ & VCC))
-- \i_serial_uart|tx_bit_cnt[6]~26\ = CARRY((\i_serial_uart|tx_bit_cnt\(6) & !\i_serial_uart|tx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[5]~24\,
	combout => \i_serial_uart|tx_bit_cnt[6]~25_combout\,
	cout => \i_serial_uart|tx_bit_cnt[6]~26\);

-- Location: LCFF_X29_Y24_N13
\i_serial_uart|tx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[6]~25_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(6));

-- Location: LCCOMB_X29_Y24_N26
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

-- Location: LCCOMB_X29_Y24_N28
\i_serial_uart|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~2_combout\ = ((!\i_serial_uart|tx_bit_cnt\(5) & ((\i_serial_uart|LessThan2~1_combout\) # (!\i_serial_uart|tx_bit_cnt\(4))))) # (!\i_serial_uart|tx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(5),
	datab => \i_serial_uart|tx_bit_cnt\(4),
	datac => \i_serial_uart|tx_bit_cnt\(6),
	datad => \i_serial_uart|LessThan2~1_combout\,
	combout => \i_serial_uart|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y24_N30
\i_serial_uart|tx_bit_cnt[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[0]~37_combout\ = ((!\i_serial_uart|LessThan2~0_combout\ & ((!\i_serial_uart|LessThan2~2_combout\) # (!\i_serial_uart|LessThan2~3_combout\)))) # (!\i_serial_uart|tx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_en~regout\,
	datab => \i_serial_uart|LessThan2~0_combout\,
	datac => \i_serial_uart|LessThan2~3_combout\,
	datad => \i_serial_uart|LessThan2~2_combout\,
	combout => \i_serial_uart|tx_bit_cnt[0]~37_combout\);

-- Location: LCFF_X29_Y24_N1
\i_serial_uart|tx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[0]~13_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(0));

-- Location: LCCOMB_X29_Y24_N2
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

-- Location: LCFF_X29_Y24_N3
\i_serial_uart|tx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[1]~15_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(1));

-- Location: LCCOMB_X29_Y24_N4
\i_serial_uart|tx_bit_cnt[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[2]~17_combout\ = (\i_serial_uart|tx_bit_cnt\(2) & (\i_serial_uart|tx_bit_cnt[1]~16\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(2) & (!\i_serial_uart|tx_bit_cnt[1]~16\ & VCC))
-- \i_serial_uart|tx_bit_cnt[2]~18\ = CARRY((\i_serial_uart|tx_bit_cnt\(2) & !\i_serial_uart|tx_bit_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(2),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[1]~16\,
	combout => \i_serial_uart|tx_bit_cnt[2]~17_combout\,
	cout => \i_serial_uart|tx_bit_cnt[2]~18\);

-- Location: LCFF_X29_Y24_N5
\i_serial_uart|tx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[2]~17_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(2));

-- Location: LCCOMB_X29_Y24_N8
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

-- Location: LCFF_X29_Y24_N9
\i_serial_uart|tx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[4]~21_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(4));

-- Location: LCCOMB_X29_Y24_N14
\i_serial_uart|tx_bit_cnt[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[7]~27_combout\ = (\i_serial_uart|tx_bit_cnt\(7) & (!\i_serial_uart|tx_bit_cnt[6]~26\)) # (!\i_serial_uart|tx_bit_cnt\(7) & ((\i_serial_uart|tx_bit_cnt[6]~26\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[7]~28\ = CARRY((!\i_serial_uart|tx_bit_cnt[6]~26\) # (!\i_serial_uart|tx_bit_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(7),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[6]~26\,
	combout => \i_serial_uart|tx_bit_cnt[7]~27_combout\,
	cout => \i_serial_uart|tx_bit_cnt[7]~28\);

-- Location: LCFF_X29_Y24_N15
\i_serial_uart|tx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[7]~27_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(7));

-- Location: LCCOMB_X29_Y24_N16
\i_serial_uart|tx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[8]~29_combout\ = (\i_serial_uart|tx_bit_cnt\(8) & (\i_serial_uart|tx_bit_cnt[7]~28\ $ (GND))) # (!\i_serial_uart|tx_bit_cnt\(8) & (!\i_serial_uart|tx_bit_cnt[7]~28\ & VCC))
-- \i_serial_uart|tx_bit_cnt[8]~30\ = CARRY((\i_serial_uart|tx_bit_cnt\(8) & !\i_serial_uart|tx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(8),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[7]~28\,
	combout => \i_serial_uart|tx_bit_cnt[8]~29_combout\,
	cout => \i_serial_uart|tx_bit_cnt[8]~30\);

-- Location: LCCOMB_X29_Y24_N18
\i_serial_uart|tx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt[9]~31_combout\ = (\i_serial_uart|tx_bit_cnt\(9) & (!\i_serial_uart|tx_bit_cnt[8]~30\)) # (!\i_serial_uart|tx_bit_cnt\(9) & ((\i_serial_uart|tx_bit_cnt[8]~30\) # (GND)))
-- \i_serial_uart|tx_bit_cnt[9]~32\ = CARRY((!\i_serial_uart|tx_bit_cnt[8]~30\) # (!\i_serial_uart|tx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt\(9),
	datad => VCC,
	cin => \i_serial_uart|tx_bit_cnt[8]~30\,
	combout => \i_serial_uart|tx_bit_cnt[9]~31_combout\,
	cout => \i_serial_uart|tx_bit_cnt[9]~32\);

-- Location: LCFF_X29_Y24_N19
\i_serial_uart|tx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[9]~31_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(9));

-- Location: LCFF_X29_Y24_N23
\i_serial_uart|tx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[11]~35_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(11));

-- Location: LCFF_X29_Y24_N17
\i_serial_uart|tx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt[8]~29_combout\,
	sclr => \i_serial_uart|tx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt\(8));

-- Location: LCCOMB_X30_Y24_N14
\i_serial_uart|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan2~3_combout\ = (!\i_serial_uart|tx_bit_cnt\(7) & (!\i_serial_uart|tx_bit_cnt\(11) & (!\i_serial_uart|tx_bit_cnt\(8) & !\i_serial_uart|tx_bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt\(7),
	datab => \i_serial_uart|tx_bit_cnt\(11),
	datac => \i_serial_uart|tx_bit_cnt\(8),
	datad => \i_serial_uart|tx_bit_cnt\(9),
	combout => \i_serial_uart|LessThan2~3_combout\);

-- Location: LCCOMB_X30_Y24_N0
\i_serial_uart|tx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_bit_cnt_wrap~0_combout\ = (\i_serial_uart|tx_bit_cnt_en~regout\ & (!\i_serial_uart|LessThan2~0_combout\ & ((!\i_serial_uart|LessThan2~2_combout\) # (!\i_serial_uart|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_cnt_en~regout\,
	datab => \i_serial_uart|LessThan2~3_combout\,
	datac => \i_serial_uart|LessThan2~0_combout\,
	datad => \i_serial_uart|LessThan2~2_combout\,
	combout => \i_serial_uart|tx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X30_Y24_N1
\i_serial_uart|tx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_cnt_wrap~regout\);

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

-- Location: LCCOMB_X24_Y20_N2
\reset_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reset_n_r~feeder_combout\ = \key_n~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_n~combout\,
	combout => \reset_n_r~feeder_combout\);

-- Location: LCFF_X24_Y20_N3
reset_n_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \reset_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_r~regout\);

-- Location: LCCOMB_X24_Y20_N30
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

-- Location: LCFF_X24_Y20_N31
reset_n_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \reset_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reset_n_2r~regout\);

-- Location: LCFF_X22_Y20_N21
\i_serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \reset_n_2r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_r~regout\);

-- Location: LCFF_X22_Y20_N11
\i_serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|reset_r~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_2r~regout\);

-- Location: LCCOMB_X30_Y24_N18
\i_serial_uart|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~0_combout\ = (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_no\(2) & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(1),
	datab => \i_serial_uart|tx_bit_no\(2),
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector28~0_combout\);

-- Location: LCCOMB_X30_Y24_N6
\i_serial_uart|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector28~1_combout\ = (\i_serial_uart|tx_state.s_start_bit~regout\ & ((\i_serial_uart|tx_bit_cnt_wrap~regout\) # ((\i_serial_uart|tx_state.s_tx_data~regout\ & !\i_serial_uart|Selector28~0_combout\)))) # 
-- (!\i_serial_uart|tx_state.s_start_bit~regout\ & (((\i_serial_uart|tx_state.s_tx_data~regout\ & !\i_serial_uart|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_start_bit~regout\,
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_state.s_tx_data~regout\,
	datad => \i_serial_uart|Selector28~0_combout\,
	combout => \i_serial_uart|Selector28~1_combout\);

-- Location: LCFF_X30_Y24_N7
\i_serial_uart|tx_state.s_tx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector28~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_tx_data~regout\);

-- Location: LCCOMB_X30_Y24_N30
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

-- Location: LCFF_X30_Y24_N31
\i_serial_uart|tx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(0));

-- Location: LCCOMB_X30_Y24_N22
\i_serial_uart|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~0_combout\ = (\i_serial_uart|tx_bit_no\(1) & (\i_serial_uart|tx_bit_cnt_wrap~regout\ & (\i_serial_uart|tx_bit_no\(0) & \i_serial_uart|tx_state.s_tx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_bit_no\(1),
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|tx_bit_no\(0),
	datad => \i_serial_uart|tx_state.s_tx_data~regout\,
	combout => \i_serial_uart|Selector29~0_combout\);

-- Location: LCCOMB_X30_Y24_N26
\i_serial_uart|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector31~0_combout\ = (\i_serial_uart|Selector29~0_combout\) # ((\i_serial_uart|tx_bit_no\(2) & ((\i_serial_uart|tx_state.s_tx_data~regout\) # (\i_serial_uart|tx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|tx_state.s_tx_data~regout\,
	datab => \i_serial_uart|tx_state.s_idle~regout\,
	datac => \i_serial_uart|tx_bit_no\(2),
	datad => \i_serial_uart|Selector29~0_combout\,
	combout => \i_serial_uart|Selector31~0_combout\);

-- Location: LCFF_X30_Y24_N27
\i_serial_uart|tx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_bit_no\(2));

-- Location: LCCOMB_X30_Y24_N28
\i_serial_uart|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector29~1_combout\ = (\i_serial_uart|Selector29~0_combout\ & ((\i_serial_uart|tx_bit_no\(2)) # ((\i_serial_uart|tx_state.s_stop_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\)))) # (!\i_serial_uart|Selector29~0_combout\ & 
-- (((\i_serial_uart|tx_state.s_stop_bit~regout\ & !\i_serial_uart|tx_bit_cnt_wrap~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector29~0_combout\,
	datab => \i_serial_uart|tx_bit_no\(2),
	datac => \i_serial_uart|tx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector29~1_combout\);

-- Location: LCFF_X30_Y24_N29
\i_serial_uart|tx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector29~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X30_Y24_N4
\i_serial_uart|tx_state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx_state~7_combout\ = (\i_serial_uart|reset_2r~regout\ & ((!\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|tx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|tx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|tx_state~7_combout\);

-- Location: LCFF_X30_Y24_N5
\i_serial_uart|tx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx_state.s_idle~regout\);

-- Location: LCCOMB_X30_Y24_N2
\i_serial_uart|tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|tx~0_combout\ = (\i_serial_uart|tx_state.s_stop_bit~regout\) # (!\i_serial_uart|tx_state.s_idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|tx_state.s_idle~regout\,
	datad => \i_serial_uart|tx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|tx~0_combout\);

-- Location: LCFF_X30_Y24_N3
\i_serial_uart|tx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|tx~regout\);

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

-- Location: LCCOMB_X26_Y24_N4
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

-- Location: LCFF_X26_Y24_N5
\i_serial_uart|rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_r~regout\);

-- Location: LCCOMB_X22_Y20_N24
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

-- Location: LCFF_X22_Y20_N25
\i_serial_uart|rx_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_2r~regout\);

-- Location: LCCOMB_X22_Y22_N2
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

-- Location: LCCOMB_X22_Y22_N12
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

-- Location: LCFF_X22_Y22_N13
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~23_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCCOMB_X22_Y22_N0
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(3) & (((!\i_serial_uart|rx_bit_cnt\(1)) # (!\i_serial_uart|rx_bit_cnt\(0))) # (!\i_serial_uart|rx_bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datab => \i_serial_uart|rx_bit_cnt\(0),
	datac => \i_serial_uart|rx_bit_cnt\(1),
	datad => \i_serial_uart|rx_bit_cnt\(3),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y22_N28
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = ((!\i_serial_uart|rx_bit_cnt\(5) & ((\i_serial_uart|LessThan0~1_combout\) # (!\i_serial_uart|rx_bit_cnt\(4))))) # (!\i_serial_uart|rx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datac => \i_serial_uart|rx_bit_cnt\(5),
	datad => \i_serial_uart|LessThan0~1_combout\,
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y22_N30
\i_serial_uart|rx_bit_cnt[0]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~37_combout\ = ((!\i_serial_uart|LessThan0~0_combout\ & ((!\i_serial_uart|LessThan0~2_combout\) # (!\i_serial_uart|LessThan0~3_combout\)))) # (!\i_serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|LessThan0~3_combout\,
	datad => \i_serial_uart|LessThan0~2_combout\,
	combout => \i_serial_uart|rx_bit_cnt[0]~37_combout\);

-- Location: LCFF_X22_Y22_N3
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X22_Y22_N4
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

-- Location: LCFF_X22_Y22_N5
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X22_Y22_N8
\i_serial_uart|rx_bit_cnt[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[3]~19_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & (!\i_serial_uart|rx_bit_cnt[2]~18\)) # (!\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt[2]~18\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[3]~20\ = CARRY((!\i_serial_uart|rx_bit_cnt[2]~18\) # (!\i_serial_uart|rx_bit_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(3),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[2]~18\,
	combout => \i_serial_uart|rx_bit_cnt[3]~19_combout\,
	cout => \i_serial_uart|rx_bit_cnt[3]~20\);

-- Location: LCFF_X22_Y22_N9
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~19_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X22_Y22_N10
\i_serial_uart|rx_bit_cnt[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[4]~21_combout\ = (\i_serial_uart|rx_bit_cnt\(4) & (\i_serial_uart|rx_bit_cnt[3]~20\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt[3]~20\ & VCC))
-- \i_serial_uart|rx_bit_cnt[4]~22\ = CARRY((\i_serial_uart|rx_bit_cnt\(4) & !\i_serial_uart|rx_bit_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(4),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[3]~20\,
	combout => \i_serial_uart|rx_bit_cnt[4]~21_combout\,
	cout => \i_serial_uart|rx_bit_cnt[4]~22\);

-- Location: LCCOMB_X22_Y22_N14
\i_serial_uart|rx_bit_cnt[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[6]~25_combout\ = (\i_serial_uart|rx_bit_cnt\(6) & (\i_serial_uart|rx_bit_cnt[5]~24\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(6) & (!\i_serial_uart|rx_bit_cnt[5]~24\ & VCC))
-- \i_serial_uart|rx_bit_cnt[6]~26\ = CARRY((\i_serial_uart|rx_bit_cnt\(6) & !\i_serial_uart|rx_bit_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(6),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[5]~24\,
	combout => \i_serial_uart|rx_bit_cnt[6]~25_combout\,
	cout => \i_serial_uart|rx_bit_cnt[6]~26\);

-- Location: LCFF_X22_Y22_N15
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~25_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X22_Y22_N18
\i_serial_uart|rx_bit_cnt[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[8]~29_combout\ = (\i_serial_uart|rx_bit_cnt\(8) & (\i_serial_uart|rx_bit_cnt[7]~28\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(8) & (!\i_serial_uart|rx_bit_cnt[7]~28\ & VCC))
-- \i_serial_uart|rx_bit_cnt[8]~30\ = CARRY((\i_serial_uart|rx_bit_cnt\(8) & !\i_serial_uart|rx_bit_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(8),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[7]~28\,
	combout => \i_serial_uart|rx_bit_cnt[8]~29_combout\,
	cout => \i_serial_uart|rx_bit_cnt[8]~30\);

-- Location: LCFF_X22_Y22_N19
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~29_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X22_Y22_N20
\i_serial_uart|rx_bit_cnt[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[9]~31_combout\ = (\i_serial_uart|rx_bit_cnt\(9) & (!\i_serial_uart|rx_bit_cnt[8]~30\)) # (!\i_serial_uart|rx_bit_cnt\(9) & ((\i_serial_uart|rx_bit_cnt[8]~30\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[9]~32\ = CARRY((!\i_serial_uart|rx_bit_cnt[8]~30\) # (!\i_serial_uart|rx_bit_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(9),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[8]~30\,
	combout => \i_serial_uart|rx_bit_cnt[9]~31_combout\,
	cout => \i_serial_uart|rx_bit_cnt[9]~32\);

-- Location: LCCOMB_X22_Y22_N22
\i_serial_uart|rx_bit_cnt[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[10]~33_combout\ = (\i_serial_uart|rx_bit_cnt\(10) & (\i_serial_uart|rx_bit_cnt[9]~32\ $ (GND))) # (!\i_serial_uart|rx_bit_cnt\(10) & (!\i_serial_uart|rx_bit_cnt[9]~32\ & VCC))
-- \i_serial_uart|rx_bit_cnt[10]~34\ = CARRY((\i_serial_uart|rx_bit_cnt\(10) & !\i_serial_uart|rx_bit_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(10),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[9]~32\,
	combout => \i_serial_uart|rx_bit_cnt[10]~33_combout\,
	cout => \i_serial_uart|rx_bit_cnt[10]~34\);

-- Location: LCFF_X22_Y22_N23
\i_serial_uart|rx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[10]~33_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(10));

-- Location: LCFF_X22_Y22_N25
\i_serial_uart|rx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[11]~35_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(11));

-- Location: LCFF_X22_Y22_N21
\i_serial_uart|rx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[9]~31_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(9));

-- Location: LCCOMB_X21_Y22_N4
\i_serial_uart|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~3_combout\ = (!\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt\(8) & (!\i_serial_uart|rx_bit_cnt\(11) & !\i_serial_uart|rx_bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datab => \i_serial_uart|rx_bit_cnt\(8),
	datac => \i_serial_uart|rx_bit_cnt\(11),
	datad => \i_serial_uart|rx_bit_cnt\(9),
	combout => \i_serial_uart|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y22_N8
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (!\i_serial_uart|LessThan0~0_combout\ & (\i_serial_uart|rx_bit_cnt_en~regout\ & ((!\i_serial_uart|LessThan0~2_combout\) # (!\i_serial_uart|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan0~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|LessThan0~3_combout\,
	datad => \i_serial_uart|LessThan0~2_combout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X21_Y22_N9
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X21_Y22_N10
\i_serial_uart|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector1~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
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

-- Location: LCFF_X21_Y22_N3
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X21_Y22_N14
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (!\i_serial_uart|Selector1~0_combout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # ((!\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_2r~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_half~regout\,
	datab => \i_serial_uart|rx_state.s_idle~regout\,
	datac => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|Selector1~0_combout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X21_Y22_N15
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCFF_X22_Y22_N11
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~21_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X21_Y22_N16
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(7)) # ((\i_serial_uart|rx_bit_cnt\(8)) # ((\i_serial_uart|rx_bit_cnt\(5) & \i_serial_uart|rx_bit_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(7),
	datab => \i_serial_uart|rx_bit_cnt\(8),
	datac => \i_serial_uart|rx_bit_cnt\(5),
	datad => \i_serial_uart|rx_bit_cnt\(4),
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X21_Y22_N6
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|rx_bit_cnt\(3) & ((\i_serial_uart|rx_bit_cnt\(2)) # ((\i_serial_uart|rx_bit_cnt\(1) & \i_serial_uart|rx_bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(2),
	datab => \i_serial_uart|rx_bit_cnt\(3),
	datac => \i_serial_uart|rx_bit_cnt\(1),
	datad => \i_serial_uart|rx_bit_cnt\(0),
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\i_serial_uart|rx_bit_cnt_half~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~2_combout\ = (\i_serial_uart|rx_bit_cnt_half~0_combout\) # ((\i_serial_uart|rx_bit_cnt\(5) & \i_serial_uart|rx_bit_cnt_half~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	datad => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~2_combout\);

-- Location: LCCOMB_X21_Y22_N18
\i_serial_uart|rx_bit_cnt_half~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~3_combout\ = (\i_serial_uart|rx_bit_cnt\(10)) # ((\i_serial_uart|rx_bit_cnt\(9) & ((\i_serial_uart|rx_bit_cnt\(6)) # (\i_serial_uart|rx_bit_cnt_half~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(10),
	datab => \i_serial_uart|rx_bit_cnt\(9),
	datac => \i_serial_uart|rx_bit_cnt\(6),
	datad => \i_serial_uart|rx_bit_cnt_half~2_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~3_combout\);

-- Location: LCCOMB_X21_Y22_N20
\i_serial_uart|rx_bit_cnt_half~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~4_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(12)) # ((\i_serial_uart|rx_bit_cnt\(11) & \i_serial_uart|rx_bit_cnt_half~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(12),
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|rx_bit_cnt\(11),
	datad => \i_serial_uart|rx_bit_cnt_half~3_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~4_combout\);

-- Location: LCFF_X21_Y22_N21
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X21_Y22_N28
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

-- Location: LCCOMB_X21_Y20_N4
\i_serial_uart|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector2~1_combout\ = (\i_serial_uart|Selector2~0_combout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_cnt_wrap~regout\) # (!\i_serial_uart|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|Selector2~0_combout\,
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector2~1_combout\);

-- Location: LCFF_X21_Y20_N5
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector2~1_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X21_Y20_N6
\i_serial_uart|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~3_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (\i_serial_uart|Equal0~0_combout\ & (\i_serial_uart|rx_state.s_rx_data~regout\))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & 
-- (((\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector4~3_combout\);

-- Location: LCFF_X21_Y20_N7
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector4~3_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X21_Y20_N28
\i_serial_uart|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~0_combout\ = (\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & !\i_serial_uart|rx_bit_cnt_wrap~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_rx_data~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector11~0_combout\);

-- Location: LCCOMB_X21_Y20_N10
\i_serial_uart|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector5~0_combout\ = (\i_serial_uart|Selector4~2_combout\ & ((\i_serial_uart|rx_2r~regout\) # ((\i_serial_uart|rx_byte_int\(6) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|Selector4~2_combout\ & 
-- (((\i_serial_uart|rx_byte_int\(6) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector4~2_combout\,
	datab => \i_serial_uart|rx_2r~regout\,
	datac => \i_serial_uart|rx_byte_int\(6),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector5~0_combout\);

-- Location: LCFF_X21_Y20_N11
\i_serial_uart|rx_byte_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(6));

-- Location: LCCOMB_X22_Y20_N0
\i_serial_uart|received_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~2_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(6),
	combout => \i_serial_uart|received_data~2_combout\);

-- Location: LCCOMB_X21_Y20_N12
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(2) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(1)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(2),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|rx_bit_no~0_combout\)))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_no~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_rx_data~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no~0_combout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCFF_X21_Y20_N21
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCCOMB_X21_Y20_N2
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((\i_serial_uart|rx_bit_no\(0) & !\i_serial_uart|rx_bit_no~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_no~0_combout\,
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X21_Y20_N14
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

-- Location: LCFF_X21_Y20_N15
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X21_Y20_N18
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_no\(1) & (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(1),
	datab => \i_serial_uart|rx_bit_no\(0),
	datac => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X21_Y20_N26
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

-- Location: LCFF_X21_Y20_N27
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCCOMB_X21_Y20_N8
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

-- Location: LCCOMB_X22_Y20_N14
\i_serial_uart|received_data[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data[6]~10_combout\ = ((\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|Equal0~0_combout\))) # (!\i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|Equal0~0_combout\,
	combout => \i_serial_uart|received_data[6]~10_combout\);

-- Location: LCFF_X22_Y20_N1
\i_serial_uart|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~2_combout\,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(6));

-- Location: LCCOMB_X21_Y20_N24
\i_serial_uart|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector4~2_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_state.s_rx_data~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|Selector4~2_combout\);

-- Location: LCCOMB_X22_Y20_N16
\i_serial_uart|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector9~0_combout\ = (\i_serial_uart|rx_byte_int\(3) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(2))))) # (!\i_serial_uart|rx_byte_int\(3) & 
-- (\i_serial_uart|Selector11~0_combout\ & (\i_serial_uart|rx_byte_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(3),
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(2),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector9~0_combout\);

-- Location: LCFF_X22_Y20_N17
\i_serial_uart|rx_byte_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(2));

-- Location: LCCOMB_X23_Y20_N24
\i_serial_uart|received_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~8_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(2),
	combout => \i_serial_uart|received_data~8_combout\);

-- Location: LCFF_X23_Y20_N25
\i_serial_uart|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~8_combout\,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(2));

-- Location: LCCOMB_X22_Y20_N30
\i_serial_uart|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector11~1_combout\ = (\i_serial_uart|rx_byte_int\(1) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(0))))) # (!\i_serial_uart|rx_byte_int\(1) & 
-- (\i_serial_uart|Selector11~0_combout\ & (\i_serial_uart|rx_byte_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(1),
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(0),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector11~1_combout\);

-- Location: LCFF_X22_Y20_N31
\i_serial_uart|rx_byte_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(0));

-- Location: LCCOMB_X22_Y20_N20
\i_serial_uart|received_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~6_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(0),
	combout => \i_serial_uart|received_data~6_combout\);

-- Location: LCFF_X23_Y20_N17
\i_serial_uart|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~6_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(0));

-- Location: LCCOMB_X21_Y20_N22
\i_serial_uart|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector7~0_combout\ = (\i_serial_uart|rx_byte_int\(5) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(4))))) # (!\i_serial_uart|rx_byte_int\(5) & 
-- (\i_serial_uart|Selector11~0_combout\ & (\i_serial_uart|rx_byte_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(5),
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(4),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector7~0_combout\);

-- Location: LCFF_X21_Y20_N23
\i_serial_uart|rx_byte_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(4));

-- Location: LCCOMB_X21_Y20_N30
\i_serial_uart|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector8~0_combout\ = (\i_serial_uart|Selector4~2_combout\ & ((\i_serial_uart|rx_byte_int\(4)) # ((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|Selector4~2_combout\ & 
-- (((\i_serial_uart|rx_byte_int\(3) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector4~2_combout\,
	datab => \i_serial_uart|rx_byte_int\(4),
	datac => \i_serial_uart|rx_byte_int\(3),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector8~0_combout\);

-- Location: LCFF_X21_Y20_N31
\i_serial_uart|rx_byte_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(3));

-- Location: LCCOMB_X22_Y20_N28
\i_serial_uart|received_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~9_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|rx_byte_int\(3),
	combout => \i_serial_uart|received_data~9_combout\);

-- Location: LCFF_X22_Y20_N29
\i_serial_uart|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~9_combout\,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(3));

-- Location: LCCOMB_X23_Y20_N30
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (!\i_serial_uart|received_data\(3) & ((\i_serial_uart|received_data\(1) & (!\i_serial_uart|received_data\(2) & !\i_serial_uart|received_data\(0))) # (!\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\i_serial_uart|received_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~3_combout\ = (\i_serial_uart|rx_2r~regout\ & \i_serial_uart|reset_2r~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|rx_2r~regout\,
	datad => \i_serial_uart|reset_2r~regout\,
	combout => \i_serial_uart|received_data~3_combout\);

-- Location: LCFF_X22_Y20_N19
\i_serial_uart|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~3_combout\,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(7));

-- Location: LCCOMB_X21_Y20_N16
\i_serial_uart|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector6~0_combout\ = (\i_serial_uart|Selector4~2_combout\ & ((\i_serial_uart|rx_byte_int\(6)) # ((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector11~0_combout\)))) # (!\i_serial_uart|Selector4~2_combout\ & 
-- (((\i_serial_uart|rx_byte_int\(5) & \i_serial_uart|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector4~2_combout\,
	datab => \i_serial_uart|rx_byte_int\(6),
	datac => \i_serial_uart|rx_byte_int\(5),
	datad => \i_serial_uart|Selector11~0_combout\,
	combout => \i_serial_uart|Selector6~0_combout\);

-- Location: LCFF_X21_Y20_N17
\i_serial_uart|rx_byte_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(5));

-- Location: LCCOMB_X22_Y20_N4
\i_serial_uart|received_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~5_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(5),
	combout => \i_serial_uart|received_data~5_combout\);

-- Location: LCFF_X23_Y20_N19
\i_serial_uart|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~5_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(5));

-- Location: LCCOMB_X22_Y20_N26
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_serial_uart|received_data\(7) & (((\i_serial_uart|received_data\(6))))) # (!\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # (\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(7),
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\i_serial_uart|received_data\(6) & (((\Mux6~2_combout\ & !\Mux6~0_combout\)))) # (!\i_serial_uart|received_data\(6) & (!\Mux6~1_combout\ & ((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \i_serial_uart|received_data\(6),
	datac => \Mux6~2_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCFF_X24_Y20_N25
\seven_seg_vector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux6~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(0));

-- Location: LCCOMB_X22_Y20_N12
\i_serial_uart|received_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~4_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(4),
	combout => \i_serial_uart|received_data~4_combout\);

-- Location: LCFF_X22_Y20_N13
\i_serial_uart|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_data~4_combout\,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(4));

-- Location: LCCOMB_X22_Y20_N2
\i_serial_uart|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector10~0_combout\ = (\i_serial_uart|rx_byte_int\(2) & ((\i_serial_uart|Selector4~2_combout\) # ((\i_serial_uart|Selector11~0_combout\ & \i_serial_uart|rx_byte_int\(1))))) # (!\i_serial_uart|rx_byte_int\(2) & 
-- (\i_serial_uart|Selector11~0_combout\ & (\i_serial_uart|rx_byte_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_byte_int\(2),
	datab => \i_serial_uart|Selector11~0_combout\,
	datac => \i_serial_uart|rx_byte_int\(1),
	datad => \i_serial_uart|Selector4~2_combout\,
	combout => \i_serial_uart|Selector10~0_combout\);

-- Location: LCFF_X22_Y20_N3
\i_serial_uart|rx_byte_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_byte_int\(1));

-- Location: LCCOMB_X22_Y20_N10
\i_serial_uart|received_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_data~7_combout\ = (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_byte_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_byte_int\(1),
	combout => \i_serial_uart|received_data~7_combout\);

-- Location: LCFF_X23_Y20_N11
\i_serial_uart|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \i_serial_uart|received_data~7_combout\,
	sload => VCC,
	ena => \i_serial_uart|received_data[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_data\(1));

-- Location: LCCOMB_X25_Y20_N30
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i_serial_uart|received_data\(3) & ((\i_serial_uart|received_data\(2)) # ((\i_serial_uart|received_data\(1) & \i_serial_uart|received_data\(0))))) # (!\i_serial_uart|received_data\(3) & (\i_serial_uart|received_data\(2) & 
-- (\i_serial_uart|received_data\(1) $ (\i_serial_uart|received_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(3),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X25_Y20_N20
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # ((\Mux5~2_combout\) # (!\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X25_Y20_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\i_serial_uart|received_data\(3) & (\i_serial_uart|received_data\(6) & (!\i_serial_uart|received_data\(2) & \i_serial_uart|received_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(3),
	datab => \i_serial_uart|received_data\(6),
	datac => \i_serial_uart|received_data\(2),
	datad => \i_serial_uart|received_data\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y20_N12
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\i_serial_uart|received_data\(4) & ((!\Mux5~0_combout\) # (!\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(4),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X25_Y20_N28
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

-- Location: LCFF_X25_Y20_N29
\seven_seg_vector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux5~4_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(1));

-- Location: LCCOMB_X25_Y20_N2
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_serial_uart|received_data\(2) & (((\i_serial_uart|received_data\(3))))) # (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(0) $ (!\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_uart|received_data\(3),
	datac => \i_serial_uart|received_data\(1),
	datad => \i_serial_uart|received_data\(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # ((\Mux4~0_combout\) # (!\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(6),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(4),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X24_Y20_N22
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux4~1_combout\ & ((\i_serial_uart|received_data\(4)) # (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(4),
	datac => \Mux5~0_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCFF_X24_Y20_N23
\seven_seg_vector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux4~2_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(2));

-- Location: LCCOMB_X22_Y20_N22
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_serial_uart|received_data\(7) & (((\i_serial_uart|received_data\(6))))) # (!\i_serial_uart|received_data\(7) & (\i_serial_uart|received_data\(4) & ((\i_serial_uart|received_data\(6)) # (\i_serial_uart|received_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(7),
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(5),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(3)) # (\i_serial_uart|received_data\(1) $ (!\i_serial_uart|received_data\(0))))) # (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(0) & 
-- (\i_serial_uart|received_data\(1) $ (!\i_serial_uart|received_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(3),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\i_serial_uart|received_data\(6) & (!\Mux3~0_combout\ & (\Mux3~2_combout\ $ (\Mux3~1_combout\)))) # (!\i_serial_uart|received_data\(6) & (((\Mux3~0_combout\ & !\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \i_serial_uart|received_data\(6),
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCFF_X24_Y20_N5
\seven_seg_vector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux3~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(3));

-- Location: LCCOMB_X23_Y20_N2
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_serial_uart|received_data\(2) & ((!\i_serial_uart|received_data\(1)))) # (!\i_serial_uart|received_data\(2) & ((\i_serial_uart|received_data\(0)) # (\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
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

-- Location: LCCOMB_X23_Y20_N26
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_serial_uart|received_data\(5) & (!\i_serial_uart|received_data\(6) & \i_serial_uart|received_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(6),
	datad => \i_serial_uart|received_data\(4),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\i_serial_uart|received_data\(4) & (((\i_serial_uart|received_data\(0)) # (!\i_serial_uart|received_data\(5))) # (!\i_serial_uart|received_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(5),
	datac => \i_serial_uart|received_data\(0),
	datad => \i_serial_uart|received_data\(4),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X23_Y20_N6
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

-- Location: LCCOMB_X23_Y20_N12
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\i_serial_uart|received_data\(3) & (((\Mux2~3_combout\)) # (!\Mux0~0_combout\))) # (!\i_serial_uart|received_data\(3) & (((\Mux2~2_combout\ & \Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(3),
	datab => \Mux0~0_combout\,
	datac => \Mux2~2_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux2~4_combout\ & ((\i_serial_uart|received_data\(3)) # (\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(3),
	datac => \Mux2~1_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCFF_X24_Y20_N7
\seven_seg_vector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux2~5_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(4));

-- Location: LCCOMB_X23_Y20_N8
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\i_serial_uart|received_data\(3) & ((\i_serial_uart|received_data\(1)) # ((\i_serial_uart|received_data\(2)) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(3),
	datac => \i_serial_uart|received_data\(2),
	datad => \Mux0~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_serial_uart|received_data\(5) & ((\i_serial_uart|received_data\(0) & (\i_serial_uart|received_data\(2) & !\i_serial_uart|received_data\(1))) # (!\i_serial_uart|received_data\(0) & ((\i_serial_uart|received_data\(2)) # 
-- (!\i_serial_uart|received_data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(0),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(5),
	datad => \i_serial_uart|received_data\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y20_N22
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\i_serial_uart|received_data\(3) & (((\i_serial_uart|received_data\(4) & !\Mux1~0_combout\)) # (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(4),
	datab => \i_serial_uart|received_data\(3),
	datac => \Mux1~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X23_Y20_N28
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\i_serial_uart|received_data\(7) & (!\Mux1~2_combout\ & !\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|received_data\(7),
	datac => \Mux1~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCFF_X23_Y20_N29
\seven_seg_vector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux1~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(5));

-- Location: LCCOMB_X25_Y20_N10
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\i_serial_uart|received_data\(2) & (\i_serial_uart|received_data\(1) & (!\i_serial_uart|received_data\(4) & \i_serial_uart|received_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(2),
	datab => \i_serial_uart|received_data\(1),
	datac => \i_serial_uart|received_data\(4),
	datad => \i_serial_uart|received_data\(6),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\i_serial_uart|received_data\(1) & (\i_serial_uart|received_data\(2) & \i_serial_uart|received_data\(0))) # (!\i_serial_uart|received_data\(1) & (!\i_serial_uart|received_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(1),
	datab => \i_serial_uart|received_data\(2),
	datac => \i_serial_uart|received_data\(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\i_serial_uart|received_data\(7)) # ((\i_serial_uart|received_data\(3)) # ((!\Mux0~2_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|received_data\(7),
	datab => \i_serial_uart|received_data\(3),
	datac => \Mux0~2_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCFF_X24_Y20_N27
\seven_seg_vector[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \Mux0~3_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seven_seg_vector(6));

-- Location: LCCOMB_X24_Y20_N8
\i_LED_Blink|counter_500ms[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[0]~5_combout\ = \i_LED_Blink|counter_500ms\(0) $ (VCC)
-- \i_LED_Blink|counter_500ms[0]~6\ = CARRY(\i_LED_Blink|counter_500ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(0),
	datad => VCC,
	combout => \i_LED_Blink|counter_500ms[0]~5_combout\,
	cout => \i_LED_Blink|counter_500ms[0]~6\);

-- Location: LCCOMB_X24_Y20_N14
\i_LED_Blink|counter_500ms[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[3]~11_combout\ = (\i_LED_Blink|counter_500ms\(3) & (!\i_LED_Blink|counter_500ms[2]~10\)) # (!\i_LED_Blink|counter_500ms\(3) & ((\i_LED_Blink|counter_500ms[2]~10\) # (GND)))
-- \i_LED_Blink|counter_500ms[3]~12\ = CARRY((!\i_LED_Blink|counter_500ms[2]~10\) # (!\i_LED_Blink|counter_500ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|counter_500ms\(3),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[2]~10\,
	combout => \i_LED_Blink|counter_500ms[3]~11_combout\,
	cout => \i_LED_Blink|counter_500ms[3]~12\);

-- Location: LCCOMB_X24_Y20_N16
\i_LED_Blink|counter_500ms[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[4]~13_combout\ = \i_LED_Blink|counter_500ms\(4) $ (!\i_LED_Blink|counter_500ms[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(4),
	cin => \i_LED_Blink|counter_500ms[3]~12\,
	combout => \i_LED_Blink|counter_500ms[4]~13_combout\);

-- Location: LCFF_X24_Y20_N17
\i_LED_Blink|counter_500ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[4]~13_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(4));

-- Location: LCCOMB_X24_Y20_N18
\i_LED_Blink|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~1_combout\ = (\i_LED_Blink|counter_500ms\(4) & !\i_LED_Blink|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_LED_Blink|counter_500ms\(4),
	datad => \i_LED_Blink|LessThan0~0_combout\,
	combout => \i_LED_Blink|LessThan0~1_combout\);

-- Location: LCFF_X24_Y20_N9
\i_LED_Blink|counter_500ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[0]~5_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(0));

-- Location: LCCOMB_X24_Y20_N10
\i_LED_Blink|counter_500ms[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|counter_500ms[1]~7_combout\ = (\i_LED_Blink|counter_500ms\(1) & (!\i_LED_Blink|counter_500ms[0]~6\)) # (!\i_LED_Blink|counter_500ms\(1) & ((\i_LED_Blink|counter_500ms[0]~6\) # (GND)))
-- \i_LED_Blink|counter_500ms[1]~8\ = CARRY((!\i_LED_Blink|counter_500ms[0]~6\) # (!\i_LED_Blink|counter_500ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(1),
	datad => VCC,
	cin => \i_LED_Blink|counter_500ms[0]~6\,
	combout => \i_LED_Blink|counter_500ms[1]~7_combout\,
	cout => \i_LED_Blink|counter_500ms[1]~8\);

-- Location: LCFF_X24_Y20_N15
\i_LED_Blink|counter_500ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[3]~11_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(3));

-- Location: LCFF_X24_Y20_N11
\i_LED_Blink|counter_500ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|counter_500ms[1]~7_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|counter_500ms\(1));

-- Location: LCCOMB_X24_Y20_N28
\i_LED_Blink|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~0_combout\ = ((!\i_LED_Blink|counter_500ms\(2) & (!\i_LED_Blink|counter_500ms\(0) & !\i_LED_Blink|counter_500ms\(1)))) # (!\i_LED_Blink|counter_500ms\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(2),
	datab => \i_LED_Blink|counter_500ms\(3),
	datac => \i_LED_Blink|counter_500ms\(0),
	datad => \i_LED_Blink|counter_500ms\(1),
	combout => \i_LED_Blink|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\i_LED_Blink|tick~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|tick~0_combout\ = (\reset_n_2r~regout\ & (\i_LED_Blink|counter_500ms\(4) & ((!\i_LED_Blink|LessThan0~0_combout\)))) # (!\reset_n_2r~regout\ & (((\i_LED_Blink|tick~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|counter_500ms\(4),
	datab => \reset_n_2r~regout\,
	datac => \i_LED_Blink|tick~regout\,
	datad => \i_LED_Blink|LessThan0~0_combout\,
	combout => \i_LED_Blink|tick~0_combout\);

-- Location: LCFF_X24_Y20_N1
\i_LED_Blink|tick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|tick~regout\);

-- Location: LCCOMB_X24_Y20_N20
\i_LED_Blink|led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|led~0_combout\ = \i_LED_Blink|led~regout\ $ (\i_LED_Blink|tick~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_LED_Blink|led~regout\,
	datad => \i_LED_Blink|tick~regout\,
	combout => \i_LED_Blink|led~0_combout\);

-- Location: LCFF_X24_Y20_N21
\i_LED_Blink|led\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|led~0_combout\,
	aclr => \ALT_INV_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|led~regout\);

-- Location: LCCOMB_X21_Y20_N0
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\ & ((!\i_serial_uart|rx_2r~regout\))) # (!\i_serial_uart|rx_state.s_stop_bit~regout\ & 
-- (\i_serial_uart|received_error~regout\)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|received_error~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|received_error~regout\,
	datad => \i_serial_uart|rx_2r~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: LCFF_X21_Y20_N1
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


