library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu_4bit_tb is
end alu_4bit_tb;

architecture behavior of alu_4bit_tb is
    signal a0, a1, a2, a3 : std_logic;
    signal b0, b1, b2, b3 : std_logic;
    signal sel0, sel1, sel2 : std_logic;
    signal out0, out1, out2, out3, out4 : std_logic;

    signal sw : std_logic_vector(10 downto 0);
    signal led : std_logic_vector(4 downto 0);

    component ALU_4bit
        Port (
            sw : in std_logic_vector(10 downto 0);
            led : out std_logic_vector(4 downto 0)
        );
    end component;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: ALU_4bit Port map (
        sw => sw,
        led => led
    );

    -- Assign signals for easier debug
    a0 <= sw(0);
    a1 <= sw(1);
    a2 <= sw(2);
    a3 <= sw(3);

    b0 <= sw(4);
    b1 <= sw(5);
    b2 <= sw(6);
    b3 <= sw(7);

    sel0 <= sw(8);
    sel1 <= sw(9);
    sel2 <= sw(10);

    out0 <= led(0);
    out1 <= led(1);
    out2 <= led(2);
    out3 <= led(3);
    out4 <= led(4);

    process
    begin
        -- Try all 8 operations with different A and B values

        -- A = 0011, B = 0101
        sw <= "000" & "0101" & "0011"; wait for 10 ns; -- ADD
        sw <= "001" & "0101" & "0011"; wait for 10 ns; -- SUB
        sw <= "010" & "0101" & "0011"; wait for 10 ns; -- AND
        sw <= "011" & "0101" & "0011"; wait for 10 ns; -- OR
        sw <= "100" & "0101" & "0011"; wait for 10 ns; -- XOR
        sw <= "101" & "0101" & "0011"; wait for 10 ns; -- NOT A
        sw <= "110" & "0101" & "0011"; wait for 10 ns; -- LSHIFT
        sw <= "111" & "0101" & "0011"; wait for 10 ns; -- RSHIFT

        -- A = 1111, B = 0001
        sw <= "000" & "0001" & "1111"; wait for 10 ns;
        sw <= "001" & "0001" & "1111"; wait for 10 ns;
        sw <= "010" & "0001" & "1111"; wait for 10 ns;
        sw <= "011" & "0001" & "1111"; wait for 10 ns;
        sw <= "100" & "0001" & "1111"; wait for 10 ns;
        sw <= "101" & "0001" & "1111"; wait for 10 ns;
        sw <= "110" & "0001" & "1111"; wait for 10 ns;
        sw <= "111" & "0001" & "1111"; wait for 10 ns;

        -- A = 1010, B = 0101
        sw <= "000" & "0101" & "1010"; wait for 10 ns;
        sw <= "001" & "0101" & "1010"; wait for 10 ns;
        sw <= "010" & "0101" & "1010"; wait for 10 ns;
        sw <= "011" & "0101" & "1010"; wait for 10 ns;
        sw <= "100" & "0101" & "1010"; wait for 10 ns;
        sw <= "101" & "0101" & "1010"; wait for 10 ns;
        sw <= "110" & "0101" & "1010"; wait for 10 ns;
        sw <= "111" & "0101" & "1010"; wait for 10 ns;

        wait;
    end process;
end behavior;
