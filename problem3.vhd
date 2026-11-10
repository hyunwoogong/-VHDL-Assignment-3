library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem3 is
    Port (
        d   : in STD_LOGIC;
        clk : in STD_LOGIC;
        q   : out STD_LOGIC
    );
end problem3;

architecture Behavioral of problem3 is
    signal q_internal : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q_internal <= d;
        end if;
    end process;

    q <= q_internal;
end Behavioral;
