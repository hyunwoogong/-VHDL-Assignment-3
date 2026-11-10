library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem3 is
    Port (
        D     : in  STD_LOGIC;
        clk   : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Q_bar : out STD_LOGIC
    );
end problem3;

architecture Behavioral of problem3 is
    signal q_reg : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            q_reg <= D;
        end if;
    end process;

    Q     <= q_reg;
    Q_bar <= not q_reg;

end Behavioral;
