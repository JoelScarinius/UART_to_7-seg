library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
library work;
    use work.seven_seg_pkg.all;


entity top_level is
    port (
        clock_50 : in std_logic;
        key_n    : in std_logic_vector(1 downto 0);
        hex0     : out std_logic_vector(6 downto 0);
    );
end top_level;

architecture rtl of top_level is

begin

    i_serial_uart : entity work.serial_uart
        port map (
            clock_50 => clock_50,
            key_n    => key_n,
            hex0     => hex0
        );

    process(clock_50)
    begin
        if rising_edge(clock_50) then
            if key_n(0) = '0' then
                hex0 <= seven_seg(0);
            elsif key_n(1) = '0' then
                hex0 <= seven_seg(1);
            else
                hex0 <= seven_seg(2);
            end if;
        end if;
    end process;
end architecture;