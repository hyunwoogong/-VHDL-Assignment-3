library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem2_tb is
end problem2_tb;

architecture Behavioral of problem2_tb is
    signal d  : STD_LOGIC := '0';
    signal en : STD_LOGIC := '0';
    signal q  : STD_LOGIC;
begin
    uut: entity work.problem2
        port map (
            d => d,
            en => en,
            q => q
        );

    process
    begin
        -- Reset
        d <= '0'; en <= '1';
        wait for 10 ns;

        -- Set
        d <= '1'; en <= '1';
        wait for 10 ns;

        -- Hold Q=1
        en <= '0';
        wait for 10 ns;
        d <= '0';
        wait for 10 ns;

        -- Reset
        en <= '1';
        wait for 10 ns;

        -- Hold Q=0
        en <= '0';
        wait for 10 ns;
        d <= '1';
        wait for 10 ns;

        wait;
    end process;
end Behavioral;
