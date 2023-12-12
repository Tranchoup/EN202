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

entity ce_1Hz is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           clock_enable_1Hz : out STD_LOGIC);
end ce_1Hz;

architecture Behavioral of ce_1Hz is

signal s_count_val_1M : unsigned(26 downto 0) := (others => '0');

begin
counter_value_register_1M : process(clk,rst)
		begin 
		    if(rst = '1') then
		      s_count_val_1M <= (others => '0');
			elsif(clk'event and clk = '1') then
				if (s_count_val_1M = to_unsigned(100000000,27)) then -- il faudrais mettre 10^8 pour que ca soit chaque seconde
--if (s_count_val = to_unsigned(10,15)) then
					s_count_val_1M <= (others => '0');
				else
					s_count_val_1M <= s_count_val_1M + 1;
				end if;
			end if;
		end process counter_value_register_1M;


mux_ce : process(s_count_val_1M)
    begin
                if(s_count_val_1M = to_unsigned(100000000,27)) then
                    clock_enable_1Hz <= '1';
                else
                    clock_enable_1Hz <= '0';
                end if;
    end process mux_ce;
    
end Behavioral;