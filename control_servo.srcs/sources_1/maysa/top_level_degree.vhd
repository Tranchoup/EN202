----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2023 08:31:37 PM
-- Design Name: 
-- Module Name: top_level_degree - Behavioral
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

entity top_level_degree is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           idata : in STD_LOGIC_VECTOR (7 downto 0);
           odata : out STD_LOGIC_VECTOR (7 downto 0));
end top_level_degree;

architecture Behavioral of top_level_degree is

component Registre_pwm is
    Port ( ce : in STD_LOGIC;
           reset : in std_logic;
           odata : out STD_LOGIC_VECTOR (7 downto 0);
           idata : in STD_LOGIC_VECTOR (7 downto 0));
end component;

component ce_1Hz is
port(
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable_1Hz : out STD_LOGIC
);
end component;


signal s_ce_1Hz : std_logic;


begin

clk_ce : ce_1Hz port map(
           clk => clk,
           rst => rst,
           clock_enable_1Hz => s_ce_1Hz);
           
registre :Registre_pwm port map(
           ce =>s_ce_1Hz,
           reset  =>rst,
           odata  => odata,
           idata  => idata);



end Behavioral;
