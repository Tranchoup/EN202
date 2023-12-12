----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2023 02:59:30 PM
-- Design Name: 
-- Module Name: registre - Behavioral
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

entity gestion_btn is
    Port ( btn : in STD_LOGIC;
           clk : in std_logic;
           reset : in std_logic;
           data_out : out STD_LOGIC);
end gestion_btn;

architecture Behavioral of gestion_btn is

signal enable : std_logic;

begin

process(clk,reset)
begin
    
    if reset = '1' then
        data_out <= '0';
    elsif clk' event and clk ='1' then
        if btn = '1' then
            if enable = '0' then
                data_out <= '1';
                enable <= '1';
            else
                data_out <= '0';
            end if;
        else
            enable <= '0';
            data_out <='0';
        end if;
     end if;
end process;
end Behavioral;
