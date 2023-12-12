-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 5.12.2023 15:00:03 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_FSM is
end tb_FSM;

architecture tb of tb_FSM is

    component FSM
        port (b_pause    : in std_logic;
              b_play     : in std_logic;
              reset      : in std_logic;
              clk        : in std_logic;
              data_in    : in std_logic_vector (7 downto 0);
              data_out   : out std_logic_vector (7 downto 0);
              play_pause : out std_logic_vector (1 downto 0));
    end component;

    signal b_pause    : std_logic;
    signal b_play     : std_logic;
    signal reset      : std_logic;
    signal clk        : std_logic;
    signal data_in    : std_logic_vector (7 downto 0);
    signal data_out   : std_logic_vector (7 downto 0);
    signal play_pause : std_logic_vector (1 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : FSM
    port map (b_pause    => b_pause,
              b_play     => b_play,
              reset      => reset,
              clk        => clk,
              data_in    => data_in,
              data_out   => data_out,
              play_pause => play_pause);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        b_pause <= '0';
        b_play <= '0';
        data_in <= (others => '0');

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;
        b_play <= '1';
        data_in <= "00000100";
        wait for 20 ns;
        b_play <= '0';
        data_in <= "00000100";
        wait for 40 ns;
        data_in <= "00001000";
        wait for 20ns;
        b_pause <= '1';
        wait for 30ns;
        b_pause <= '0';
        data_in <= "00000001";
        wait for 30ns ;
        b_pause <= '1';
        wait for 30ns;
        b_pause <= '0';
        data_in <= "00000001";
        wait for 30ns;
        b_play <= '1';
        data_in <= "00000001";
        wait for 30ns;
        b_play <= '0';
        data_in <= "00000010";
        wait for 30ns;
        data_in <= "00000100";
        wait for 30ns;
        data_in <= "00001000";

    
        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;