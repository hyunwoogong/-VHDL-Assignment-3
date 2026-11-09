library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rs_latch is
    port (
        R    : in STD_LOGIC;
        S    : in STD_LOGIC;
        Q    : out STD_LOGIC;
        Qbar : out STD_LOGIC
    );
end rs_latch;

architecture Behavioral of rs_latch is
    signal q_int    : STD_LOGIC := '0';
    signal qbar_int : STD_LOGIC := '1';
begin
    q_int    <= R nor qbar_int;
    qbar_int <= S nor q_int;

    Q    <= q_int;
    Qbar <= qbar_int;
end Behavioral;
