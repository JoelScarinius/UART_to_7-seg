library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity LED_Blink is
port(
	clock_50 : in std_logic; -- 50 MHz clock
	key_n    : in std_logic;
	ledr     : out std_logic
	);
end entity LED_Blink;

architecture rtl of LED_Blink is

	-- Constant and type declarations
	-- constant c_500ms_count_max : integer := 25000000;
	constant c_500ms_count_max : integer := 25;
	
	-- Internal signal declarations
	signal s_reset_n           : std_logic;
	signal s_counter_500ms     : integer range 0 to c_500ms_count_max;
	signal s_tick              : std_logic;
	signal s_led               : std_logic;
begin
	-- Assign internal signals from entity inputs
	-- Active low reset reset from KEY0
	s_reset_n <= key_n;
	
	-- Assign internal signals to entity outputs
	ledr <= s_led;
	
	p_tick : process(clock_50, s_reset_n)
	begin
		if s_reset_n = '0' then
			s_counter_500ms <= 0;
		elsif rising_edge(clock_50) then
			if s_counter_500ms < c_500ms_count_max then
				s_counter_500ms <= s_counter_500ms + 1;
				s_tick <= '0';
			else
				s_counter_500ms <= 0;
				s_tick <= '1';
			end if;
		end if;
	end process p_tick;

	p_toggle : process(clock_50, s_reset_n)
	begin
		if s_reset_n = '0' then
			s_led <= '0';
		elsif rising_edge(clock_50) then
			if s_tick = '1' then
				s_led <= not(s_led);
			end if;
		end if;
	end process p_toggle;
end architecture rtl;
	