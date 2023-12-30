----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2023 02:36:39 PM
-- Design Name: 
-- Module Name: rom_test - Behavioral
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

entity rom_test is
    port (
        clk : in std_logic;
        ce : in std_logic;
        position : out std_logic_vector(1 downto 0)
    );
end rom_test;


architecture behav of rom_test is
    type rom_type is array (0 to 2) of std_logic_vector(1 downto 0);
    constant rom_data : rom_type := (
        "00",
        "01",
        "10"
    );

    signal s_address : integer := 0;

begin

    process(ce, clk)
    begin
        if rising_edge(clk) and ce = '1' then
            position <= rom_data(s_address);
            s_address <= s_address + 1;
            if s_address = 3 then
                s_address <= 0;
            end if;
        end if;
    end process;

end behav ; -- behav