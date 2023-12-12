----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2023 13:16:15
-- Design Name: 
-- Module Name: registre_9bits - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registre_9bits is
    Port ( ce : in STD_LOGIC;
           reset : in STD_LOGIC;
           idata : in STD_LOGIC_VECTOR (8 downto 0);
           odata : out STD_LOGIC_VECTOR (8 downto 0));
end registre_9bits;

architecture Behavioral of registre_9bits is


signal data_save : std_logic_vector(8 downto 0) := (others => '0');

begin

process(ce,reset)
begin
    if (reset= '1') then
        data_save <= "000000000";
    elsif(ce = '1') then
        data_save <= idata;
    end if;
end process;

odata <= data_save;


end Behavioral;
