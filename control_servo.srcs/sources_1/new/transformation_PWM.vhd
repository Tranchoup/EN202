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
process(degres_in,largeur_i) 
begin
    --largeur <= std_logic_vector(UNSIGNED(nb_de_coups_d_horloge_1_deg)*unsigned(degres_in));
    --largeur <= std_logic_vector(to_unsigned(100000,17) + to_unsigned(555,10)*unsigned(degres_in));
case degres_in is

When "00000000" =>
   largeur_i <=50000;

When "00000001" =>
   largeur_i <=51056;

When "00000010" =>
   largeur_i <=52112;

When "00000011" =>
   largeur_i <=53168;

When "00000100" =>
   largeur_i <=54224;

When "00000101" =>
   largeur_i <=55280;

When "00000110" =>
   largeur_i <=56336;

When "00000111" =>
   largeur_i <=57392;

When "00001000" =>
   largeur_i <=58448;

When "00001001" =>
   largeur_i <=59504;

When "00001010" =>
   largeur_i <=60560;

When "00001011" =>
   largeur_i <=61616;

When "00001100" =>
   largeur_i <=62672;

When "00001101" =>
   largeur_i <=63728;

When "00001110" =>
   largeur_i <=64784;

When "00001111" =>
   largeur_i <=65840;

When "00010000" =>
   largeur_i <=66896;

When "00010001" =>
   largeur_i <=67952;

When "00010010" =>
   largeur_i <=69008;

When "00010011" =>
   largeur_i <=70064;

When "00010100" =>
   largeur_i <=71120;

When "00010101" =>
   largeur_i <=72176;

When "00010110" =>
   largeur_i <=73232;

When "00010111" =>
   largeur_i <=74288;

When "00011000" =>
   largeur_i <=75344;

When "00011001" =>
   largeur_i <=76400;

When "00011010" =>
   largeur_i <=77456;

When "00011011" =>
   largeur_i <=78512;

When "00011100" =>
   largeur_i <=79568;

When "00011101" =>
   largeur_i <=80624;

When "00011110" =>
   largeur_i <=81680;

When "00011111" =>
   largeur_i <=82736;

When "00100000" =>
   largeur_i <=83792;

When "00100001" =>
   largeur_i <=84848;

When "00100010" =>
   largeur_i <=85904;

When "00100011" =>
   largeur_i <=86960;

When "00100100" =>
   largeur_i <=88016;

When "00100101" =>
   largeur_i <=89072;

When "00100110" =>
   largeur_i <=90128;

When "00100111" =>
   largeur_i <=91184;

When "00101000" =>
   largeur_i <=92240;

When "00101001" =>
   largeur_i <=93296;

When "00101010" =>
   largeur_i <=94352;

When "00101011" =>
   largeur_i <=95408;

When "00101100" =>
   largeur_i <=96464;

When "00101101" =>
   largeur_i <=97520;

When "00101110" =>
   largeur_i <=98576;

When "00101111" =>
   largeur_i <=99632;

When "00110000" =>
   largeur_i <=100688;

When "00110001" =>
   largeur_i <=101744;

When "00110010" =>
   largeur_i <=102800;

When "00110011" =>
   largeur_i <=103856;

When "00110100" =>
   largeur_i <=104912;

When "00110101" =>
   largeur_i <=105968;

When "00110110" =>
   largeur_i <=107024;

When "00110111" =>
   largeur_i <=108080;

When "00111000" =>
   largeur_i <=109136;

When "00111001" =>
   largeur_i <=110192;

When "00111010" =>
   largeur_i <=111248;

When "00111011" =>
   largeur_i <=112304;

When "00111100" =>
   largeur_i <=113360;

When "00111101" =>
   largeur_i <=114416;

When "00111110" =>
   largeur_i <=115472;

When "00111111" =>
   largeur_i <=116528;

When "01000000" =>
   largeur_i <=117584;

When "01000001" =>
   largeur_i <=118640;

When "01000010" =>
   largeur_i <=119696;

When "01000011" =>
   largeur_i <=120752;

When "01000100" =>
   largeur_i <=121808;

When "01000101" =>
   largeur_i <=122864;

When "01000110" =>
   largeur_i <=123920;

When "01000111" =>
   largeur_i <=124976;

When "01001000" =>
   largeur_i <=126032;

When "01001001" =>
   largeur_i <=127088;

When "01001010" =>
   largeur_i <=128144;

When "01001011" =>
   largeur_i <=129200;

When "01001100" =>
   largeur_i <=130256;

When "01001101" =>
   largeur_i <=131312;

When "01001110" =>
   largeur_i <=132368;

When "01001111" =>
   largeur_i <=133424;

When "01010000" =>
   largeur_i <=134480;

When "01010001" =>
   largeur_i <=135536;

When "01010010" =>
   largeur_i <=136592;

When "01010011" =>
   largeur_i <=137648;

When "01010100" =>
   largeur_i <=138704;

When "01010101" =>
   largeur_i <=139760;

When "01010110" =>
   largeur_i <=140816;

When "01010111" =>
   largeur_i <=141872;

When "01011000" =>
   largeur_i <=142928;

When "01011001" =>
   largeur_i <=143984;

When "01011010" =>
   largeur_i <=145040;

When "01011011" =>
   largeur_i <=146096;

When "01011100" =>
   largeur_i <=147152;

When "01011101" =>
   largeur_i <=148208;

When "01011110" =>
   largeur_i <=149264;

When "01011111" =>
   largeur_i <=150320;

When "01100000" =>
   largeur_i <=151376;

When "01100001" =>
   largeur_i <=152432;

When "01100010" =>
   largeur_i <=153488;

When "01100011" =>
   largeur_i <=154544;

When "01100100" =>
   largeur_i <=155600;

When "01100101" =>
   largeur_i <=156656;

When "01100110" =>
   largeur_i <=157712;

When "01100111" =>
   largeur_i <=158768;

When "01101000" =>
   largeur_i <=159824;

When "01101001" =>
   largeur_i <=160880;

When "01101010" =>
   largeur_i <=161936;

When "01101011" =>
   largeur_i <=162992;

When "01101100" =>
   largeur_i <=164048;

When "01101101" =>
   largeur_i <=165104;

When "01101110" =>
   largeur_i <=166160;

When "01101111" =>
   largeur_i <=167216;

When "01110000" =>
   largeur_i <=168272;

When "01110001" =>
   largeur_i <=169328;

When "01110010" =>
   largeur_i <=170384;

When "01110011" =>
   largeur_i <=171440;

When "01110100" =>
   largeur_i <=172496;

When "01110101" =>
   largeur_i <=173552;

When "01110110" =>
   largeur_i <=174608;

When "01110111" =>
   largeur_i <=175664;

When "01111000" =>
   largeur_i <=176720;

When "01111001" =>
   largeur_i <=177776;

When "01111010" =>
   largeur_i <=178832;

When "01111011" =>
   largeur_i <=179888;

When "01111100" =>
   largeur_i <=180944;

When "01111101" =>
   largeur_i <=182000;

When "01111110" =>
   largeur_i <=183056;

When "01111111" =>
   largeur_i <=184112;

When "10000000" =>
   largeur_i <=185168;

When "10000001" =>
   largeur_i <=186224;

When "10000010" =>
   largeur_i <=187280;

When "10000011" =>
   largeur_i <=188336;

When "10000100" =>
   largeur_i <=189392;

When "10000101" =>
   largeur_i <=190448;

When "10000110" =>
   largeur_i <=191504;

When "10000111" =>
   largeur_i <=192560;

When "10001000" =>
   largeur_i <=193616;

When "10001001" =>
   largeur_i <=194672;

When "10001010" =>
   largeur_i <=195728;

When "10001011" =>
   largeur_i <=196784;

When "10001100" =>
   largeur_i <=197840;

When "10001101" =>
   largeur_i <=198896;

When "10001110" =>
   largeur_i <=199952;

When "10001111" =>
   largeur_i <=201008;

When "10010000" =>
   largeur_i <=202064;

When "10010001" =>
   largeur_i <=203120;

When "10010010" =>
   largeur_i <=204176;

When "10010011" =>
   largeur_i <=205232;

When "10010100" =>
   largeur_i <=206288;

When "10010101" =>
   largeur_i <=207344;

When "10010110" =>
   largeur_i <=208400;

When "10010111" =>
   largeur_i <=209456;

When "10011000" =>
   largeur_i <=210512;

When "10011001" =>
   largeur_i <=211568;

When "10011010" =>
   largeur_i <=212624;

When "10011011" =>
   largeur_i <=213680;

When "10011100" =>
   largeur_i <=214736;

When "10011101" =>
   largeur_i <=215792;

When "10011110" =>
   largeur_i <=216848;

When "10011111" =>
   largeur_i <=217904;

When "10100000" =>
   largeur_i <=218960;

When "10100001" =>
   largeur_i <=220016;

When "10100010" =>
   largeur_i <=221072;

When "10100011" =>
   largeur_i <=222128;

When "10100100" =>
   largeur_i <=223184;

When "10100101" =>
   largeur_i <=224240;

When "10100110" =>
   largeur_i <=225296;

When "10100111" =>
   largeur_i <=226352;

When "10101000" =>
   largeur_i <=227408;

When "10101001" =>
   largeur_i <=228464;

When "10101010" =>
   largeur_i <=229520;

When "10101011" =>
   largeur_i <=230576;

When "10101100" =>
   largeur_i <=231632;

When "10101101" =>
   largeur_i <=232688;

When "10101110" =>
   largeur_i <=233744;

When "10101111" =>
   largeur_i <=234800;

When "10110000" =>
   largeur_i <=235856;

When "10110001" =>
   largeur_i <=236912;

When "10110010" =>
   largeur_i <=237968;

When "10110011" =>
   largeur_i <=239024;

When "10110100" =>
   largeur_i <=240000;

When others =>
    largeur_i <= 240000;
end case;
largeur <= std_logic_vector(TO_UNSIGNED(largeur_i,largeur'length));
    
end process;
        

end Behavioral;
