library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem4 is
    Port (
        J     : in  STD_LOGIC;
        K     : in  STD_LOGIC;
        clk   : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Q_bar : out STD_LOGIC
    );
end problem4;

architecture Behavioral of problem4 is
    signal q_reg : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then
                -- Hold
                null;

            elsif J = '0' and K = '1' then
                -- Reset
                q_reg <= '0';

            elsif J = '1' and K = '0' then
                -- Set
                q_reg <= '1';

            elsif J = '1' and K = '1' then
                -- Toggle
                q_reg <= not q_reg;
            end if;
        end if;
    end process;

    Q     <= q_reg;
    Q_bar <= not q_reg;

end Behavioral;
