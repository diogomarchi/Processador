library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tri_state_buffer is
    Port ( A    : in  STD_LOGIC_VECTOR (15 downto 0);
           EN   : in  STD_LOGIC;    
           Y    : out STD_LOGIC_VECTOR (15 downto 0));
end tri_state_buffer;

architecture Behavioral of tri_state_buffer is

begin

    -- single active low enabled tri-state buffer
    Y <= A when (EN = '0') else "ZZZZZZZZZZZZZZZZ";

end Behavioral;