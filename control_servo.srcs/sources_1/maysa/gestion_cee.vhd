----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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

entity gestion_cee is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           ce : out STD_LOGIC);
end gestion_cee;

architecture Behavioral of gestion_cee is

signal s_count_val_200k : unsigned(14 downto 0) := (others => '0');

begin
counter_value_register_200k : process(clk,rst)
		begin 
		    if(rst = '1') then
		      s_count_val_200k <= (others => '0');
			elsif(clk'event and clk = '1') then
				if (s_count_val_200k = to_unsigned(200000,15)) then
--if (s_count_val = to_unsigned(10,15)) then
					s_count_val_200k <= (others => '0');
				else
					s_count_val_200k <= s_count_val_200k + 1;
				end if;
			end if;
		end process counter_value_register_200k;


mux_ce : process(s_count_val_200k)
    begin
                if(s_count_val_200k = to_unsigned(200000,15)) then
                    ce <= '1';
                else
                    ce <= '0';
                end if;
    end process mux_ce;
    
end Behavioral;
