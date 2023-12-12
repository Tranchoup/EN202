----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Théo Ranchoup
-- 
-- Create Date: 28.11.2023 10:14:25
-- Design Name: 
-- Module Name: Calcul_position - Behavioral
-- Project Name: Control - servo
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- On sait que les accélérations arrivent toute les 100hz soit toutes les 0.01s ou bien 10ms. 
-- On peut alors connaitre le temps, et l'accélération. on peut alors retrouver facilement la position
-- via l'équation a*t^2 + v0t + x0
-- Cependant, nous cherchons a avoir la variation d'angle entre 2 position pendant le mouvement
-- Donc nous ne sommes pas interressés par la position x0
-- Sur 8 bits, la vitesse max est de 256ms^-1 
-- en fait on s'en fou des unités on cherche juste un déplacement relatif
-- on sera en m * ms^-1 (on multipiras la vitesse par 10, le temps entre chaque occurence)
-- on multipiera l'acc
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_signed.all
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Calcul_position is
    Port ( Acceleration_x : in STD_LOGIC_VECTOR (8 downto 0);
           Acceleration_y : in STD_LOGIC_VECTOR (8 downto 0);
           vitesse_x : in STD_LOGIC_VECTOR (7 downto 0);
           vitesse_y : in STD_LOGIC_VECTOR (7 downto 0);
           position_x : in STD_LOGIC_VECTOR (7 downto 0);
           position_y : in STD_LOGIC_VECTOR (7 downto 0);
           nouvelle_position_x : out STD_LOGIC_VECTOR (7 downto 0);
           nouvelle_position_y : out STD_LOGIC_VECTOR (7 downto 0));
end Calcul_position;

architecture Behavioral of Calcul_position is

signal t : unsigned(3 downto 0) := "1010"; -- temps entre chaque mesure (notre base de temps ie 10ms)
signal test : signed(14 downto 0);
begin

process(Acceleration_x,Acceleration_y,vitesse_x,vitesse_y)
begin
    nouvelle_position_x <= std_logic_vector(signed(Acceleration_x)*t*t + signed(vitesse_x)*t);
    nouvelle_position_y <= std_logic_vector(signed(Acceleration_y)*t*t + signed(vitesse_y)*t);
    
end process;

end Behavioral;
