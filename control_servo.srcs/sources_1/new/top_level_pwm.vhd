----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Théo Ranchoup
-- 
-- Create Date: 11/14/2023 03:42:23 PM
-- Design Name: 
-- Module Name: top_level_pwm - Behavioral
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

entity top_level_pwm is
    Port ( idata : in STD_LOGIC_VECTOR (7 downto 0);
           pwm : out STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end top_level_pwm;
    
architecture Behavioral of top_level_pwm is

component generation_PWM is
  Port ( idata : in STD_LOGIC_VECTOR (17 downto 0);
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           odata : out STD_LOGIC);
end component;

component Registre_pwm is
    Port ( ce : in STD_LOGIC;
           reset : in std_logic;
           odata : out STD_LOGIC_VECTOR (7 downto 0);
           idata : in STD_LOGIC_VECTOR (7 downto 0));
end component;

component transformation_pwm is
    Port ( degres_in : in STD_LOGIC_VECTOR (7 downto 0);
           largeur : out STD_LOGIC_VECTOR (17 downto 0));
end component;

component gestion_CE is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable : out STD_LOGIC);
end component;

component ce_1Hz is
port(
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable_1Hz : out STD_LOGIC
);
end component;


signal s_ce : std_logic;
signal s_ce_1Hz : std_logic;

signal s_data_degre : std_logic_vector(7 downto 0) := (others => '0');
signal s_nb_coup : std_logic_vector(17 downto 0) := (others => '0');


begin
  registre :Registre_pwm port map(
           ce =>s_ce_1Hz,
           reset  =>reset,
           odata  => s_data_degre,
           idata  => idata);
           
conversion: transformation_pwm port map(
           degres_in => s_data_degre ,
           largeur => s_nb_coup );
           
largeur: generation_PWM port map(
           idata =>s_nb_coup,
           ce =>s_ce,
           reset  => reset,
           clock =>clk,
           odata => pwm);

ce: gestion_CE port map(
           clk => clk,
           rst => reset,
           clock_enable =>s_ce);
           
ceunhz : ce_1Hz port map(
           clk => clk,
           rst => reset,
           clock_enable_1Hz => s_ce_1Hz);

end Behavioral;
