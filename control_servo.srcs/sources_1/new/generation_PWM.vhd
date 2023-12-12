----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2023 03:35:18 PM
-- Design Name: 
-- Module Name: PWM - Behavioral
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

-- on a p = 2048 (plus proche de 2267 et de tte facon on echantillonne pas asssez vite)
-- donc data in codé sur 11 bits (2048) et on a alors p = 11 bits

entity generation_PWM is
    Port ( idata : in STD_LOGIC_VECTOR (17 downto 0);
           CE : in STD_LOGIC;
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           odata : out STD_LOGIC);
end generation_PWM;

architecture Behavioral of generation_PWM is

signal s_count_val : unsigned(17 downto 0) := (others => '0');
signal sortie : std_logic;
signal data_save: std_logic_vector(17 downto 0) := (others => '0');

begin
PWM_width : process(CE,idata)
    begin
        
        if (CE = '1') then 
            data_save <= idata;
        end if;
end process PWM_width;

         
        
        
counter_value_register : process(clock,reset)

		begin 
		    if(reset = '1') then
		      s_count_val <= (others => '0');
			elsif(clock'event and clock = '1') then
			        if(CE = '1') then
			             s_count_val <= (others => '0');
				    elsif (s_count_val >= unsigned(data_save)) then
					   sortie <= '0';
	       			else
			     		s_count_val <= s_count_val + 1;
			     		sortie <= '1';
				    end if;
			end if;
		end process counter_value_register;
		odata <= sortie;
		
end Behavioral;