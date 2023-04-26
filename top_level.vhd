library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;

entity top_level is
    port (
        clock_50 : in std_logic;
        key_n    : in std_logic;
        uart_rxd : in std_logic;
        uart_txd : out std_logic;
        hex0     : out std_logic_vector(6 downto 0);
        ledr     : out std_logic_vector(1 downto 0)
    );
end top_level;

architecture rtl of top_level is

    signal seven_seg_vector    : std_logic_vector(6 downto 0);
    signal led                : std_logic;
    signal received_data       : std_logic_vector(7 downto 0);
    signal received_data_valid : std_logic;
    signal received_error      : std_logic;
    signal transmit_ready      : std_logic;
    signal transmit_data_valid : std_logic;
    signal transmit_data       : std_logic_vector(7 downto 0);
    
    -- double synchronize
    signal reset_n     : std_logic;
    signal reset_n_r   : std_logic;
    signal reset_n_2r  : std_logic;

begin

    reset_n <= key_n;
    ledr(0) <= led;
    ledr(1) <= received_error;
    hex0    <= seven_seg_vector;

    i_serial_uart : entity work.serial_uart
        generic map (
            g_reset_active_state  => '0',
            g_serial_speed_bps    => 9600, -- 9600 bps
            g_clk_period_ns       => 20, -- 50 MHz
            g_parity              => 0 -- no parity
        )
        port map (
            clk                   => clock_50,
            reset                 => reset_n_2r,
            rx                    => uart_rxd,
            tx                    => uart_txd,

            received_data         => received_data,
            received_data_valid   => received_data_valid,
            received_error        => received_error,
            received_parity_error => open,

            transmit_ready        => transmit_ready,
            transmit_data_valid   => transmit_data_valid,
            transmit_data         => transmit_data
        );

    i_LED_Blink : entity work.LED_Blink
        port map (
            clock_50 => clock_50,
            key_n    => reset_n_2r,
            ledr     => led
        );

    p_double_sync : process(clock_50)
    begin
        if rising_edge(clock_50) then
            reset_n_r   <= reset_n;
            reset_n_2r  <= reset_n_r;
        end if;
    end process p_double_sync;

    p_run_top_level_design : process(clock_50, reset_n_2r)
    begin
        if (reset_n_2r = '0') then
            seven_seg_vector <= "1111111"; -- off
        elsif rising_edge(clock_50) then
            if (received_data_valid = '1') then
                seven_seg_vector <= fn_ascii_to_7seg(received_data);
            end if;
        end if;
    end process p_run_top_level_design;
end architecture;