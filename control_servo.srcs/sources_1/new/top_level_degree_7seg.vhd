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
when "00000000" =>
    s_unit <= "1000000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000001" =>
    s_unit <= "1111001";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000010" =>
    s_unit <= "0100100";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000011" =>
    s_unit <= "0110000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000100" =>
    s_unit <= "0011001";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000101" =>
    s_unit <= "0010010";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000110" =>
    s_unit <= "0000010";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00000111" =>
    s_unit <= "1111000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00001000" =>
    s_unit <= "0000000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00001001" =>
    s_unit <= "0010000";
    s_diaine <= "1000000";
    s_cent <= "1000000";

when "00001010" =>
    s_unit <= "1000000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00001011" =>
    s_unit <= "1111001";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00001100" =>
    s_unit <= "0100100";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00001101" =>
    s_unit <= "0110000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00001110" =>
    s_unit <= "0011001";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00001111" =>
    s_unit <= "0010010";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00010000" =>
    s_unit <= "0000010";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00010001" =>
    s_unit <= "1111000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00010010" =>
    s_unit <= "0000000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00010011" =>
    s_unit <= "0010000";
    s_diaine <= "1111001";
    s_cent <= "1000000";

when "00010100" =>
    s_unit <= "1000000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00010101" =>
    s_unit <= "1111001";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00010110" =>
    s_unit <= "0100100";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00010111" =>
    s_unit <= "0110000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011000" =>
    s_unit <= "0011001";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011001" =>
    s_unit <= "0010010";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011010" =>
    s_unit <= "0000010";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011011" =>
    s_unit <= "1111000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011100" =>
    s_unit <= "0000000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011101" =>
    s_unit <= "0010000";
    s_diaine <= "0100100";
    s_cent <= "1000000";

when "00011110" =>
    s_unit <= "1000000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00011111" =>
    s_unit <= "1111001";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100000" =>
    s_unit <= "0100100";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100001" =>
    s_unit <= "0110000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100010" =>
    s_unit <= "0011001";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100011" =>
    s_unit <= "0010010";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100100" =>
    s_unit <= "0000010";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100101" =>
    s_unit <= "1111000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100110" =>
    s_unit <= "0000000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00100111" =>
    s_unit <= "0010000";
    s_diaine <= "0110000";
    s_cent <= "1000000";

when "00101000" =>
    s_unit <= "1000000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101001" =>
    s_unit <= "1111001";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101010" =>
    s_unit <= "0100100";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101011" =>
    s_unit <= "0110000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101100" =>
    s_unit <= "0011001";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101101" =>
    s_unit <= "0010010";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101110" =>
    s_unit <= "0000010";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00101111" =>
    s_unit <= "1111000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00110000" =>
    s_unit <= "0000000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00110001" =>
    s_unit <= "0010000";
    s_diaine <= "0011001";
    s_cent <= "1000000";

when "00110010" =>
    s_unit <= "1000000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00110011" =>
    s_unit <= "1111001";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00110100" =>
    s_unit <= "0100100";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00110101" =>
    s_unit <= "0110000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00110110" =>
    s_unit <= "0011001";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00110111" =>
    s_unit <= "0010010";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00111000" =>
    s_unit <= "0000010";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00111001" =>
    s_unit <= "1111000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00111010" =>
    s_unit <= "0000000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00111011" =>
    s_unit <= "0010000";
    s_diaine <= "0010010";
    s_cent <= "1000000";

when "00111100" =>
    s_unit <= "1000000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "00111101" =>
    s_unit <= "1111001";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "00111110" =>
    s_unit <= "0100100";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "00111111" =>
    s_unit <= "0110000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000000" =>
    s_unit <= "0011001";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000001" =>
    s_unit <= "0010010";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000010" =>
    s_unit <= "0000010";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000011" =>
    s_unit <= "1111000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000100" =>
    s_unit <= "0000000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000101" =>
    s_unit <= "0010000";
    s_diaine <= "0000010";
    s_cent <= "1000000";

when "01000110" =>
    s_unit <= "1000000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01000111" =>
    s_unit <= "1111001";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001000" =>
    s_unit <= "0100100";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001001" =>
    s_unit <= "0110000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001010" =>
    s_unit <= "0011001";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001011" =>
    s_unit <= "0010010";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001100" =>
    s_unit <= "0000010";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001101" =>
    s_unit <= "1111000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001110" =>
    s_unit <= "0000000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01001111" =>
    s_unit <= "0010000";
    s_diaine <= "1111000";
    s_cent <= "1000000";

when "01010000" =>
    s_unit <= "1000000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010001" =>
    s_unit <= "1111001";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010010" =>
    s_unit <= "0100100";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010011" =>
    s_unit <= "0110000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010100" =>
    s_unit <= "0011001";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010101" =>
    s_unit <= "0010010";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010110" =>
    s_unit <= "0000010";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01010111" =>
    s_unit <= "1111000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01011000" =>
    s_unit <= "0000000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01011001" =>
    s_unit <= "0010000";
    s_diaine <= "0000000";
    s_cent <= "1000000";

when "01011010" =>
    s_unit <= "1000000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01011011" =>
    s_unit <= "1111001";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01011100" =>
    s_unit <= "0100100";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01011101" =>
    s_unit <= "0110000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01011110" =>
    s_unit <= "0011001";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01011111" =>
    s_unit <= "0010010";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01100000" =>
    s_unit <= "0000010";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01100001" =>
    s_unit <= "1111000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01100010" =>
    s_unit <= "0000000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01100011" =>
    s_unit <= "0010000";
    s_diaine <= "0010000";
    s_cent <= "1000000";

when "01100100" =>
    s_unit <= "1000000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01100101" =>
    s_unit <= "1111001";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01100110" =>
    s_unit <= "0100100";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01100111" =>
    s_unit <= "0110000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101000" =>
    s_unit <= "0011001";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101001" =>
    s_unit <= "0010010";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101010" =>
    s_unit <= "0000010";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101011" =>
    s_unit <= "1111000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101100" =>
    s_unit <= "0000000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101101" =>
    s_unit <= "0010000";
    s_diaine <= "1000000";
    s_cent <= "1111001";

when "01101110" =>
    s_unit <= "1000000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01101111" =>
    s_unit <= "1111001";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110000" =>
    s_unit <= "0100100";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110001" =>
    s_unit <= "0110000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110010" =>
    s_unit <= "0011001";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110011" =>
    s_unit <= "0010010";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110100" =>
    s_unit <= "0000010";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110101" =>
    s_unit <= "1111000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110110" =>
    s_unit <= "0000000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01110111" =>
    s_unit <= "0010000";
    s_diaine <= "1111001";
    s_cent <= "1111001";

when "01111000" =>
    s_unit <= "1000000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111001" =>
    s_unit <= "1111001";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111010" =>
    s_unit <= "0100100";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111011" =>
    s_unit <= "0110000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111100" =>
    s_unit <= "0011001";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111101" =>
    s_unit <= "0010010";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111110" =>
    s_unit <= "0000010";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "01111111" =>
    s_unit <= "1111000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "10000000" =>
    s_unit <= "0000000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "10000001" =>
    s_unit <= "0010000";
    s_diaine <= "0100100";
    s_cent <= "1111001";

when "10000010" =>
    s_unit <= "1000000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10000011" =>
    s_unit <= "1111001";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10000100" =>
    s_unit <= "0100100";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10000101" =>
    s_unit <= "0110000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10000110" =>
    s_unit <= "0011001";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10000111" =>
    s_unit <= "0010010";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10001000" =>
    s_unit <= "0000010";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10001001" =>
    s_unit <= "1111000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10001010" =>
    s_unit <= "0000000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10001011" =>
    s_unit <= "0010000";
    s_diaine <= "0110000";
    s_cent <= "1111001";

when "10001100" =>
    s_unit <= "1000000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10001101" =>
    s_unit <= "1111001";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10001110" =>
    s_unit <= "0100100";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10001111" =>
    s_unit <= "0110000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010000" =>
    s_unit <= "0011001";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010001" =>
    s_unit <= "0010010";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010010" =>
    s_unit <= "0000010";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010011" =>
    s_unit <= "1111000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010100" =>
    s_unit <= "0000000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010101" =>
    s_unit <= "0010000";
    s_diaine <= "0011001";
    s_cent <= "1111001";

when "10010110" =>
    s_unit <= "1000000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10010111" =>
    s_unit <= "1111001";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011000" =>
    s_unit <= "0100100";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011001" =>
    s_unit <= "0110000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011010" =>
    s_unit <= "0011001";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011011" =>
    s_unit <= "0010010";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011100" =>
    s_unit <= "0000010";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011101" =>
    s_unit <= "1111000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011110" =>
    s_unit <= "0000000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10011111" =>
    s_unit <= "0010000";
    s_diaine <= "0010010";
    s_cent <= "1111001";

when "10100000" =>
    s_unit <= "1000000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100001" =>
    s_unit <= "1111001";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100010" =>
    s_unit <= "0100100";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100011" =>
    s_unit <= "0110000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100100" =>
    s_unit <= "0011001";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100101" =>
    s_unit <= "0010010";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100110" =>
    s_unit <= "0000010";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10100111" =>
    s_unit <= "1111000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10101000" =>
    s_unit <= "0000000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10101001" =>
    s_unit <= "0010000";
    s_diaine <= "0000010";
    s_cent <= "1111001";

when "10101010" =>
    s_unit <= "1000000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10101011" =>
    s_unit <= "1111001";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10101100" =>
    s_unit <= "0100100";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10101101" =>
    s_unit <= "0110000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10101110" =>
    s_unit <= "0011001";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10101111" =>
    s_unit <= "0010010";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10110000" =>
    s_unit <= "0000010";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10110001" =>
    s_unit <= "1111000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10110010" =>
    s_unit <= "0000000";
    s_diaine <= "1111000";
    s_cent <= "1111001";

when "10110011" =>
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
