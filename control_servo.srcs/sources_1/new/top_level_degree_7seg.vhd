----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.01.2024 16:54:07
-- Design Name: 
-- Module Name: top_level_degree_7seg - Behavioral
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

entity top_level_degree_7seg is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           idata : in STD_LOGIC_VECTOR (7 downto 0);
           unit : out STD_LOGIC_VECTOR (6 downto 0);
           dizaine : out STD_LOGIC_VECTOR (6 downto 0);
           cent : out STD_LOGIC_VECTOR (6 downto 0));
end top_level_degree_7seg;

architecture Behavioral of top_level_degree_7seg is

signal s_unit : std_logic_vector(6 downto 0);
signal s_diaine : std_logic_vector(6 downto 0);
signal s_cent : std_logic_vector(6 downto 0);


begin
process(clk,rst)
begin
    
    if rst = '1' then
        unit <= "1111111";
        dizaine <= "1111111";
        cent <= "1111111";
    elsif clk'event and clk='1' then
    case (idata) is
when "0000000000" =>
    s_unit <= "1000000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000001" =>
    s_unit <= "1111001";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000010" =>
    s_unit <= "0100100";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000011" =>
    s_unit <= "0110000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000100" =>
    s_unit <= "0011001";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000101" =>
    s_unit <= "0010010";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000110" =>
    s_unit <= "0000010";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000000111" =>
    s_unit <= "1111000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000001000" =>
    s_unit <= "0000000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000001001" =>
    s_unit <= "0010000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "0000001010" =>
    s_unit <= "1000000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000001011" =>
    s_unit <= "1111001";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000001100" =>
    s_unit <= "0100100";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000001101" =>
    s_unit <= "0110000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000001110" =>
    s_unit <= "0011001";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000001111" =>
    s_unit <= "0010010";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000010000" =>
    s_unit <= "0000010";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000010001" =>
    s_unit <= "1111000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000010010" =>
    s_unit <= "0000000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000010011" =>
    s_unit <= "0010000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "0000010100" =>
    s_unit <= "1000000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000010101" =>
    s_unit <= "1111001";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000010110" =>
    s_unit <= "0100100";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000010111" =>
    s_unit <= "0110000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011000" =>
    s_unit <= "0011001";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011001" =>
    s_unit <= "0010010";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011010" =>
    s_unit <= "0000010";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011011" =>
    s_unit <= "1111000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011100" =>
    s_unit <= "0000000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011101" =>
    s_unit <= "0010000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "0000011110" =>
    s_unit <= "1000000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000011111" =>
    s_unit <= "1111001";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100000" =>
    s_unit <= "0100100";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100001" =>
    s_unit <= "0110000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100010" =>
    s_unit <= "0011001";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100011" =>
    s_unit <= "0010010";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100100" =>
    s_unit <= "0000010";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100101" =>
    s_unit <= "1111000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100110" =>
    s_unit <= "0000000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000100111" =>
    s_unit <= "0010000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "0000101000" =>
    s_unit <= "1000000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101001" =>
    s_unit <= "1111001";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101010" =>
    s_unit <= "0100100";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101011" =>
    s_unit <= "0110000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101100" =>
    s_unit <= "0011001";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101101" =>
    s_unit <= "0010010";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101110" =>
    s_unit <= "0000010";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000101111" =>
    s_unit <= "1111000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000110000" =>
    s_unit <= "0000000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000110001" =>
    s_unit <= "0010000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "0000110010" =>
    s_unit <= "1000000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000110011" =>
    s_unit <= "1111001";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000110100" =>
    s_unit <= "0100100";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000110101" =>
    s_unit <= "0110000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000110110" =>
    s_unit <= "0011001";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000110111" =>
    s_unit <= "0010010";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000111000" =>
    s_unit <= "0000010";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000111001" =>
    s_unit <= "1111000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000111010" =>
    s_unit <= "0000000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000111011" =>
    s_unit <= "0010000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "0000111100" =>
    s_unit <= "1000000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0000111101" =>
    s_unit <= "1111001";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0000111110" =>
    s_unit <= "0100100";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0000111111" =>
    s_unit <= "0110000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000000" =>
    s_unit <= "0011001";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000001" =>
    s_unit <= "0010010";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000010" =>
    s_unit <= "0000010";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000011" =>
    s_unit <= "1111000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000100" =>
    s_unit <= "0000000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000101" =>
    s_unit <= "0010000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "0001000110" =>
    s_unit <= "1000000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001000111" =>
    s_unit <= "1111001";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001000" =>
    s_unit <= "0100100";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001001" =>
    s_unit <= "0110000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001010" =>
    s_unit <= "0011001";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001011" =>
    s_unit <= "0010010";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001100" =>
    s_unit <= "0000010";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001101" =>
    s_unit <= "1111000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001110" =>
    s_unit <= "0000000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001001111" =>
    s_unit <= "0010000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "0001010000" =>
    s_unit <= "1000000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010001" =>
    s_unit <= "1111001";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010010" =>
    s_unit <= "0100100";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010011" =>
    s_unit <= "0110000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010100" =>
    s_unit <= "0011001";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010101" =>
    s_unit <= "0010010";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010110" =>
    s_unit <= "0000010";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001010111" =>
    s_unit <= "1111000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001011000" =>
    s_unit <= "0000000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001011001" =>
    s_unit <= "0010000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "0001011010" =>
    s_unit <= "1000000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001011011" =>
    s_unit <= "1111001";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001011100" =>
    s_unit <= "0100100";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001011101" =>
    s_unit <= "0110000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001011110" =>
    s_unit <= "0011001";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001011111" =>
    s_unit <= "0010010";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001100000" =>
    s_unit <= "0000010";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001100001" =>
    s_unit <= "1111000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001100010" =>
    s_unit <= "0000000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001100011" =>
    s_unit <= "0010000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "0001100100" =>
    s_unit <= "1000000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001100101" =>
    s_unit <= "1111001";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001100110" =>
    s_unit <= "0100100";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001100111" =>
    s_unit <= "0110000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101000" =>
    s_unit <= "0011001";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101001" =>
    s_unit <= "0010010";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101010" =>
    s_unit <= "0000010";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101011" =>
    s_unit <= "1111000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101100" =>
    s_unit <= "0000000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101101" =>
    s_unit <= "0010000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "0001101110" =>
    s_unit <= "1000000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001101111" =>
    s_unit <= "1111001";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110000" =>
    s_unit <= "0100100";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110001" =>
    s_unit <= "0110000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110010" =>
    s_unit <= "0011001";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110011" =>
    s_unit <= "0010010";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110100" =>
    s_unit <= "0000010";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110101" =>
    s_unit <= "1111000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110110" =>
    s_unit <= "0000000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001110111" =>
    s_unit <= "0010000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "0001111000" =>
    s_unit <= "1000000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111001" =>
    s_unit <= "1111001";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111010" =>
    s_unit <= "0100100";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111011" =>
    s_unit <= "0110000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111100" =>
    s_unit <= "0011001";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111101" =>
    s_unit <= "0010010";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111110" =>
    s_unit <= "0000010";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0001111111" =>
    s_unit <= "1111000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0010000000" =>
    s_unit <= "0000000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0010000001" =>
    s_unit <= "0010000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "0010000010" =>
    s_unit <= "1000000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010000011" =>
    s_unit <= "1111001";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010000100" =>
    s_unit <= "0100100";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010000101" =>
    s_unit <= "0110000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010000110" =>
    s_unit <= "0011001";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010000111" =>
    s_unit <= "0010010";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010001000" =>
    s_unit <= "0000010";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010001001" =>
    s_unit <= "1111000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010001010" =>
    s_unit <= "0000000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010001011" =>
    s_unit <= "0010000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "0010001100" =>
    s_unit <= "1000000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010001101" =>
    s_unit <= "1111001";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010001110" =>
    s_unit <= "0100100";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010001111" =>
    s_unit <= "0110000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010000" =>
    s_unit <= "0011001";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010001" =>
    s_unit <= "0010010";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010010" =>
    s_unit <= "0000010";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010011" =>
    s_unit <= "1111000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010100" =>
    s_unit <= "0000000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010101" =>
    s_unit <= "0010000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "0010010110" =>
    s_unit <= "1000000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010010111" =>
    s_unit <= "1111001";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011000" =>
    s_unit <= "0100100";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011001" =>
    s_unit <= "0110000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011010" =>
    s_unit <= "0011001";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011011" =>
    s_unit <= "0010010";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011100" =>
    s_unit <= "0000010";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011101" =>
    s_unit <= "1111000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011110" =>
    s_unit <= "0000000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010011111" =>
    s_unit <= "0010000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "0010100000" =>
    s_unit <= "1000000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100001" =>
    s_unit <= "1111001";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100010" =>
    s_unit <= "0100100";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100011" =>
    s_unit <= "0110000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100100" =>
    s_unit <= "0011001";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100101" =>
    s_unit <= "0010010";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100110" =>
    s_unit <= "0000010";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010100111" =>
    s_unit <= "1111000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010101000" =>
    s_unit <= "0000000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010101001" =>
    s_unit <= "0010000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "0010101010" =>
    s_unit <= "1000000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010101011" =>
    s_unit <= "1111001";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010101100" =>
    s_unit <= "0100100";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010101101" =>
    s_unit <= "0110000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010101110" =>
    s_unit <= "0011001";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010101111" =>
    s_unit <= "0010010";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010110000" =>
    s_unit <= "0000010";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010110001" =>
    s_unit <= "1111000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010110010" =>
    s_unit <= "0000000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "0010110011" =>
    s_unit <= "0010000";
    s_diaine <= "1111000";
    s_cent <= "1111001";
when others =>
    s_unit <= "1111111";
    s_diaine <= "1111111";
    s_cent <= "1111111";
end case;
unit <= s_unit;
dizaine<= s_diaine;
cent<= s_cent;

end if;
end process;
end Behavioral;
