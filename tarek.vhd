library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity led_blink is
    Port (
        clk        : in  std_logic;
        rst_n      : in  std_logic;
        led        : out std_logic
    );
end led_blink;

architecture Behavioral of led_blink is
    signal counter : integer range 0 to 27000000 := 0;
    signal led_reg : std_logic := '1';
begin
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            counter <= 0;
            led_reg <= '1';
        elsif rising_edge(clk) then
            if counter < 27000000 then
                counter <= counter + 1;
            else
                counter <= 0;
                led_reg <= not led_reg;
            end if;
        end if;
    end process;

    led <= led_reg;
end Behavioral;
