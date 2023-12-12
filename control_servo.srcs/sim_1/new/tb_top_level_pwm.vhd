-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 14.11.2023 15:16:31 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level_pwm is
end tb_top_level_pwm;

architecture tb of tb_top_level_pwm is

    component top_level_pwm
        port (idata : in std_logic_vector (7 downto 0);
              pwm   : out std_logic;
              clk   : in std_logic;
              reset : in std_logic);
    end component;

    signal idata : std_logic_vector (7 downto 0);
    signal pwm   : std_logic;
    signal clk   : std_logic;
    signal reset : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : top_level_pwm
    port map (idata => idata,
              pwm   => pwm,
              clk   => clk,
              reset => reset);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        idata <= (others => '0');

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;
        
        idata <= "10110100";

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        wait;
    end process;

end tb;