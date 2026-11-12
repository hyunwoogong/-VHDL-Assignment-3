library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem4 is
    Port (
        J    : in  STD_LOGIC;
        K    : in  STD_LOGIC;
        clk  : in  STD_LOGIC;
        Q    : out STD_LOGIC;
        Qbar : out STD_LOGIC
    );
end problem4;

architecture Behavioral of problem4 is
    signal q_internal : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if J = '0' and K = '0' then
                q_internal <= q_internal;       -- Hold
            elsif J = '0' and K = '1' then
                q_internal <= '0';              -- Reset
            elsif J = '1' and K = '0' then
                q_internal <= '1';              -- Set
            elsif J = '1' and K = '1' then
                q_internal <= not q_internal;   -- Toggle
            end if;
        end if;
    end process;

    Q    <= q_internal;
    Qbar <= not q_internal;

end Behavioral;
