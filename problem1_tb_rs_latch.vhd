library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_rs_latch is
end tb_rs_latch;

architecture Behavioral of tb_rs_latch is
    signal R    : STD_LOGIC := '1';
    signal S    : STD_LOGIC := '0';
    signal Q    : STD_LOGIC;
    signal Qbar : STD_LOGIC;
begin

    UUT: entity work.rs_latch
        port map (
            R => R,
            S => S,
            Q => Q,
            Qbar => Qbar
        );

    process
    begin
        R <= '1'; S <= '0';  -- Reset
        wait for 20 ns;

        R <= '0'; S <= '0';  -- Hold
        wait for 20 ns;

        R <= '0'; S <= '1';  -- Set
        wait for 20 ns;

        R <= '0'; S <= '0';  -- Hold
        wait for 20 ns;

        R <= '1'; S <= '1';  -- Forbidden
        wait for 20 ns;

        R <= '1'; S <= '0';  -- Reset
        wait for 20 ns;

        wait;
    end process;

end Behavioral;
