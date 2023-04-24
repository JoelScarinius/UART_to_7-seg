library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package seven_seg_pkg is
    --Declaration part
    type t_7seg_numbers is array (16 downto 0) of std_logic_vector(6 downto 0);
    constant c_7seg_numbers : t_7seg_numbers := (
        "0111111", -- 16 = -
        "0001110", -- 15 = F
        "0000110", -- 14 = E
        "1000001", -- 13 = d
        "1000110", -- 12 = C
        "0000011", -- 11 = b
        "0100000", -- 10 = a
        "0010000", -- 9 = 9
        "0000000", -- 8 = 8
        "1111000", -- 7 = 7
        "0000010", -- 6 = 6
        "0010010", -- 5 = 5
        "0011001", -- 4 = 4
        "0110000", -- 3 = 3
        "0100100", -- 2 = 2
        "1111001", -- 1 = 1
        "1000000"  -- 0 = 0
    );

    -- Declare functions
    function fn_ascii_to_7seg(
        ascii_char : in std_logic_vector(7 downto 0))
        return std_logic_vector;
end package seven_seg_pkg;
package body seven_seg_pkg is
    -- Package body
    function fn_ascii_to_7seg(
        ascii_char : in std_logic_vector(7 downto 0))
        return std_logic_vector is
        variable v_return_vector : std_logic_vector(6 downto 0);
        variable v_ascii_char_natural : natural range 0 to 255;
    begin
        v_ascii_char_natural := to_integer(unsigned(ascii_char));

        case v_ascii_char_natural is
            when 48 => -- ASCII "0"
                v_return_vector := c_7seg_numbers(0);
            when 49 => -- ASCII "1"
                v_return_vector := c_7seg_numbers(1);
            when 50 => -- ASCII "2"
                v_return_vector := c_7seg_numbers(2);
            when 51 => -- ASCII "3"
                v_return_vector := c_7seg_numbers(3);
            when 52 => -- ASCII "4"
                v_return_vector := c_7seg_numbers(4);
            when 53 => -- ASCII "5"
                v_return_vector := c_7seg_numbers(5);
            when 54 => -- ASCII "6"
                v_return_vector := c_7seg_numbers(6);
            when 55 => -- ASCII "7"
                v_return_vector := c_7seg_numbers(7);
            when 56 => -- ASCII "8"
                v_return_vector := c_7seg_numbers(8);
            when 57 => -- ASCII "9"
                v_return_vector := c_7seg_numbers(9);
            when 58 => -- ASCII ":"
                v_return_vector := c_7seg_numbers(10);
            when 65 | 97 => -- ASCII "A" or "a"
                v_return_vector := c_7seg_numbers(11);
            when 66 | 98 => -- ASCII "B" or "b"
                v_return_vector := c_7seg_numbers(12);
            when 67 | 99 => -- ASCII "C" or "c"
                v_return_vector := c_7seg_numbers(13);
            when 68 | 100 => -- ASCII "D" or "d"
                v_return_vector := c_7seg_numbers(14);
            when 69 | 101 => -- ASCII "E" or "e"
                v_return_vector := c_7seg_numbers(15);
            when 70 | 102 => -- ASCII "F" or "f"
                v_return_vector := c_7seg_numbers(16);
            when others =>
                v_return_vector := c_7seg_numbers(16);
        end case;
        return v_return_vector;
    end function fn_ascii_to_7seg;
end package body seven_seg_pkg;