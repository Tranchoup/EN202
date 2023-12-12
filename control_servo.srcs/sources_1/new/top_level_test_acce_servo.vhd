----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2023 18:18:38
-- Design Name: 
-- Module Name: top_level_test_acce_servo - Behavioral
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
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level_test_acce_servo is
 Port (       
      --basic
      clk            : in  std_logic;
      rst            : in  std_logic;
      rst_accel     : in std_logic;
      
      -- SPI
      sclk           : out STD_LOGIC;
      mosi           : out STD_LOGIC;
      miso           : in STD_LOGIC;
      ss             : out STD_LOGIC;
      
      --Controle le servo
      PWM            : out std_logic);
end top_level_test_acce_servo;

architecture Behavioral of top_level_test_acce_servo is


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

signal degres : std_logic_vector(7 downto 0);

begin

 accelerometre: top_level_accelerometre
   port map
   (   
	   clk_i          => clk,
       rstn_i         => rst_accel,
       sclk           =>sclk,
       mosi           =>mosi,
       miso           =>miso,
       ss             => ss,   
       degres        => degres
   );
   
   Control_servo : top_level_pwm
    port map
    (
        idata => degres,
        pwm => PWM,
        clk => clk,
        reset => rst
        );
   

end Behavioral;
