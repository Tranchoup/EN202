----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2023 10:20:15
-- Design Name: 
-- Module Name: top_level_test_pwm - Behavioral
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

entity top_level_test_pwm is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           PWM : out STD_LOGIC);
end top_level_test_pwm;

architecture Behavioral of top_level_test_pwm is


Component top_level_pwm is
    Port ( idata : in STD_LOGIC_VECTOR (7 downto 0);
           pwm : out STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end Component;

Component rom_test_pwm is
        port (
        clk : in std_logic;
        ce : in std_logic;
        angle : out std_logic_vector(7 downto 0)
    );
end component;

component ce_test_rom is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable : out STD_LOGIC);
end component;

signal s_ce : std_logic;
signal s_data_degre : std_logic_vector(7 downto 0) := (others => '0');

begin
ce: ce_test_rom port map(
           clk => clk,
           rst => rst,
           clock_enable =>s_ce);


gen_pwm : top_level_pwm port map(
           idata => s_data_degre,
           pwm  => PWM,
           clk => clk,
           reset => rst);

rom : rom_test_PWM port map(
           angle => s_data_degre,
           clk => clk,
           ce => s_ce);


end Behavioral;
