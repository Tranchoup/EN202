----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2023 15:43:01
-- Design Name: 
-- Module Name: top_level_projet - Behavioral
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

entity top_level_projet is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           rst_accel : in STD_LOGIC;
           
           -- SPI
           sclk : out STD_LOGIC;
           mosi : out STD_LOGIC;
           miso : in STD_LOGIC;
           ss : out STD_LOGIC;
           
           -- servo
           PWM : out STD_LOGIC;
           
           -- Boutons
           BTN_play : in STD_LOGIC;
           BTN_pause : in STD_LOGIC;
           led : out std_logic_vector(1 Downto 0)
          );
end top_level_projet;

architecture Behavioral of top_level_projet is

Component top_level_pwm is
    Port ( idata : in STD_LOGIC_VECTOR (7 downto 0);
           pwm : out STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end Component;

Component top_level_accelerometre is
    Port (       
      clk_i          : in  std_logic;
      rstn_i         : in  std_logic;
      sclk           : out STD_LOGIC;
      mosi           : out STD_LOGIC;
      miso           : in STD_LOGIC;
      ss             : out STD_LOGIC;    
      degres        : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component gestion_btn is
    Port ( btn : in STD_LOGIC;
           clk : in std_logic;
           reset : in std_logic;
           data_out : out STD_LOGIC);
end component;
 

Component FSM is
    Port ( b_pause : in STD_LOGIC;
           b_play : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           play_pause : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal degres_accel : std_logic_vector(7 downto 0);
signal degres_PWM : std_logic_vector(7 downto 0);
signal BTN_play_registre : std_logic;
signal BTN_pause_registre : std_logic;



begin

FSM1 : FSM 
port map
    (
    b_pause    => BTN_pause_registre,
    b_play     => BTN_play_registre,
    reset      => rst,
    clk        => clk,
    data_in    => degres_accel,
    data_out   => degres_PWM,
    play_pause => led
    );
    
BTN_L : gestion_btn
    Port map
    ( 
           btn => BTN_play,
           clk => clk,
           reset => rst,
           data_out => BTN_play_registre
     );
     
BTN_R : gestion_btn
    Port map
    ( 
           btn => BTN_pause,
           clk => clk,
           reset => rst,
           data_out => BTN_pause_registre
     );
           
accelerometre: top_level_accelerometre
   port map
   (   
	   clk_i          => clk,
       rstn_i         => rst_accel,
       sclk           =>sclk,
       mosi           =>mosi,
       miso           =>miso,
       ss             => ss,   
       degres        => degres_accel
   );
   
   Control_servo : top_level_pwm
    port map
    (
        idata => degres_PWM,
        pwm => PWM,
        clk => clk,
        reset => rst
        );
   

end Behavioral;
