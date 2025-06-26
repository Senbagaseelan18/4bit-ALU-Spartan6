library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_4bit is
    Port (
        sw : in std_logic_vector(10 downto 0); -- sw[3:0] A, sw[7:4] B, sw[10:8] Sel
        led : out std_logic_vector(4 downto 0) -- Result on 5 MSB LEDs
    );
end ALU_4bit;

architecture Behavioral of ALU_4bit is
    signal A, B : std_logic_vector(3 downto 0);
    signal Sel : std_logic_vector(2 downto 0);
    signal Result : std_logic_vector(4 downto 0); -- 5 bits for output
begin

    A <= sw(3 downto 0);
    B <= sw(7 downto 4);
    Sel <= sw(10 downto 8);

    process(A, B, Sel)
    begin
        case Sel is
            when "000" => -- ADD
                Result <= ('0' & A) + ('0' & B);
            when "001" => -- SUB
                Result <= ('0' & A) - ('0' & B);
            when "010" => -- AND
                Result <= "0" & (A and B);
            when "011" => -- OR
                Result <= "0" & (A or B);
            when "100" => -- XOR
                Result <= "0" & (A xor B);
            when "101" => -- NOT A
                Result <= "0" & (not A);
            when "110" => -- Left Shift A
                Result <= "0" & (A(2 downto 0) & '0');
            when "111" => -- Right Shift A
    Result <= "00" & A(3 downto 1);

            when others =>
                Result <= (others => '0');
        end case;
    end process;

    led <= Result;

end Behavioral;
