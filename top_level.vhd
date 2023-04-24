library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;


entity top_level is
    port (
        clock_50 : in std_logic;
        key_n    : in std_logic;
        hex0     : out std_logic_vector(6 downto 0);
        ledr     : out std_logic_vector(1 downto 0)
    );
end top_level;

architecture rtl of top_level is

    signal s_hex0                : std_logic_vector(6 downto 0);
    signal s_ledr                : std_logic;
    signal s_uart_rxd            : std_logic;
    signal s_uart_txd            : std_logic;
    signal s_received_data       : std_logic_vector(7 downto 0);
    signal s_received_data_valid : std_logic;
    signal s_received_error      : std_logic;
    signal s_transmit_ready      : std_logic;
    signal s_transmit_data_valid : std_logic;
    signal s_transmit_data       : std_logic_vector(7 downto 0);
    
    -- double synchronize
    signal s_uart_rxd_r  : std_logic;
    signal s_uart_rxd_2r : std_logic;
    signal s_reset_n     : std_logic;
    signal s_reset_n_r   : std_logic;
    signal s_reset_n_2r  : std_logic;

begin

    s_reset_n <= key_n;
    ledr(0) <= s_ledr;
    ledr(1) <= s_received_error;
    hex0    <= s_hex0;

    i_serial_uart : entity work.serial_uart
        generic map (
            g_reset_active_state  => '0',
            g_serial_speed_bps    => 9600, -- 9600 bps
            g_clk_period_ns       => 20, -- 50 MHz
            g_parity              => 0 -- no parity
        )
        port map (
            clk                   => clock_50,
            reset                 => s_reset_n_2r,
            rx                    => s_uart_rxd,
            tx                    => s_uart_txd,

            received_data         => s_received_data,
            received_data_valid   => s_received_data_valid,
            received_error        => s_received_error,
            received_parity_error => open,

            transmit_ready        => s_transmit_ready,
            transmit_data_valid   => s_transmit_data_valid,
            transmit_data         => s_transmit_data
        );

    i_LED_Blink : entity work.LED_Blink
        port map (
            clock_50 => clock_50,
            key_n    => s_reset_n_2r,
            ledr     => s_ledr
        );

    p_double_sync : process(clock_50)
    begin
        if rising_edge(clock_50) then
            s_uart_rxd_r  <= s_uart_rxd;
            s_uart_rxd_2r <= s_uart_rxd_r;
            s_reset_n_r   <= s_reset_n;
            s_reset_n_2r  <= s_reset_n_r;
        end if;
    end process p_double_sync;

    p_run_top_level_design : process(clock_50, s_reset_n_2r)
    begin
        if (s_reset_n_2r = '0') then
            s_hex0 <= "11111111"; -- off
            s_ledr <= '0'; -- off
            s_received_error <= '0'; -- off
        elsif rising_edge(clock_50) then
            s_hex0 <= fn_ascii_to_7seg(s_received_data);
        end if;
    end process p_run_top_level_design;
end architecture;