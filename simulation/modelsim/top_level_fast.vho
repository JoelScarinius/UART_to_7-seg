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

-- DATE "04/24/2023 13:16:20"

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
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic_vector(1 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_n	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_LED_Blink|s_counter_500ms[1]~27_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[2]~29_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[4]~33_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[6]~37_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[17]~59_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[22]~69_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[23]~72\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[24]~73_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[5]~23_combout\ : std_logic;
SIGNAL \i_serial_uart|Equal0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector12~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector14~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~0_combout\ : std_logic;
SIGNAL \i_serial_uart|Selector13~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan1~0_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \s_hex0[6]~feeder_combout\ : std_logic;
SIGNAL \key_n~combout\ : std_logic;
SIGNAL \s_reset_n_r~feeder_combout\ : std_logic;
SIGNAL \s_reset_n_r~regout\ : std_logic;
SIGNAL \s_reset_n_2r~feeder_combout\ : std_logic;
SIGNAL \s_reset_n_2r~regout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[0]~25_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[0]~26\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[1]~28\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[2]~30\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[3]~31_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[3]~32\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[4]~34\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[5]~35_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[5]~36\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[6]~38\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[7]~39_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[7]~40\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[8]~42\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[9]~43_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[9]~44\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[10]~45_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[10]~46\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[11]~48\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[12]~49_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[12]~50\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[13]~51_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[13]~52\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[14]~53_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[14]~54\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[15]~56\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[16]~57_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[16]~58\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[17]~60\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[18]~62\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[19]~63_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[19]~64\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[20]~66\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[21]~67_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[21]~68\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[22]~70\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[23]~71_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[8]~41_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~2_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[11]~47_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~1_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[15]~55_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~0_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~3_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[20]~65_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_counter_500ms[18]~61_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~4_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~5_combout\ : std_logic;
SIGNAL \i_LED_Blink|LessThan0~6_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_tick~regout\ : std_logic;
SIGNAL \i_LED_Blink|s_led~0_combout\ : std_logic;
SIGNAL \i_LED_Blink|s_led~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~12_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~14\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~15_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[9]~31_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[7]~27_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~1_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[0]~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~17_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~3_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan0~4_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~35_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[1]~16\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[2]~18\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~20\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[4]~21_combout\ : std_logic;
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
SIGNAL \i_serial_uart|rx_bit_cnt[11]~36_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[11]~37\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[12]~38_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt[3]~19_combout\ : std_logic;
SIGNAL \i_serial_uart|LessThan1~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~2_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_half~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~14_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~15_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_idle~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~13_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_rx_data~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|reset_r~regout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~feeder_combout\ : std_logic;
SIGNAL \i_serial_uart|reset_2r~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~10_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state~11_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_state.s_stop_bit~regout\ : std_logic;
SIGNAL \i_serial_uart|Selector0~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_en~regout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \i_serial_uart|rx_bit_cnt_wrap~regout\ : std_logic;
SIGNAL \i_serial_uart|received_error~0_combout\ : std_logic;
SIGNAL \i_serial_uart|received_error~regout\ : std_logic;
SIGNAL s_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_serial_uart|rx_bit_cnt\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \i_LED_Blink|s_counter_500ms\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \i_serial_uart|ALT_INV_reset_2r~regout\ : std_logic;
SIGNAL \ALT_INV_s_reset_n_2r~regout\ : std_logic;
SIGNAL ALT_INV_s_hex0 : std_logic_vector(6 DOWNTO 6);

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
hex0 <= ww_hex0;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\i_serial_uart|ALT_INV_reset_2r~regout\ <= NOT \i_serial_uart|reset_2r~regout\;
\ALT_INV_s_reset_n_2r~regout\ <= NOT \s_reset_n_2r~regout\;
ALT_INV_s_hex0(6) <= NOT s_hex0(6);

-- Location: LCFF_X44_Y25_N11
\i_LED_Blink|s_counter_500ms[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[17]~59_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(17));

-- Location: LCFF_X44_Y26_N21
\i_LED_Blink|s_counter_500ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[6]~37_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(6));

-- Location: LCFF_X44_Y25_N21
\i_LED_Blink|s_counter_500ms[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[22]~69_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(22));

-- Location: LCFF_X44_Y25_N25
\i_LED_Blink|s_counter_500ms[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[24]~73_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(24));

-- Location: LCFF_X46_Y26_N17
\i_serial_uart|rx_bit_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[5]~23_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(5));

-- Location: LCFF_X44_Y26_N17
\i_LED_Blink|s_counter_500ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[4]~33_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(4));

-- Location: LCFF_X44_Y26_N13
\i_LED_Blink|s_counter_500ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[2]~29_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(2));

-- Location: LCFF_X44_Y26_N11
\i_LED_Blink|s_counter_500ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[1]~27_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(1));

-- Location: LCCOMB_X44_Y26_N10
\i_LED_Blink|s_counter_500ms[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[1]~27_combout\ = (\i_LED_Blink|s_counter_500ms\(1) & (!\i_LED_Blink|s_counter_500ms[0]~26\)) # (!\i_LED_Blink|s_counter_500ms\(1) & ((\i_LED_Blink|s_counter_500ms[0]~26\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[1]~28\ = CARRY((!\i_LED_Blink|s_counter_500ms[0]~26\) # (!\i_LED_Blink|s_counter_500ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(1),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[0]~26\,
	combout => \i_LED_Blink|s_counter_500ms[1]~27_combout\,
	cout => \i_LED_Blink|s_counter_500ms[1]~28\);

-- Location: LCCOMB_X44_Y26_N12
\i_LED_Blink|s_counter_500ms[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[2]~29_combout\ = (\i_LED_Blink|s_counter_500ms\(2) & (\i_LED_Blink|s_counter_500ms[1]~28\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(2) & (!\i_LED_Blink|s_counter_500ms[1]~28\ & VCC))
-- \i_LED_Blink|s_counter_500ms[2]~30\ = CARRY((\i_LED_Blink|s_counter_500ms\(2) & !\i_LED_Blink|s_counter_500ms[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(2),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[1]~28\,
	combout => \i_LED_Blink|s_counter_500ms[2]~29_combout\,
	cout => \i_LED_Blink|s_counter_500ms[2]~30\);

-- Location: LCCOMB_X44_Y26_N16
\i_LED_Blink|s_counter_500ms[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[4]~33_combout\ = (\i_LED_Blink|s_counter_500ms\(4) & (\i_LED_Blink|s_counter_500ms[3]~32\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(4) & (!\i_LED_Blink|s_counter_500ms[3]~32\ & VCC))
-- \i_LED_Blink|s_counter_500ms[4]~34\ = CARRY((\i_LED_Blink|s_counter_500ms\(4) & !\i_LED_Blink|s_counter_500ms[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(4),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[3]~32\,
	combout => \i_LED_Blink|s_counter_500ms[4]~33_combout\,
	cout => \i_LED_Blink|s_counter_500ms[4]~34\);

-- Location: LCCOMB_X44_Y26_N20
\i_LED_Blink|s_counter_500ms[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[6]~37_combout\ = (\i_LED_Blink|s_counter_500ms\(6) & (\i_LED_Blink|s_counter_500ms[5]~36\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(6) & (!\i_LED_Blink|s_counter_500ms[5]~36\ & VCC))
-- \i_LED_Blink|s_counter_500ms[6]~38\ = CARRY((\i_LED_Blink|s_counter_500ms\(6) & !\i_LED_Blink|s_counter_500ms[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(6),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[5]~36\,
	combout => \i_LED_Blink|s_counter_500ms[6]~37_combout\,
	cout => \i_LED_Blink|s_counter_500ms[6]~38\);

-- Location: LCCOMB_X44_Y25_N10
\i_LED_Blink|s_counter_500ms[17]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[17]~59_combout\ = (\i_LED_Blink|s_counter_500ms\(17) & (!\i_LED_Blink|s_counter_500ms[16]~58\)) # (!\i_LED_Blink|s_counter_500ms\(17) & ((\i_LED_Blink|s_counter_500ms[16]~58\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[17]~60\ = CARRY((!\i_LED_Blink|s_counter_500ms[16]~58\) # (!\i_LED_Blink|s_counter_500ms\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(17),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[16]~58\,
	combout => \i_LED_Blink|s_counter_500ms[17]~59_combout\,
	cout => \i_LED_Blink|s_counter_500ms[17]~60\);

-- Location: LCCOMB_X44_Y25_N20
\i_LED_Blink|s_counter_500ms[22]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[22]~69_combout\ = (\i_LED_Blink|s_counter_500ms\(22) & (\i_LED_Blink|s_counter_500ms[21]~68\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(22) & (!\i_LED_Blink|s_counter_500ms[21]~68\ & VCC))
-- \i_LED_Blink|s_counter_500ms[22]~70\ = CARRY((\i_LED_Blink|s_counter_500ms\(22) & !\i_LED_Blink|s_counter_500ms[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(22),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[21]~68\,
	combout => \i_LED_Blink|s_counter_500ms[22]~69_combout\,
	cout => \i_LED_Blink|s_counter_500ms[22]~70\);

-- Location: LCCOMB_X44_Y25_N22
\i_LED_Blink|s_counter_500ms[23]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[23]~71_combout\ = (\i_LED_Blink|s_counter_500ms\(23) & (!\i_LED_Blink|s_counter_500ms[22]~70\)) # (!\i_LED_Blink|s_counter_500ms\(23) & ((\i_LED_Blink|s_counter_500ms[22]~70\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[23]~72\ = CARRY((!\i_LED_Blink|s_counter_500ms[22]~70\) # (!\i_LED_Blink|s_counter_500ms\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(23),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[22]~70\,
	combout => \i_LED_Blink|s_counter_500ms[23]~71_combout\,
	cout => \i_LED_Blink|s_counter_500ms[23]~72\);

-- Location: LCCOMB_X44_Y25_N24
\i_LED_Blink|s_counter_500ms[24]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[24]~73_combout\ = \i_LED_Blink|s_counter_500ms\(24) $ (!\i_LED_Blink|s_counter_500ms[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(24),
	cin => \i_LED_Blink|s_counter_500ms[23]~72\,
	combout => \i_LED_Blink|s_counter_500ms[24]~73_combout\);

-- Location: LCCOMB_X46_Y26_N16
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

-- Location: LCFF_X47_Y26_N3
\i_serial_uart|rx_bit_no[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(2));

-- Location: LCFF_X47_Y26_N21
\i_serial_uart|rx_bit_no[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(0));

-- Location: LCFF_X47_Y26_N27
\i_serial_uart|rx_bit_no[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_no\(1));

-- Location: LCCOMB_X47_Y26_N16
\i_serial_uart|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Equal0~0_combout\ = (\i_serial_uart|rx_bit_no\(2) & (\i_serial_uart|rx_bit_no\(0) & \i_serial_uart|rx_bit_no\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_no\(2),
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no\(1),
	combout => \i_serial_uart|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y26_N12
\i_serial_uart|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_bit_no\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_bit_no\(1),
	combout => \i_serial_uart|Selector12~0_combout\);

-- Location: LCCOMB_X47_Y26_N2
\i_serial_uart|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector12~1_combout\ = (\i_serial_uart|Selector12~0_combout\) # ((\i_serial_uart|rx_bit_no\(2) & ((\i_serial_uart|rx_state.s_rx_data~regout\) # (\i_serial_uart|rx_state.s_stop_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Selector12~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(2),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector12~1_combout\);

-- Location: LCCOMB_X47_Y26_N6
\i_serial_uart|rx_bit_no~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_no~0_combout\ = ((\i_serial_uart|rx_bit_no\(0) & (\i_serial_uart|rx_bit_no\(2) & \i_serial_uart|rx_bit_no\(1)))) # (!\i_serial_uart|rx_bit_cnt_wrap~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no\(0),
	datab => \i_serial_uart|rx_bit_no\(2),
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datad => \i_serial_uart|rx_bit_no\(1),
	combout => \i_serial_uart|rx_bit_no~0_combout\);

-- Location: LCCOMB_X47_Y26_N20
\i_serial_uart|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector14~0_combout\ = (\i_serial_uart|rx_bit_no\(0) & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_state.s_rx_data~regout\)))) # (!\i_serial_uart|rx_bit_no\(0) & 
-- (!\i_serial_uart|rx_bit_no~0_combout\ & (\i_serial_uart|rx_state.s_rx_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector14~0_combout\);

-- Location: LCCOMB_X47_Y26_N8
\i_serial_uart|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~0_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|rx_bit_no\(1) $ (((!\i_serial_uart|rx_bit_no~0_combout\ & \i_serial_uart|rx_bit_no\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_no~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_no\(0),
	datad => \i_serial_uart|rx_bit_no\(1),
	combout => \i_serial_uart|Selector13~0_combout\);

-- Location: LCCOMB_X47_Y26_N26
\i_serial_uart|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector13~1_combout\ = (\i_serial_uart|Selector13~0_combout\) # ((\i_serial_uart|rx_bit_no\(1) & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|Selector13~0_combout\,
	datac => \i_serial_uart|rx_bit_no\(1),
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|Selector13~1_combout\);

-- Location: LCCOMB_X45_Y26_N10
\i_serial_uart|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan1~0_combout\ = (!\i_serial_uart|rx_bit_cnt\(8) & (!\i_serial_uart|rx_bit_cnt\(7) & (!\i_serial_uart|rx_bit_cnt\(10) & !\i_serial_uart|rx_bit_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(8),
	datab => \i_serial_uart|rx_bit_cnt\(7),
	datac => \i_serial_uart|rx_bit_cnt\(10),
	datad => \i_serial_uart|rx_bit_cnt\(6),
	combout => \i_serial_uart|LessThan1~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X45_Y26_N12
\s_hex0[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_hex0[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \s_hex0[6]~feeder_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y26_N8
\s_reset_n_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_reset_n_r~feeder_combout\ = \key_n~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_n~combout\,
	combout => \s_reset_n_r~feeder_combout\);

-- Location: LCFF_X43_Y26_N9
s_reset_n_r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \s_reset_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_reset_n_r~regout\);

-- Location: LCCOMB_X44_Y26_N0
\s_reset_n_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_reset_n_2r~feeder_combout\ = \s_reset_n_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_reset_n_r~regout\,
	combout => \s_reset_n_2r~feeder_combout\);

-- Location: LCFF_X44_Y26_N1
s_reset_n_2r : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \s_reset_n_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_reset_n_2r~regout\);

-- Location: LCFF_X45_Y26_N13
\s_hex0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \s_hex0[6]~feeder_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_hex0(6));

-- Location: LCCOMB_X44_Y26_N8
\i_LED_Blink|s_counter_500ms[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[0]~25_combout\ = \i_LED_Blink|s_counter_500ms\(0) $ (VCC)
-- \i_LED_Blink|s_counter_500ms[0]~26\ = CARRY(\i_LED_Blink|s_counter_500ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(0),
	datad => VCC,
	combout => \i_LED_Blink|s_counter_500ms[0]~25_combout\,
	cout => \i_LED_Blink|s_counter_500ms[0]~26\);

-- Location: LCFF_X44_Y26_N9
\i_LED_Blink|s_counter_500ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[0]~25_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(0));

-- Location: LCCOMB_X44_Y26_N14
\i_LED_Blink|s_counter_500ms[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[3]~31_combout\ = (\i_LED_Blink|s_counter_500ms\(3) & (!\i_LED_Blink|s_counter_500ms[2]~30\)) # (!\i_LED_Blink|s_counter_500ms\(3) & ((\i_LED_Blink|s_counter_500ms[2]~30\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[3]~32\ = CARRY((!\i_LED_Blink|s_counter_500ms[2]~30\) # (!\i_LED_Blink|s_counter_500ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(3),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[2]~30\,
	combout => \i_LED_Blink|s_counter_500ms[3]~31_combout\,
	cout => \i_LED_Blink|s_counter_500ms[3]~32\);

-- Location: LCFF_X44_Y26_N15
\i_LED_Blink|s_counter_500ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[3]~31_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(3));

-- Location: LCCOMB_X44_Y26_N18
\i_LED_Blink|s_counter_500ms[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[5]~35_combout\ = (\i_LED_Blink|s_counter_500ms\(5) & (!\i_LED_Blink|s_counter_500ms[4]~34\)) # (!\i_LED_Blink|s_counter_500ms\(5) & ((\i_LED_Blink|s_counter_500ms[4]~34\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[5]~36\ = CARRY((!\i_LED_Blink|s_counter_500ms[4]~34\) # (!\i_LED_Blink|s_counter_500ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(5),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[4]~34\,
	combout => \i_LED_Blink|s_counter_500ms[5]~35_combout\,
	cout => \i_LED_Blink|s_counter_500ms[5]~36\);

-- Location: LCFF_X44_Y26_N19
\i_LED_Blink|s_counter_500ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[5]~35_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(5));

-- Location: LCCOMB_X44_Y26_N22
\i_LED_Blink|s_counter_500ms[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[7]~39_combout\ = (\i_LED_Blink|s_counter_500ms\(7) & (!\i_LED_Blink|s_counter_500ms[6]~38\)) # (!\i_LED_Blink|s_counter_500ms\(7) & ((\i_LED_Blink|s_counter_500ms[6]~38\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[7]~40\ = CARRY((!\i_LED_Blink|s_counter_500ms[6]~38\) # (!\i_LED_Blink|s_counter_500ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(7),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[6]~38\,
	combout => \i_LED_Blink|s_counter_500ms[7]~39_combout\,
	cout => \i_LED_Blink|s_counter_500ms[7]~40\);

-- Location: LCFF_X44_Y26_N23
\i_LED_Blink|s_counter_500ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[7]~39_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(7));

-- Location: LCCOMB_X44_Y26_N24
\i_LED_Blink|s_counter_500ms[8]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[8]~41_combout\ = (\i_LED_Blink|s_counter_500ms\(8) & (\i_LED_Blink|s_counter_500ms[7]~40\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(8) & (!\i_LED_Blink|s_counter_500ms[7]~40\ & VCC))
-- \i_LED_Blink|s_counter_500ms[8]~42\ = CARRY((\i_LED_Blink|s_counter_500ms\(8) & !\i_LED_Blink|s_counter_500ms[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(8),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[7]~40\,
	combout => \i_LED_Blink|s_counter_500ms[8]~41_combout\,
	cout => \i_LED_Blink|s_counter_500ms[8]~42\);

-- Location: LCCOMB_X44_Y26_N26
\i_LED_Blink|s_counter_500ms[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[9]~43_combout\ = (\i_LED_Blink|s_counter_500ms\(9) & (!\i_LED_Blink|s_counter_500ms[8]~42\)) # (!\i_LED_Blink|s_counter_500ms\(9) & ((\i_LED_Blink|s_counter_500ms[8]~42\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[9]~44\ = CARRY((!\i_LED_Blink|s_counter_500ms[8]~42\) # (!\i_LED_Blink|s_counter_500ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(9),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[8]~42\,
	combout => \i_LED_Blink|s_counter_500ms[9]~43_combout\,
	cout => \i_LED_Blink|s_counter_500ms[9]~44\);

-- Location: LCFF_X44_Y26_N27
\i_LED_Blink|s_counter_500ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[9]~43_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(9));

-- Location: LCCOMB_X44_Y26_N28
\i_LED_Blink|s_counter_500ms[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[10]~45_combout\ = (\i_LED_Blink|s_counter_500ms\(10) & (\i_LED_Blink|s_counter_500ms[9]~44\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(10) & (!\i_LED_Blink|s_counter_500ms[9]~44\ & VCC))
-- \i_LED_Blink|s_counter_500ms[10]~46\ = CARRY((\i_LED_Blink|s_counter_500ms\(10) & !\i_LED_Blink|s_counter_500ms[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(10),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[9]~44\,
	combout => \i_LED_Blink|s_counter_500ms[10]~45_combout\,
	cout => \i_LED_Blink|s_counter_500ms[10]~46\);

-- Location: LCFF_X44_Y26_N29
\i_LED_Blink|s_counter_500ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[10]~45_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(10));

-- Location: LCCOMB_X44_Y26_N30
\i_LED_Blink|s_counter_500ms[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[11]~47_combout\ = (\i_LED_Blink|s_counter_500ms\(11) & (!\i_LED_Blink|s_counter_500ms[10]~46\)) # (!\i_LED_Blink|s_counter_500ms\(11) & ((\i_LED_Blink|s_counter_500ms[10]~46\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[11]~48\ = CARRY((!\i_LED_Blink|s_counter_500ms[10]~46\) # (!\i_LED_Blink|s_counter_500ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(11),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[10]~46\,
	combout => \i_LED_Blink|s_counter_500ms[11]~47_combout\,
	cout => \i_LED_Blink|s_counter_500ms[11]~48\);

-- Location: LCCOMB_X44_Y25_N0
\i_LED_Blink|s_counter_500ms[12]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[12]~49_combout\ = (\i_LED_Blink|s_counter_500ms\(12) & (\i_LED_Blink|s_counter_500ms[11]~48\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(12) & (!\i_LED_Blink|s_counter_500ms[11]~48\ & VCC))
-- \i_LED_Blink|s_counter_500ms[12]~50\ = CARRY((\i_LED_Blink|s_counter_500ms\(12) & !\i_LED_Blink|s_counter_500ms[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(12),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[11]~48\,
	combout => \i_LED_Blink|s_counter_500ms[12]~49_combout\,
	cout => \i_LED_Blink|s_counter_500ms[12]~50\);

-- Location: LCFF_X44_Y25_N1
\i_LED_Blink|s_counter_500ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[12]~49_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(12));

-- Location: LCCOMB_X44_Y25_N2
\i_LED_Blink|s_counter_500ms[13]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[13]~51_combout\ = (\i_LED_Blink|s_counter_500ms\(13) & (!\i_LED_Blink|s_counter_500ms[12]~50\)) # (!\i_LED_Blink|s_counter_500ms\(13) & ((\i_LED_Blink|s_counter_500ms[12]~50\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[13]~52\ = CARRY((!\i_LED_Blink|s_counter_500ms[12]~50\) # (!\i_LED_Blink|s_counter_500ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(13),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[12]~50\,
	combout => \i_LED_Blink|s_counter_500ms[13]~51_combout\,
	cout => \i_LED_Blink|s_counter_500ms[13]~52\);

-- Location: LCFF_X44_Y25_N3
\i_LED_Blink|s_counter_500ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[13]~51_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(13));

-- Location: LCCOMB_X44_Y25_N4
\i_LED_Blink|s_counter_500ms[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[14]~53_combout\ = (\i_LED_Blink|s_counter_500ms\(14) & (\i_LED_Blink|s_counter_500ms[13]~52\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(14) & (!\i_LED_Blink|s_counter_500ms[13]~52\ & VCC))
-- \i_LED_Blink|s_counter_500ms[14]~54\ = CARRY((\i_LED_Blink|s_counter_500ms\(14) & !\i_LED_Blink|s_counter_500ms[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(14),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[13]~52\,
	combout => \i_LED_Blink|s_counter_500ms[14]~53_combout\,
	cout => \i_LED_Blink|s_counter_500ms[14]~54\);

-- Location: LCFF_X44_Y25_N5
\i_LED_Blink|s_counter_500ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[14]~53_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(14));

-- Location: LCCOMB_X44_Y25_N6
\i_LED_Blink|s_counter_500ms[15]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[15]~55_combout\ = (\i_LED_Blink|s_counter_500ms\(15) & (!\i_LED_Blink|s_counter_500ms[14]~54\)) # (!\i_LED_Blink|s_counter_500ms\(15) & ((\i_LED_Blink|s_counter_500ms[14]~54\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[15]~56\ = CARRY((!\i_LED_Blink|s_counter_500ms[14]~54\) # (!\i_LED_Blink|s_counter_500ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(15),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[14]~54\,
	combout => \i_LED_Blink|s_counter_500ms[15]~55_combout\,
	cout => \i_LED_Blink|s_counter_500ms[15]~56\);

-- Location: LCCOMB_X44_Y25_N8
\i_LED_Blink|s_counter_500ms[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[16]~57_combout\ = (\i_LED_Blink|s_counter_500ms\(16) & (\i_LED_Blink|s_counter_500ms[15]~56\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(16) & (!\i_LED_Blink|s_counter_500ms[15]~56\ & VCC))
-- \i_LED_Blink|s_counter_500ms[16]~58\ = CARRY((\i_LED_Blink|s_counter_500ms\(16) & !\i_LED_Blink|s_counter_500ms[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(16),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[15]~56\,
	combout => \i_LED_Blink|s_counter_500ms[16]~57_combout\,
	cout => \i_LED_Blink|s_counter_500ms[16]~58\);

-- Location: LCFF_X44_Y25_N9
\i_LED_Blink|s_counter_500ms[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[16]~57_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(16));

-- Location: LCCOMB_X44_Y25_N12
\i_LED_Blink|s_counter_500ms[18]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[18]~61_combout\ = (\i_LED_Blink|s_counter_500ms\(18) & (\i_LED_Blink|s_counter_500ms[17]~60\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(18) & (!\i_LED_Blink|s_counter_500ms[17]~60\ & VCC))
-- \i_LED_Blink|s_counter_500ms[18]~62\ = CARRY((\i_LED_Blink|s_counter_500ms\(18) & !\i_LED_Blink|s_counter_500ms[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(18),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[17]~60\,
	combout => \i_LED_Blink|s_counter_500ms[18]~61_combout\,
	cout => \i_LED_Blink|s_counter_500ms[18]~62\);

-- Location: LCCOMB_X44_Y25_N14
\i_LED_Blink|s_counter_500ms[19]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[19]~63_combout\ = (\i_LED_Blink|s_counter_500ms\(19) & (!\i_LED_Blink|s_counter_500ms[18]~62\)) # (!\i_LED_Blink|s_counter_500ms\(19) & ((\i_LED_Blink|s_counter_500ms[18]~62\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[19]~64\ = CARRY((!\i_LED_Blink|s_counter_500ms[18]~62\) # (!\i_LED_Blink|s_counter_500ms\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(19),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[18]~62\,
	combout => \i_LED_Blink|s_counter_500ms[19]~63_combout\,
	cout => \i_LED_Blink|s_counter_500ms[19]~64\);

-- Location: LCFF_X44_Y25_N15
\i_LED_Blink|s_counter_500ms[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[19]~63_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(19));

-- Location: LCCOMB_X44_Y25_N16
\i_LED_Blink|s_counter_500ms[20]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[20]~65_combout\ = (\i_LED_Blink|s_counter_500ms\(20) & (\i_LED_Blink|s_counter_500ms[19]~64\ $ (GND))) # (!\i_LED_Blink|s_counter_500ms\(20) & (!\i_LED_Blink|s_counter_500ms[19]~64\ & VCC))
-- \i_LED_Blink|s_counter_500ms[20]~66\ = CARRY((\i_LED_Blink|s_counter_500ms\(20) & !\i_LED_Blink|s_counter_500ms[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(20),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[19]~64\,
	combout => \i_LED_Blink|s_counter_500ms[20]~65_combout\,
	cout => \i_LED_Blink|s_counter_500ms[20]~66\);

-- Location: LCCOMB_X44_Y25_N18
\i_LED_Blink|s_counter_500ms[21]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_counter_500ms[21]~67_combout\ = (\i_LED_Blink|s_counter_500ms\(21) & (!\i_LED_Blink|s_counter_500ms[20]~66\)) # (!\i_LED_Blink|s_counter_500ms\(21) & ((\i_LED_Blink|s_counter_500ms[20]~66\) # (GND)))
-- \i_LED_Blink|s_counter_500ms[21]~68\ = CARRY((!\i_LED_Blink|s_counter_500ms[20]~66\) # (!\i_LED_Blink|s_counter_500ms\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_LED_Blink|s_counter_500ms\(21),
	datad => VCC,
	cin => \i_LED_Blink|s_counter_500ms[20]~66\,
	combout => \i_LED_Blink|s_counter_500ms[21]~67_combout\,
	cout => \i_LED_Blink|s_counter_500ms[21]~68\);

-- Location: LCFF_X44_Y25_N19
\i_LED_Blink|s_counter_500ms[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[21]~67_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(21));

-- Location: LCFF_X44_Y25_N23
\i_LED_Blink|s_counter_500ms[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[23]~71_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(23));

-- Location: LCFF_X44_Y26_N25
\i_LED_Blink|s_counter_500ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[8]~41_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(8));

-- Location: LCCOMB_X45_Y26_N8
\i_LED_Blink|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~2_combout\ = (!\i_LED_Blink|s_counter_500ms\(6) & (!\i_LED_Blink|s_counter_500ms\(7) & (!\i_LED_Blink|s_counter_500ms\(9) & !\i_LED_Blink|s_counter_500ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(6),
	datab => \i_LED_Blink|s_counter_500ms\(7),
	datac => \i_LED_Blink|s_counter_500ms\(9),
	datad => \i_LED_Blink|s_counter_500ms\(8),
	combout => \i_LED_Blink|LessThan0~2_combout\);

-- Location: LCFF_X44_Y26_N31
\i_LED_Blink|s_counter_500ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[11]~47_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(11));

-- Location: LCCOMB_X44_Y26_N4
\i_LED_Blink|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~1_combout\ = (((!\i_LED_Blink|s_counter_500ms\(13)) # (!\i_LED_Blink|s_counter_500ms\(11))) # (!\i_LED_Blink|s_counter_500ms\(12))) # (!\i_LED_Blink|s_counter_500ms\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(14),
	datab => \i_LED_Blink|s_counter_500ms\(12),
	datac => \i_LED_Blink|s_counter_500ms\(11),
	datad => \i_LED_Blink|s_counter_500ms\(13),
	combout => \i_LED_Blink|LessThan0~1_combout\);

-- Location: LCFF_X44_Y25_N7
\i_LED_Blink|s_counter_500ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[15]~55_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(15));

-- Location: LCCOMB_X44_Y26_N6
\i_LED_Blink|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~0_combout\ = (!\i_LED_Blink|s_counter_500ms\(17) & (!\i_LED_Blink|s_counter_500ms\(15) & !\i_LED_Blink|s_counter_500ms\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(17),
	datab => \i_LED_Blink|s_counter_500ms\(15),
	datac => \i_LED_Blink|s_counter_500ms\(23),
	combout => \i_LED_Blink|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y26_N2
\i_LED_Blink|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~3_combout\ = (\i_LED_Blink|LessThan0~0_combout\ & ((\i_LED_Blink|LessThan0~1_combout\) # ((!\i_LED_Blink|s_counter_500ms\(10) & \i_LED_Blink|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(10),
	datab => \i_LED_Blink|LessThan0~2_combout\,
	datac => \i_LED_Blink|LessThan0~1_combout\,
	datad => \i_LED_Blink|LessThan0~0_combout\,
	combout => \i_LED_Blink|LessThan0~3_combout\);

-- Location: LCFF_X44_Y25_N17
\i_LED_Blink|s_counter_500ms[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[20]~65_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(20));

-- Location: LCFF_X44_Y25_N13
\i_LED_Blink|s_counter_500ms[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_counter_500ms[18]~61_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	sclr => \i_LED_Blink|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_counter_500ms\(18));

-- Location: LCCOMB_X44_Y25_N28
\i_LED_Blink|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~4_combout\ = (((!\i_LED_Blink|s_counter_500ms\(17) & !\i_LED_Blink|s_counter_500ms\(16))) # (!\i_LED_Blink|s_counter_500ms\(18))) # (!\i_LED_Blink|s_counter_500ms\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(17),
	datab => \i_LED_Blink|s_counter_500ms\(19),
	datac => \i_LED_Blink|s_counter_500ms\(16),
	datad => \i_LED_Blink|s_counter_500ms\(18),
	combout => \i_LED_Blink|LessThan0~4_combout\);

-- Location: LCCOMB_X44_Y25_N30
\i_LED_Blink|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~5_combout\ = (((\i_LED_Blink|LessThan0~4_combout\) # (!\i_LED_Blink|s_counter_500ms\(20))) # (!\i_LED_Blink|s_counter_500ms\(21))) # (!\i_LED_Blink|s_counter_500ms\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(22),
	datab => \i_LED_Blink|s_counter_500ms\(21),
	datac => \i_LED_Blink|s_counter_500ms\(20),
	datad => \i_LED_Blink|LessThan0~4_combout\,
	combout => \i_LED_Blink|LessThan0~5_combout\);

-- Location: LCCOMB_X44_Y25_N26
\i_LED_Blink|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|LessThan0~6_combout\ = (\i_LED_Blink|s_counter_500ms\(24) & (!\i_LED_Blink|LessThan0~3_combout\ & ((\i_LED_Blink|s_counter_500ms\(23)) # (!\i_LED_Blink|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_LED_Blink|s_counter_500ms\(24),
	datab => \i_LED_Blink|s_counter_500ms\(23),
	datac => \i_LED_Blink|LessThan0~3_combout\,
	datad => \i_LED_Blink|LessThan0~5_combout\,
	combout => \i_LED_Blink|LessThan0~6_combout\);

-- Location: LCFF_X44_Y25_N27
\i_LED_Blink|s_tick\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|LessThan0~6_combout\,
	ena => \s_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_tick~regout\);

-- Location: LCCOMB_X45_Y26_N18
\i_LED_Blink|s_led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_LED_Blink|s_led~0_combout\ = \i_LED_Blink|s_led~regout\ $ (\i_LED_Blink|s_tick~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_LED_Blink|s_led~regout\,
	datad => \i_LED_Blink|s_tick~regout\,
	combout => \i_LED_Blink|s_led~0_combout\);

-- Location: LCFF_X45_Y26_N19
\i_LED_Blink|s_led\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_LED_Blink|s_led~0_combout\,
	aclr => \ALT_INV_s_reset_n_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_LED_Blink|s_led~regout\);

-- Location: LCCOMB_X47_Y26_N18
\i_serial_uart|rx_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~12_combout\ = (\i_serial_uart|rx_state.s_rx_data~regout\ & ((!\i_serial_uart|rx_bit_cnt_wrap~regout\) # (!\i_serial_uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|rx_state~12_combout\);

-- Location: LCCOMB_X46_Y26_N6
\i_serial_uart|rx_bit_cnt[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[0]~13_combout\ = \i_serial_uart|rx_bit_cnt\(0) $ (VCC)
-- \i_serial_uart|rx_bit_cnt[0]~14\ = CARRY(\i_serial_uart|rx_bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(0),
	datad => VCC,
	combout => \i_serial_uart|rx_bit_cnt[0]~13_combout\,
	cout => \i_serial_uart|rx_bit_cnt[0]~14\);

-- Location: LCCOMB_X46_Y26_N8
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

-- Location: LCCOMB_X45_Y26_N30
\i_serial_uart|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~0_combout\ = ((!\i_serial_uart|rx_bit_cnt\(10) & !\i_serial_uart|rx_bit_cnt\(11))) # (!\i_serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(12),
	datac => \i_serial_uart|rx_bit_cnt\(10),
	datad => \i_serial_uart|rx_bit_cnt\(11),
	combout => \i_serial_uart|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y26_N24
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

-- Location: LCFF_X46_Y26_N25
\i_serial_uart|rx_bit_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[9]~31_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(9));

-- Location: LCCOMB_X46_Y26_N20
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

-- Location: LCFF_X46_Y26_N21
\i_serial_uart|rx_bit_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[7]~27_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(7));

-- Location: LCCOMB_X45_Y26_N0
\i_serial_uart|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(11) & (!\i_serial_uart|rx_bit_cnt\(9) & (!\i_serial_uart|rx_bit_cnt\(8) & !\i_serial_uart|rx_bit_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(11),
	datab => \i_serial_uart|rx_bit_cnt\(9),
	datac => \i_serial_uart|rx_bit_cnt\(8),
	datad => \i_serial_uart|rx_bit_cnt\(7),
	combout => \i_serial_uart|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y26_N14
\i_serial_uart|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~2_combout\ = ((!\i_serial_uart|rx_bit_cnt\(5) & !\i_serial_uart|rx_bit_cnt\(4))) # (!\i_serial_uart|rx_bit_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datac => \i_serial_uart|rx_bit_cnt\(4),
	datad => \i_serial_uart|rx_bit_cnt\(6),
	combout => \i_serial_uart|LessThan0~2_combout\);

-- Location: LCFF_X46_Y26_N7
\i_serial_uart|rx_bit_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[0]~13_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(0));

-- Location: LCCOMB_X46_Y26_N10
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

-- Location: LCFF_X46_Y26_N11
\i_serial_uart|rx_bit_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[2]~17_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(2));

-- Location: LCCOMB_X46_Y26_N2
\i_serial_uart|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~3_combout\ = (!\i_serial_uart|rx_bit_cnt\(3) & (((!\i_serial_uart|rx_bit_cnt\(2)) # (!\i_serial_uart|rx_bit_cnt\(0))) # (!\i_serial_uart|rx_bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(3),
	datab => \i_serial_uart|rx_bit_cnt\(1),
	datac => \i_serial_uart|rx_bit_cnt\(0),
	datad => \i_serial_uart|rx_bit_cnt\(2),
	combout => \i_serial_uart|LessThan0~3_combout\);

-- Location: LCCOMB_X45_Y26_N16
\i_serial_uart|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan0~4_combout\ = (\i_serial_uart|LessThan0~1_combout\ & ((\i_serial_uart|LessThan0~2_combout\) # ((!\i_serial_uart|rx_bit_cnt\(5) & \i_serial_uart|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datab => \i_serial_uart|LessThan0~1_combout\,
	datac => \i_serial_uart|LessThan0~2_combout\,
	datad => \i_serial_uart|LessThan0~3_combout\,
	combout => \i_serial_uart|LessThan0~4_combout\);

-- Location: LCCOMB_X46_Y26_N0
\i_serial_uart|rx_bit_cnt[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[2]~35_combout\ = ((!\i_serial_uart|LessThan0~0_combout\ & !\i_serial_uart|LessThan0~4_combout\)) # (!\i_serial_uart|rx_bit_cnt_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|LessThan0~0_combout\,
	datad => \i_serial_uart|LessThan0~4_combout\,
	combout => \i_serial_uart|rx_bit_cnt[2]~35_combout\);

-- Location: LCFF_X46_Y26_N9
\i_serial_uart|rx_bit_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[1]~15_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(1));

-- Location: LCCOMB_X46_Y26_N12
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

-- Location: LCCOMB_X46_Y26_N14
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

-- Location: LCFF_X46_Y26_N15
\i_serial_uart|rx_bit_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[4]~21_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(4));

-- Location: LCCOMB_X46_Y26_N18
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

-- Location: LCFF_X46_Y26_N19
\i_serial_uart|rx_bit_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[6]~25_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(6));

-- Location: LCCOMB_X46_Y26_N22
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

-- Location: LCFF_X46_Y26_N23
\i_serial_uart|rx_bit_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[8]~29_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(8));

-- Location: LCCOMB_X46_Y26_N26
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

-- Location: LCFF_X46_Y26_N27
\i_serial_uart|rx_bit_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[10]~33_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(10));

-- Location: LCCOMB_X46_Y26_N28
\i_serial_uart|rx_bit_cnt[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[11]~36_combout\ = (\i_serial_uart|rx_bit_cnt\(11) & (!\i_serial_uart|rx_bit_cnt[10]~34\)) # (!\i_serial_uart|rx_bit_cnt\(11) & ((\i_serial_uart|rx_bit_cnt[10]~34\) # (GND)))
-- \i_serial_uart|rx_bit_cnt[11]~37\ = CARRY((!\i_serial_uart|rx_bit_cnt[10]~34\) # (!\i_serial_uart|rx_bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt\(11),
	datad => VCC,
	cin => \i_serial_uart|rx_bit_cnt[10]~34\,
	combout => \i_serial_uart|rx_bit_cnt[11]~36_combout\,
	cout => \i_serial_uart|rx_bit_cnt[11]~37\);

-- Location: LCFF_X46_Y26_N29
\i_serial_uart|rx_bit_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[11]~36_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(11));

-- Location: LCCOMB_X46_Y26_N30
\i_serial_uart|rx_bit_cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt[12]~38_combout\ = \i_serial_uart|rx_bit_cnt[11]~37\ $ (!\i_serial_uart|rx_bit_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|rx_bit_cnt\(12),
	cin => \i_serial_uart|rx_bit_cnt[11]~37\,
	combout => \i_serial_uart|rx_bit_cnt[12]~38_combout\);

-- Location: LCFF_X46_Y26_N31
\i_serial_uart|rx_bit_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[12]~38_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(12));

-- Location: LCFF_X46_Y26_N13
\i_serial_uart|rx_bit_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt[3]~19_combout\,
	sclr => \i_serial_uart|rx_bit_cnt[2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt\(3));

-- Location: LCCOMB_X45_Y26_N28
\i_serial_uart|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|LessThan1~1_combout\ = (!\i_serial_uart|rx_bit_cnt\(4) & (!\i_serial_uart|rx_bit_cnt\(2) & ((!\i_serial_uart|rx_bit_cnt\(1)) # (!\i_serial_uart|rx_bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(0),
	datab => \i_serial_uart|rx_bit_cnt\(4),
	datac => \i_serial_uart|rx_bit_cnt\(1),
	datad => \i_serial_uart|rx_bit_cnt\(2),
	combout => \i_serial_uart|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y26_N6
\i_serial_uart|rx_bit_cnt_half~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~0_combout\ = (\i_serial_uart|rx_bit_cnt\(5) & (!\i_serial_uart|LessThan1~1_combout\ & ((\i_serial_uart|rx_bit_cnt\(4)) # (\i_serial_uart|rx_bit_cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt\(5),
	datab => \i_serial_uart|rx_bit_cnt\(4),
	datac => \i_serial_uart|rx_bit_cnt\(3),
	datad => \i_serial_uart|LessThan1~1_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~0_combout\);

-- Location: LCCOMB_X45_Y26_N20
\i_serial_uart|rx_bit_cnt_half~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~1_combout\ = (\i_serial_uart|LessThan1~0_combout\ & (\i_serial_uart|rx_bit_cnt_half~0_combout\ & ((\i_serial_uart|rx_bit_cnt\(9)) # (\i_serial_uart|rx_bit_cnt\(10))))) # (!\i_serial_uart|LessThan1~0_combout\ & 
-- ((\i_serial_uart|rx_bit_cnt\(9)) # ((\i_serial_uart|rx_bit_cnt\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|LessThan1~0_combout\,
	datab => \i_serial_uart|rx_bit_cnt\(9),
	datac => \i_serial_uart|rx_bit_cnt\(10),
	datad => \i_serial_uart|rx_bit_cnt_half~0_combout\,
	combout => \i_serial_uart|rx_bit_cnt_half~1_combout\);

-- Location: LCCOMB_X45_Y26_N4
\i_serial_uart|rx_bit_cnt_half~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_half~2_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & ((\i_serial_uart|rx_bit_cnt\(12)) # ((\i_serial_uart|rx_bit_cnt_half~1_combout\ & \i_serial_uart|rx_bit_cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_en~regout\,
	datab => \i_serial_uart|rx_bit_cnt\(12),
	datac => \i_serial_uart|rx_bit_cnt_half~1_combout\,
	datad => \i_serial_uart|rx_bit_cnt\(11),
	combout => \i_serial_uart|rx_bit_cnt_half~2_combout\);

-- Location: LCFF_X45_Y26_N5
\i_serial_uart|rx_bit_cnt_half\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_half~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_half~regout\);

-- Location: LCCOMB_X47_Y26_N14
\i_serial_uart|rx_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~14_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & ((\i_serial_uart|rx_state.s_stop_bit~regout\) # ((!\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\)))) # 
-- (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((!\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|rx_state~14_combout\);

-- Location: LCCOMB_X47_Y26_N28
\i_serial_uart|rx_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~15_combout\ = (\i_serial_uart|reset_2r~regout\ & !\i_serial_uart|rx_state~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datac => \i_serial_uart|rx_state~14_combout\,
	combout => \i_serial_uart|rx_state~15_combout\);

-- Location: LCFF_X47_Y26_N29
\i_serial_uart|rx_state.s_idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_idle~regout\);

-- Location: LCCOMB_X47_Y26_N4
\i_serial_uart|rx_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~13_combout\ = (\i_serial_uart|reset_2r~regout\ & ((\i_serial_uart|rx_state~12_combout\) # ((\i_serial_uart|rx_bit_cnt_half~regout\ & !\i_serial_uart|rx_state.s_idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datab => \i_serial_uart|rx_state~12_combout\,
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|rx_state~13_combout\);

-- Location: LCFF_X47_Y26_N5
\i_serial_uart|rx_state.s_rx_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_rx_data~regout\);

-- Location: LCCOMB_X45_Y26_N22
\i_serial_uart|reset_r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|reset_r~feeder_combout\ = \s_reset_n_2r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_reset_n_2r~regout\,
	combout => \i_serial_uart|reset_r~feeder_combout\);

-- Location: LCFF_X45_Y26_N23
\i_serial_uart|reset_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|reset_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_r~regout\);

-- Location: LCCOMB_X47_Y26_N24
\i_serial_uart|reset_2r~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|reset_2r~feeder_combout\ = \i_serial_uart|reset_r~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_serial_uart|reset_r~regout\,
	combout => \i_serial_uart|reset_2r~feeder_combout\);

-- Location: LCFF_X47_Y26_N25
\i_serial_uart|reset_2r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|reset_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|reset_2r~regout\);

-- Location: LCCOMB_X47_Y26_N22
\i_serial_uart|rx_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~10_combout\ = (\i_serial_uart|Equal0~0_combout\ & (\i_serial_uart|rx_state.s_rx_data~regout\ & (\i_serial_uart|reset_2r~regout\ & \i_serial_uart|rx_bit_cnt_wrap~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|Equal0~0_combout\,
	datab => \i_serial_uart|rx_state.s_rx_data~regout\,
	datac => \i_serial_uart|reset_2r~regout\,
	datad => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	combout => \i_serial_uart|rx_state~10_combout\);

-- Location: LCCOMB_X47_Y26_N30
\i_serial_uart|rx_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_state~11_combout\ = (\i_serial_uart|rx_state~10_combout\) # ((\i_serial_uart|reset_2r~regout\ & (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|reset_2r~regout\,
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datad => \i_serial_uart|rx_state~10_combout\,
	combout => \i_serial_uart|rx_state~11_combout\);

-- Location: LCFF_X47_Y26_N31
\i_serial_uart|rx_state.s_stop_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_state.s_stop_bit~regout\);

-- Location: LCCOMB_X47_Y26_N10
\i_serial_uart|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|Selector0~0_combout\ = (\i_serial_uart|rx_bit_cnt_wrap~regout\ & (!\i_serial_uart|rx_state.s_stop_bit~regout\ & ((\i_serial_uart|rx_state.s_idle~regout\) # (!\i_serial_uart|rx_bit_cnt_half~regout\)))) # 
-- (!\i_serial_uart|rx_bit_cnt_wrap~regout\ & (((\i_serial_uart|rx_state.s_idle~regout\) # (!\i_serial_uart|rx_bit_cnt_half~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datab => \i_serial_uart|rx_state.s_stop_bit~regout\,
	datac => \i_serial_uart|rx_bit_cnt_half~regout\,
	datad => \i_serial_uart|rx_state.s_idle~regout\,
	combout => \i_serial_uart|Selector0~0_combout\);

-- Location: LCFF_X47_Y26_N11
\i_serial_uart|rx_bit_cnt_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_en~regout\);

-- Location: LCCOMB_X46_Y26_N4
\i_serial_uart|rx_bit_cnt_wrap~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|rx_bit_cnt_wrap~0_combout\ = (\i_serial_uart|rx_bit_cnt_en~regout\ & (!\i_serial_uart|LessThan0~0_combout\ & !\i_serial_uart|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_en~regout\,
	datac => \i_serial_uart|LessThan0~0_combout\,
	datad => \i_serial_uart|LessThan0~4_combout\,
	combout => \i_serial_uart|rx_bit_cnt_wrap~0_combout\);

-- Location: LCFF_X46_Y26_N5
\i_serial_uart|rx_bit_cnt_wrap\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|rx_bit_cnt_wrap~regout\);

-- Location: LCCOMB_X47_Y26_N0
\i_serial_uart|received_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_serial_uart|received_error~0_combout\ = (\i_serial_uart|received_error~regout\) # ((\i_serial_uart|rx_bit_cnt_wrap~regout\ & \i_serial_uart|rx_state.s_stop_bit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_serial_uart|rx_bit_cnt_wrap~regout\,
	datac => \i_serial_uart|received_error~regout\,
	datad => \i_serial_uart|rx_state.s_stop_bit~regout\,
	combout => \i_serial_uart|received_error~0_combout\);

-- Location: LCFF_X47_Y26_N1
\i_serial_uart|received_error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \i_serial_uart|received_error~0_combout\,
	sclr => \i_serial_uart|ALT_INV_reset_2r~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_serial_uart|received_error~regout\);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => ALT_INV_s_hex0(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \i_LED_Blink|s_led~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


