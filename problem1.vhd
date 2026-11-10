library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem1 is
    Port (
        S     : in  STD_LOGIC;
        R     : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Q_bar : out STD_LOGIC
    );
end problem1;

architecture Behavioral of problem1 is
    signal q_reg  : STD_LOGIC := '0';
    signal qb_reg : STD_LOGIC := '1';
begin

    process(S, R)
    begin
        if (S = '1' and R = '0') then
            -- Set
            q_reg  <= '1';
            qb_reg <= '0';

        elsif (S = '0' and R = '1') then
            -- Reset
            q_reg  <= '0';
            qb_reg <= '1';

        elsif (S = '1' and R = '1') then
            -- Forbidden
            q_reg  <= '0';
            qb_reg <= '0';

        else
            -- Hold: retain previous state
            null;
        end if;
    end process;

    Q     <= q_reg;
    Q_bar <= qb_reg;

end Behavioral;
