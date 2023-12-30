----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2023 09:17:22 PM
-- Design Name: 
-- Module Name: mux_8 - Behavioral
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

entity mux_8 is
    Port ( 
           play_pause : in STD_LOGIC_VECTOR (1 downto 0);
           sept_seg : out STD_LOGIC_VECTOR (6 downto 0);
           control : in STD_LOGIC_VECTOR (2 downto 0));
end mux_8;

architecture Behavioral of mux_8 is

begin
multiplexeur_8: process(play_pause,control)
		begin 
            case play_pause is
                when "10"=> -- PLAY on affiche ------] 
                    case control is
                        when "000" => -- on affiche un C à l'envert 
                            sept_seg <= "1110000"; 
                        when "001" => -- on affiche un tiret
                            sept_seg <= "0111111";
                        when "010" => 
                            sept_seg<= "0111111";
                        when "011" =>
                            sept_seg<= "0111111";
                        when "100" =>
                            sept_seg<= "0111111";
                        when "101" =>
                            sept_seg<= "0111111";
                        when "110" =>
                            sept_seg<= "0111111";
                        when "111" =>
                            sept_seg<= "0111111";                  
                        when others =>
                            sept_seg <= "1111111";
                        end case;
                        
                  when "01"=> -- PAUSE on affiche '=' avc 90 degré
                    case control is
                        when "000" => -- on affiche rien
                            sept_seg <= "1111111"; 
                        when "001" => -- on affiche rien
                            sept_seg <= "1111111";
                        when "010" => 
                            sept_seg<= "1111111";
                        when "011" => -- un barre vertical a gauche
                            sept_seg<= "1001111";
                        when "100" =>-- un barre vertical à droite
                            sept_seg<= "1111001";
                        when "101" =>
                            sept_seg<= "1111111";
                        when "110" =>
                            sept_seg<= "1111111";
                        when "111" =>
                            sept_seg<= "1111111";                  
                        when others =>
                            sept_seg <= "1111111";
                        end case;    
                        
                when others=> -- INIT on affiche ------
                    case control is
                        when "000" => 
                            sept_seg <= "0111111"; 
                        when "001" => -- on affiche un tiret
                            sept_seg <= "0111111";
                        when "010" => 
                            sept_seg<= "0111111";
                        when "011" =>
                            sept_seg<= "0111111";
                        when "100" =>
                            sept_seg<= "0111111";
                        when "101" =>
                            sept_seg<= "0111111";
                        when "110" =>
                            sept_seg<= "0111111";
                        when "111" =>
                            sept_seg<= "0111111";                  
                        when others =>
                            sept_seg <= "1111111";
                        end case;          
                  end case;
		end process multiplexeur_8;

end Behavioral;
