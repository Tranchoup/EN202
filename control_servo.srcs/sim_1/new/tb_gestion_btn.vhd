-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 7.11.2023 14:36:20 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_gestion_btn is
end tb_gestion_btn;

architecture tb of tb_gestion_btn is

    component gestion_btn
        port (btn      : in std_logic;
              clk      : in std_logic;
              reset    : in std_logic;
              data_out : out std_logic);
    end component;

    signal btn      : std_logic;
    signal clk      : std_logic;
    signal reset    : std_logic;
    signal data_out : std_logic;

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : gestion_btn
    port map (btn      => btn,
              clk      => clk,
              reset    => reset,
              data_out => data_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        btn <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;
        btn <= '1';
        wait for 350ns;
        btn <= '0';
        wait for 100 ns;
        btn <= '1';
        wait for 350ns;
        btn <= '0';
        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;
