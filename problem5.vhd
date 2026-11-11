library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem5 is
    Port (
        clk  : in  STD_LOGIC;
        set  : in  STD_LOGIC;
        clr  : in  STD_LOGIC;
        D    : in  STD_LOGIC;
        Q    : out STD_LOGIC;
        Qbar : out STD_LOGIC
    );
end problem5;

architecture Behavioral of problem5 is
    signal q_internal : STD_LOGIC;
begin

    process(clk, set, clr)
    begin
        if clr = '1' then
            q_internal <= '0';

        elsif set = '1' then
            q_internal <= '1';

        elsif rising_edge(clk) then
            q_internal <= D;

        end if;
    end process;

    Q    <= q_internal;
    Qbar <= not q_internal;

end Behavioral;
