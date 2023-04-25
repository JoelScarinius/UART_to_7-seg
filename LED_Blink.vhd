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
	constant c_500ms_count_max : integer := 25000000;
	
	-- Internal signal declarations
	signal reset_n           : std_logic;
	signal counter_500ms     : integer range 0 to c_500ms_count_max;
	signal tick              : std_logic;
	signal led               : std_logic;
begin
	-- Active low reset reset from KEY0
	reset_n <= key_n;
	
	-- Assign internal signals to entity outputs
	ledr <= led;
	
	p_tick : process(clock_50, reset_n)
	begin
		if reset_n = '0' then
			counter_500ms <= 0;
		elsif rising_edge(clock_50) then
			if counter_500ms < c_500ms_count_max then
				counter_500ms <= counter_500ms + 1;
				tick <= '0';
			else
				counter_500ms <= 0;
				tick <= '1';
			end if;
		end if;
	end process p_tick;

	p_toggle : process(clock_50, reset_n)
	begin
		if reset_n = '0' then
			led <= '0';
		elsif rising_edge(clock_50) then
			if tick = '1' then
				led <= not(led);
			end if;
		end if;
	end process p_toggle;
end architecture rtl;
	