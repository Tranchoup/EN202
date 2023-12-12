----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2023 05:02:29 PM
-- Design Name: 
-- Module Name: com_SPI - Behavioral
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

entity com_SPI is
    Port ( miso : in STD_LOGIC_VECTOR (8 downto 0);
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_brut : in STD_LOGIC_VECTOR (8 downto 0));
end com_SPI;

architecture Behavioral of com_SPI is

begin


end Behavioral;
