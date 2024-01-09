----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Théo Ranchoup
-- 
-- Create Date: 05/02/2023 02:54:52 PM
-- Design Name: 
-- Module Name: gestion_CE - Behavioral
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

entity gestion_CE is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable : out STD_LOGIC);
end gestion_CE;

architecture Behavioral of gestion_CE is

signal s_count_val_2000k : unsigned(22 downto 0) := (others => '0');

begin
counter_value_register_2000k : process(clk,rst)
		begin 
		    if(rst = '1') then
		      s_count_val_2000k <= (others => '0');
			elsif(clk'event and clk = '1') then
				if (s_count_val_2000k = to_unsigned(5000000,23)) then
--if (s_count_val = to_unsigned(10,15)) then
					s_count_val_2000k <= (others => '0');
				else
					s_count_val_2000k <= s_count_val_2000k + 1;
				end if;
			end if;
		end process counter_value_register_2000k;


mux_ce : process(s_count_val_2000k)
    begin
                if(s_count_val_2000k = to_unsigned(5000000,23)) then
                    clock_enable <= '1';
                else
                    clock_enable <= '0';
                end if;
    end process mux_ce;
    
end Behavioral;