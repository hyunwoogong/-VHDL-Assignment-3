library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem2 is
    Port (
        d  : in STD_LOGIC;
        en : in STD_LOGIC;
        q  : out STD_LOGIC
    );
end problem2;

architecture Behavioral of problem2 is
    signal q_internal : STD_LOGIC;
begin
    process(all)
    begin
        if en = '1' then
            q_internal <= d;
        end if;
    end process;

    q <= q_internal;
end Behavioral;
