library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem2 is
    Port (
        D     : in  STD_LOGIC;
        en    : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Q_bar : out STD_LOGIC
    );
end problem2;

architecture Behavioral of problem2 is
    signal q_reg : STD_LOGIC := '0';
begin

    process(D, en)
    begin
        if en = '1' then
            q_reg <= D;
        end if;
    end process;

    Q     <= q_reg;
    Q_bar <= not q_reg;

end Behavioral;
