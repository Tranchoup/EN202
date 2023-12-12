----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2023 04:53:23 PM
-- Design Name: 
-- Module Name: transformation_PWM - Behavioral
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

entity transformation_PWM is
    Port ( degres_in : in STD_LOGIC_VECTOR (7 downto 0);
           largeur : out STD_LOGIC_VECTOR (17 downto 0));
end transformation_PWM;

architecture Behavioral of transformation_PWM is

signal nb_de_coups_d_horloge_1_deg : std_logic_vector(17 downto 0):= ("011000100011001011");
signal largeur_i : integer;



begin
process(degres_in) 
begin
    --largeur <= std_logic_vector(UNSIGNED(nb_de_coups_d_horloge_1_deg)*unsigned(degres_in));
    --largeur <= std_logic_vector(to_unsigned(100000,17) + to_unsigned(555,10)*unsigned(degres_in));
case degres_in is

When "000000000" =>
   largeur_i <=50000;

When "000000001" =>
   largeur_i <=51056;

When "000000010" =>
   largeur_i <=52112;

When "000000011" =>
   largeur_i <=53168;

When "000000100" =>
   largeur_i <=54224;

When "000000101" =>
   largeur_i <=55280;

When "000000110" =>
   largeur_i <=56336;

When "000000111" =>
   largeur_i <=57392;

When "000001000" =>
   largeur_i <=58448;

When "000001001" =>
   largeur_i <=59504;

When "000001010" =>
   largeur_i <=60560;

When "000001011" =>
   largeur_i <=61616;

When "000001100" =>
   largeur_i <=62672;

When "000001101" =>
   largeur_i <=63728;

When "000001110" =>
   largeur_i <=64784;

When "000001111" =>
   largeur_i <=65840;

When "000010000" =>
   largeur_i <=66896;

When "000010001" =>
   largeur_i <=67952;

When "000010010" =>
   largeur_i <=69008;

When "000010011" =>
   largeur_i <=70064;

When "000010100" =>
   largeur_i <=71120;

When "000010101" =>
   largeur_i <=72176;

When "000010110" =>
   largeur_i <=73232;

When "000010111" =>
   largeur_i <=74288;

When "000011000" =>
   largeur_i <=75344;

When "000011001" =>
   largeur_i <=76400;

When "000011010" =>
   largeur_i <=77456;

When "000011011" =>
   largeur_i <=78512;

When "000011100" =>
   largeur_i <=79568;

When "000011101" =>
   largeur_i <=80624;

When "000011110" =>
   largeur_i <=81680;

When "000011111" =>
   largeur_i <=82736;

When "000100000" =>
   largeur_i <=83792;

When "000100001" =>
   largeur_i <=84848;

When "000100010" =>
   largeur_i <=85904;

When "000100011" =>
   largeur_i <=86960;

When "000100100" =>
   largeur_i <=88016;

When "000100101" =>
   largeur_i <=89072;

When "000100110" =>
   largeur_i <=90128;

When "000100111" =>
   largeur_i <=91184;

When "000101000" =>
   largeur_i <=92240;

When "000101001" =>
   largeur_i <=93296;

When "000101010" =>
   largeur_i <=94352;

When "000101011" =>
   largeur_i <=95408;

When "000101100" =>
   largeur_i <=96464;

When "000101101" =>
   largeur_i <=97520;

When "000101110" =>
   largeur_i <=98576;

When "000101111" =>
   largeur_i <=99632;

When "000110000" =>
   largeur_i <=100688;

When "000110001" =>
   largeur_i <=101744;

When "000110010" =>
   largeur_i <=102800;

When "000110011" =>
   largeur_i <=103856;

When "000110100" =>
   largeur_i <=104912;

When "000110101" =>
   largeur_i <=105968;

When "000110110" =>
   largeur_i <=107024;

When "000110111" =>
   largeur_i <=108080;

When "000111000" =>
   largeur_i <=109136;

When "000111001" =>
   largeur_i <=110192;

When "000111010" =>
   largeur_i <=111248;

When "000111011" =>
   largeur_i <=112304;

When "000111100" =>
   largeur_i <=113360;

When "000111101" =>
   largeur_i <=114416;

When "000111110" =>
   largeur_i <=115472;

When "000111111" =>
   largeur_i <=116528;

When "001000000" =>
   largeur_i <=117584;

When "001000001" =>
   largeur_i <=118640;

When "001000010" =>
   largeur_i <=119696;

When "001000011" =>
   largeur_i <=120752;

When "001000100" =>
   largeur_i <=121808;

When "001000101" =>
   largeur_i <=122864;

When "001000110" =>
   largeur_i <=123920;

When "001000111" =>
   largeur_i <=124976;

When "001001000" =>
   largeur_i <=126032;

When "001001001" =>
   largeur_i <=127088;

When "001001010" =>
   largeur_i <=128144;

When "001001011" =>
   largeur_i <=129200;

When "001001100" =>
   largeur_i <=130256;

When "001001101" =>
   largeur_i <=131312;

When "001001110" =>
   largeur_i <=132368;

When "001001111" =>
   largeur_i <=133424;

When "001010000" =>
   largeur_i <=134480;

When "001010001" =>
   largeur_i <=135536;

When "001010010" =>
   largeur_i <=136592;

When "001010011" =>
   largeur_i <=137648;

When "001010100" =>
   largeur_i <=138704;

When "001010101" =>
   largeur_i <=139760;

When "001010110" =>
   largeur_i <=140816;

When "001010111" =>
   largeur_i <=141872;

When "001011000" =>
   largeur_i <=142928;

When "001011001" =>
   largeur_i <=143984;

When "001011010" =>
   largeur_i <=145040;

When "001011011" =>
   largeur_i <=146096;

When "001011100" =>
   largeur_i <=147152;

When "001011101" =>
   largeur_i <=148208;

When "001011110" =>
   largeur_i <=149264;

When "001011111" =>
   largeur_i <=150320;

When "001100000" =>
   largeur_i <=151376;

When "001100001" =>
   largeur_i <=152432;

When "001100010" =>
   largeur_i <=153488;

When "001100011" =>
   largeur_i <=154544;

When "001100100" =>
   largeur_i <=155600;

When "001100101" =>
   largeur_i <=156656;

When "001100110" =>
   largeur_i <=157712;

When "001100111" =>
   largeur_i <=158768;

When "001101000" =>
   largeur_i <=159824;

When "001101001" =>
   largeur_i <=160880;

When "001101010" =>
   largeur_i <=161936;

When "001101011" =>
   largeur_i <=162992;

When "001101100" =>
   largeur_i <=164048;

When "001101101" =>
   largeur_i <=165104;

When "001101110" =>
   largeur_i <=166160;

When "001101111" =>
   largeur_i <=167216;

When "001110000" =>
   largeur_i <=168272;

When "001110001" =>
   largeur_i <=169328;

When "001110010" =>
   largeur_i <=170384;

When "001110011" =>
   largeur_i <=171440;

When "001110100" =>
   largeur_i <=172496;

When "001110101" =>
   largeur_i <=173552;

When "001110110" =>
   largeur_i <=174608;

When "001110111" =>
   largeur_i <=175664;

When "001111000" =>
   largeur_i <=176720;

When "001111001" =>
   largeur_i <=177776;

When "001111010" =>
   largeur_i <=178832;

When "001111011" =>
   largeur_i <=179888;

When "001111100" =>
   largeur_i <=180944;

When "001111101" =>
   largeur_i <=182000;

When "001111110" =>
   largeur_i <=183056;

When "001111111" =>
   largeur_i <=184112;

When "010000000" =>
   largeur_i <=185168;

When "010000001" =>
   largeur_i <=186224;

When "010000010" =>
   largeur_i <=187280;

When "010000011" =>
   largeur_i <=188336;

When "010000100" =>
   largeur_i <=189392;

When "010000101" =>
   largeur_i <=190448;

When "010000110" =>
   largeur_i <=191504;

When "010000111" =>
   largeur_i <=192560;

When "010001000" =>
   largeur_i <=193616;

When "010001001" =>
   largeur_i <=194672;

When "010001010" =>
   largeur_i <=195728;

When "010001011" =>
   largeur_i <=196784;

When "010001100" =>
   largeur_i <=197840;

When "010001101" =>
   largeur_i <=198896;

When "010001110" =>
   largeur_i <=199952;

When "010001111" =>
   largeur_i <=201008;

When "010010000" =>
   largeur_i <=202064;

When "010010001" =>
   largeur_i <=203120;

When "010010010" =>
   largeur_i <=204176;

When "010010011" =>
   largeur_i <=205232;

When "010010100" =>
   largeur_i <=206288;

When "010010101" =>
   largeur_i <=207344;

When "010010110" =>
   largeur_i <=208400;

When "010010111" =>
   largeur_i <=209456;

When "010011000" =>
   largeur_i <=210512;

When "010011001" =>
   largeur_i <=211568;

When "010011010" =>
   largeur_i <=212624;

When "010011011" =>
   largeur_i <=213680;

When "010011100" =>
   largeur_i <=214736;

When "010011101" =>
   largeur_i <=215792;

When "010011110" =>
   largeur_i <=216848;

When "010011111" =>
   largeur_i <=217904;

When "010100000" =>
   largeur_i <=218960;

When "010100001" =>
   largeur_i <=220016;

When "010100010" =>
   largeur_i <=221072;

When "010100011" =>
   largeur_i <=222128;

When "010100100" =>
   largeur_i <=223184;

When "010100101" =>
   largeur_i <=224240;

When "010100110" =>
   largeur_i <=225296;

When "010100111" =>
   largeur_i <=226352;

When "010101000" =>
   largeur_i <=227408;

When "010101001" =>
   largeur_i <=228464;

When "010101010" =>
   largeur_i <=229520;

When "010101011" =>
   largeur_i <=230576;

When "010101100" =>
   largeur_i <=231632;

When "010101101" =>
   largeur_i <=232688;

When "010101110" =>
   largeur_i <=233744;

When "010101111" =>
   largeur_i <=234800;

When "010110000" =>
   largeur_i <=235856;

When "010110001" =>
   largeur_i <=236912;

When "010110010" =>
   largeur_i <=237968;

When "010110011" =>
   largeur_i <=239024;

When "010110100" =>
   largeur_i <=240000;

When others =>
    largeur_i <= 240000;
end case;
largeur <= std_logic_vector(TO_UNSIGNED(largeur_i,largeur'length));
    
end process;
        

end Behavioral;
