----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2023 17:00:58
-- Design Name: 
-- Module Name: rom_test_pwm - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity rom_test_pwm is
    port (
        clk : in std_logic;
        ce : in std_logic;
        angle : out std_logic_vector(7 downto 0)
    );
end rom_test_pwm;


architecture behav of rom_test_pwm is
    type rom_type is array (0 to 2) of std_logic_vector(7 downto 0);
    constant rom_data : rom_type := (
        "00000000",
        "01011010",
        "10110100"
    );

    signal s_address : integer := 0;

begin

    process(ce, clk)
    begin
        if rising_edge(clk) and ce = '1' then
            angle <= rom_data(s_address);
            s_address <= s_address + 1;
            if s_address = 3 then
                s_address <= 0;
            end if;
        end if;
    end process;

end behav ; -- behav
