----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2023 02:17:15 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
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

entity FSM is
    Port ( b_pause : in STD_LOGIC;
           b_play : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           play_pause : out STD_LOGIC_VECTOR (1 downto 0));
end FSM;

architecture Behavioral of FSM is

    TYPE state_type is (init, play, pause);
    signal curent_state : STATE_TYPE;
    signal next_state : STATE_TYPE;
    signal data_in_save : std_logic_vector(7 downto 0);
begin

r: process(clk, reset)
    begin
     if reset='1' then
        curent_state <= INIT;
    elsif clk'event and clk='1' then
        curent_state<= next_state;        
    end if;
end process;

f: process(curent_state, b_play, b_pause)
    begin
        CASE curent_state is 
            when INIT=>
                if b_play='1' and b_pause='0' then
                    next_state<= play;
                else
                     next_state<= INIT;
                end if;
            when play=>
                if b_play='0' and b_pause='1' then
                    next_state<= pause;
                else
                     next_state<=  play;
                end if;
             when pause=>
                if b_play='1' and b_pause='0' then
                    next_state<= play;
                elsif b_play='0' and b_pause='1' then
                    next_state<= INIT;
                else
                     next_state<= pause;
                end if;
        end CASE;
     end process;
     
 g : process(curent_state,data_in)
    begin
        CASE curent_state is 
            when INIT=>
                 play_pause<="11";
                 data_out <= "00000000";
            when play=>
                 play_pause<="10";
                 data_out <= data_in;
                 data_in_save <= data_in;
            when pause=>
                 play_pause<="01";       
                 data_out<= data_in_save; 
            when others =>
                play_pause <= "11";
         end case;
    end process;
end architecture Behavioral;