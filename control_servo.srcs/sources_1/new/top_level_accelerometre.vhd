----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Théo Ranchoup
-- 
-- Create Date: 29.11.2023 18:34:23
-- Design Name: 
-- Module Name: top_level_accelerometre - Behavioral
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

entity top_level_accelerometre is
 Port (
      clk_i          : in  std_logic;
      rstn_i         : in  std_logic;
      sclk           : out STD_LOGIC;
      mosi           : out STD_LOGIC;
      miso           : in STD_LOGIC;
      ss             : out STD_LOGIC;    
      degres        : out STD_LOGIC_VECTOR (7 downto 0)
      );
end top_level_accelerometre;

architecture Behavioral of top_level_accelerometre is



Component AccelerometerCtl is
generic 
(
   SYSCLK_FREQUENCY_HZ : integer := 100000000;
   SCLK_FREQUENCY_HZ   : integer := 1000000;
   NUM_READS_AVG       : integer := 16;
   UPDATE_FREQUENCY_HZ : integer := 100
);
port
(
 SYSCLK     : in STD_LOGIC; -- System Clock
 RESET      : in STD_LOGIC;

 -- Spi interface Signals
 SCLK       : out STD_LOGIC;
 MOSI       : out STD_LOGIC;
 MISO       : in STD_LOGIC;
 SS         : out STD_LOGIC;

-- Accelerometer data signals
 ACCEL_X_OUT    : out STD_LOGIC_VECTOR (8 downto 0);
 ACCEL_Y_OUT    : out STD_LOGIC_VECTOR (8 downto 0)
 --ACCEL_MAG_OUT  : out STD_LOGIC_VECTOR (11 downto 0);
 --ACCEL_TMP_OUT  : out STD_LOGIC_VECTOR (11 downto 0)

);
end component;

component convertion_acceleration is
    Port ( acceleration : in STD_LOGIC_VECTOR (8 downto 0);
           degres : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal rst        : std_logic;

signal ACCEL_X       : STD_LOGIC_VECTOR (8 downto 0);
signal ACCEL_Y       : STD_LOGIC_VECTOR (8 downto 0);

begin
   -- The Reset Button on the Nexys4 board is active-low,

   rst <= not rstn_i;

Inst_AccelerometerCtl: AccelerometerCtl
   generic map
   (
        SYSCLK_FREQUENCY_HZ   => 100000000,
        SCLK_FREQUENCY_HZ     => 100000,
        NUM_READS_AVG         => 16,
        UPDATE_FREQUENCY_HZ   => 1000
   )
   port map
   (
       SYSCLK     => clk_i,
       RESET      => rst, 
       -- Spi interface Signals
       SCLK       => sclk,
       MOSI       => mosi,
       MISO       => miso,
       SS         => ss,
	   
      -- Accelerometer data signals
       ACCEL_X_OUT   => ACCEL_X,
       ACCEL_Y_OUT   => ACCEL_Y
   );


convertion_accelerometre_degres : convertion_acceleration

    port map
        (acceleration => ACCEL_X,
         degres => degres
         );

end Behavioral;
