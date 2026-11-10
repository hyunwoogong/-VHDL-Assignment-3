library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem3_tb is
end problem3_tb;

architecture Behavioral of problem3_tb is
    signal d   : STD_LOGIC := '0';
    signal clk : STD_LOGIC := '0';
    signal q   : STD_LOGIC;
begin
    uut: entity work.problem3
        port map (
            d   => d,
            clk => clk,
            q   => q
        );

    process
    begin
        -- Initial state
        d <= '0';
        clk <= '0';
        wait for 10 ns;

        -- Rising edge: Q = 0
        clk <= '1';
        wait for 10 ns;

        -- D changes while clk = 1: Hold
        d <= '1';
        wait for 10 ns;

        -- Falling edge: Hold
        clk <= '0';
        wait for 10 ns;

        -- Rising edge: Q = 1
        clk <= '1';
        wait for 10 ns;

        -- D changes while clk = 1: Hold
        d <= '0';
        wait for 10 ns;

        -- Falling edge: Hold
        clk <= '0';
        wait for 10 ns;

        -- Rising edge: Q = 0
        clk <= '1';
        wait for 10 ns;

        wait;
    end process;
end Behavioral;
