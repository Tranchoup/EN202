----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2023 09:49:32 PM
-- Design Name: 
-- Module Name: afficheur_top_level_2 - Behavioral
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

entity afficheur_top_level_2 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           play_pause : in STD_LOGIC_VECTOR (1 downto 0);
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           sept_seg : out STD_LOGIC_VECTOR (6 downto 0));
end afficheur_top_level_2;

architecture Behavioral of afficheur_top_level_2 is

component gestion_cee is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           ce : out STD_LOGIC);
end component;

component compteur_mod_3 is
    Port (  clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           ce : in STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           control : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component mux_8 is
    Port ( play_pause : in STD_LOGIC_VECTOR (1 downto 0);
           sept_seg : out STD_LOGIC_VECTOR (6 downto 0);
           control : in STD_LOGIC_VECTOR (2 downto 0));
end component;

signal s_control : std_logic_vector(2 downto 0);
signal s_ce : std_logic;

-- constant play_pause : STD_LOGIC_VECTOR (1 downto 0) :="11";  

begin
  MUX : mux_8 port map(
           play_pause       => play_pause,
           control          => s_control,
           sept_seg         => sept_seg);

    cpt1 : compteur_mod_3 port map(
           clk              => clk,
           rst              => rst,
           ce               => s_ce, 
           control          => s_control,
           AN               => AN);
           
     gestion_CE1 : gestion_cee port map(
           clk              => clk,
           rst              => rst,
           ce               => s_ce);
           

end Behavioral;
