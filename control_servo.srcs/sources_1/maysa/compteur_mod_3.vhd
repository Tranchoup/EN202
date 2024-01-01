----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2023 08:36:51 PM
-- Design Name: 
-- Module Name: compteur_mod_3 - Behavioral
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

entity compteur_mod_3 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           ce : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           control : out STD_LOGIC_VECTOR (2 downto 0));
end compteur_mod_3;

architecture Behavioral of compteur_mod_3 is

signal s_count_val_3 : unsigned(2 downto 0) := (others => '0');

begin

counter_value_register_3 : process(clk,rst)
		begin 
		    if(rst = '1') then
		      s_count_val_3 <= (others => '0');
			elsif(clk'event and clk = '1') then
			     if(ce = '1') then
				    if (s_count_val_3 = to_unsigned(7,3)) then
					   s_count_val_3 <= (others => '0');
				    else
					   s_count_val_3 <= s_count_val_3 + 1;
				    end if;
				 end if;
			end if;
		end process counter_value_register_3;

AN_choice : process(s_count_val_3)
    begin
        case s_count_val_3 is
                when "000" => -- 0
                    AN <= "11111110";
                    
                when "001" => -- 1
                    AN <= "11111101";
                  
                when "010" =>-- 2
                    AN <= "11111011";
                    
                when "011" =>-- 3
                    AN <= "11110111";
                    
                when "100" =>-- 4
                    AN <= "11101111";
                          
                when "101" =>-- 5
                    AN <= "11011111";
                   
                when "110" =>-- 6
                    AN <= "10111111";
                    
                when "111" =>-- 7
                    AN <= "01111111";    
                      
                when others =>-- 
                    AN <= "11111111";
                  
                end case;
    end process AN_choice;

control <= std_logic_vector(s_count_val_3);

end Behavioral;
