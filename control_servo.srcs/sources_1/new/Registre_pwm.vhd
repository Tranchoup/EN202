----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2023 03:28:57 PM
-- Design Name: 
-- Module Name: Registre_pwm - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registre_pwm is
    Port ( ce : in STD_LOGIC;
           reset : in std_logic;
           odata : out STD_LOGIC_VECTOR (7 downto 0);
           idata : in STD_LOGIC_VECTOR (7 downto 0));
end Registre_pwm;


architecture Behavioral of Registre_pwm is

signal data_save : std_logic_vector(7 downto 0) := (others => '0');

begin

process(ce,reset)
begin
    if (reset= '1') then
        data_save <= "00000000";
    elsif(ce = '1') then
        data_save <= idata;
    end if;
end process;

odata <= data_save;

end Behavioral;
