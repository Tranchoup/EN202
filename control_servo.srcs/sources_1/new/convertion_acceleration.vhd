----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Théo Ranchoup
-- 
-- Create Date: 28.11.2023 12:15:27
-- Design Name: 
-- Module Name: convertion_acceleration - Behavioral
-- Project Name: Projet servo 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- L'accélération arrive sous la forme suivante : 
-- -1g: 0, 0g: 255, 1g: 511
-- On va chercher a la faire sortir sous forme d'un signed compris entre -255 et 255 tel que
-- -1g : -255,  0g : 0, 1g : 255
--
-- L'intéret est de calculer les vitesses et les position directement en relatif
-- Pour  cela on va tronquer le 1er bit que signal d'accélération, si il vaut 0 on fait le complément
-- a 255 et on le met en signed avec un '-' devant.
-- j'etais dans l'ignorance ptdr
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

entity convertion_acceleration is
    Port ( acceleration : in STD_LOGIC_VECTOR (8 downto 0);
           degres : out STD_LOGIC_VECTOR (7 downto 0));
end convertion_acceleration;

architecture Behavioral of convertion_acceleration is

signal degres_i : integer;

begin
process(acceleration,degres_i)
begin

case acceleration is
When "000000000" =>
   degres_i <=0;
When "000000001" =>
   degres_i <=1;

When "000000010" =>
   degres_i <=1;

When "000000011" =>
   degres_i <=1;

When "000000100" =>
   degres_i <=2;

When "000000101" =>
   degres_i <=2;

When "000000110" =>
   degres_i <=2;

When "000000111" =>
   degres_i <=3;

When "000001000" =>
   degres_i <=3;

When "000001001" =>
   degres_i <=3;

When "000001010" =>
   degres_i <=4;

When "000001011" =>
   degres_i <=4;

When "000001100" =>
   degres_i <=4;

When "000001101" =>
   degres_i <=5;

When "000001110" =>
   degres_i <=5;

When "000001111" =>
   degres_i <=5;

When "000010000" =>
   degres_i <=6;

When "000010001" =>
   degres_i <=6;

When "000010010" =>
   degres_i <=6;

When "000010011" =>
   degres_i <=7;

When "000010100" =>
   degres_i <=7;

When "000010101" =>
   degres_i <=7;

When "000010110" =>
   degres_i <=8;

When "000010111" =>
   degres_i <=8;

When "000011000" =>
   degres_i <=8;

When "000011001" =>
   degres_i <=9;

When "000011010" =>
   degres_i <=9;

When "000011011" =>
   degres_i <=9;

When "000011100" =>
   degres_i <=10;

When "000011101" =>
   degres_i <=10;

When "000011110" =>
   degres_i <=10;

When "000011111" =>
   degres_i <=11;

When "000100000" =>
   degres_i <=11;

When "000100001" =>
   degres_i <=11;

When "000100010" =>
   degres_i <=12;

When "000100011" =>
   degres_i <=12;

When "000100100" =>
   degres_i <=12;

When "000100101" =>
   degres_i <=13;

When "000100110" =>
   degres_i <=13;

When "000100111" =>
   degres_i <=13;

When "000101000" =>
   degres_i <=14;

When "000101001" =>
   degres_i <=14;

When "000101010" =>
   degres_i <=14;

When "000101011" =>
   degres_i <=15;

When "000101100" =>
   degres_i <=15;

When "000101101" =>
   degres_i <=15;

When "000101110" =>
   degres_i <=16;

When "000101111" =>
   degres_i <=16;

When "000110000" =>
   degres_i <=16;

When "000110001" =>
   degres_i <=17;

When "000110010" =>
   degres_i <=17;

When "000110011" =>
   degres_i <=17;

When "000110100" =>
   degres_i <=18;

When "000110101" =>
   degres_i <=18;

When "000110110" =>
   degres_i <=18;

When "000110111" =>
   degres_i <=19;

When "000111000" =>
   degres_i <=19;

When "000111001" =>
   degres_i <=19;

When "000111010" =>
   degres_i <=20;

When "000111011" =>
   degres_i <=20;

When "000111100" =>
   degres_i <=20;

When "000111101" =>
   degres_i <=21;

When "000111110" =>
   degres_i <=21;

When "000111111" =>
   degres_i <=21;

When "001000000" =>
   degres_i <=22;

When "001000001" =>
   degres_i <=22;

When "001000010" =>
   degres_i <=22;

When "001000011" =>
   degres_i <=23;

When "001000100" =>
   degres_i <=23;

When "001000101" =>
   degres_i <=23;

When "001000110" =>
   degres_i <=24;

When "001000111" =>
   degres_i <=24;

When "001001000" =>
   degres_i <=24;

When "001001001" =>
   degres_i <=25;

When "001001010" =>
   degres_i <=25;

When "001001011" =>
   degres_i <=25;

When "001001100" =>
   degres_i <=26;

When "001001101" =>
   degres_i <=26;

When "001001110" =>
   degres_i <=26;

When "001001111" =>
   degres_i <=27;

When "001010000" =>
   degres_i <=27;

When "001010001" =>
   degres_i <=27;

When "001010010" =>
   degres_i <=28;

When "001010011" =>
   degres_i <=28;

When "001010100" =>
   degres_i <=28;

When "001010101" =>
   degres_i <=29;

When "001010110" =>
   degres_i <=29;

When "001010111" =>
   degres_i <=29;

When "001011000" =>
   degres_i <=30;

When "001011001" =>
   degres_i <=30;

When "001011010" =>
   degres_i <=30;

When "001011011" =>
   degres_i <=31;

When "001011100" =>
   degres_i <=31;

When "001011101" =>
   degres_i <=31;

When "001011110" =>
   degres_i <=32;

When "001011111" =>
   degres_i <=32;

When "001100000" =>
   degres_i <=32;

When "001100001" =>
   degres_i <=33;

When "001100010" =>
   degres_i <=33;

When "001100011" =>
   degres_i <=33;

When "001100100" =>
   degres_i <=34;

When "001100101" =>
   degres_i <=34;

When "001100110" =>
   degres_i <=34;

When "001100111" =>
   degres_i <=35;

When "001101000" =>
   degres_i <=35;

When "001101001" =>
   degres_i <=35;

When "001101010" =>
   degres_i <=36;

When "001101011" =>
   degres_i <=36;

When "001101100" =>
   degres_i <=36;

When "001101101" =>
   degres_i <=37;

When "001101110" =>
   degres_i <=37;

When "001101111" =>
   degres_i <=37;

When "001110000" =>
   degres_i <=38;

When "001110001" =>
   degres_i <=38;

When "001110010" =>
   degres_i <=38;

When "001110011" =>
   degres_i <=39;

When "001110100" =>
   degres_i <=39;

When "001110101" =>
   degres_i <=39;

When "001110110" =>
   degres_i <=40;

When "001110111" =>
   degres_i <=40;

When "001111000" =>
   degres_i <=40;

When "001111001" =>
   degres_i <=41;

When "001111010" =>
   degres_i <=41;

When "001111011" =>
   degres_i <=41;

When "001111100" =>
   degres_i <=42;

When "001111101" =>
   degres_i <=42;

When "001111110" =>
   degres_i <=42;

When "001111111" =>
   degres_i <=43;

When "010000000" =>
   degres_i <=43;

When "010000001" =>
   degres_i <=43;

When "010000010" =>
   degres_i <=44;

When "010000011" =>
   degres_i <=44;

When "010000100" =>
   degres_i <=44;

When "010000101" =>
   degres_i <=45;

When "010000110" =>
   degres_i <=45;

When "010000111" =>
   degres_i <=45;

When "010001000" =>
   degres_i <=46;

When "010001001" =>
   degres_i <=46;

When "010001010" =>
   degres_i <=46;

When "010001011" =>
   degres_i <=47;

When "010001100" =>
   degres_i <=47;

When "010001101" =>
   degres_i <=47;

When "010001110" =>
   degres_i <=48;

When "010001111" =>
   degres_i <=48;

When "010010000" =>
   degres_i <=48;

When "010010001" =>
   degres_i <=49;

When "010010010" =>
   degres_i <=49;

When "010010011" =>
   degres_i <=49;

When "010010100" =>
   degres_i <=50;

When "010010101" =>
   degres_i <=50;

When "010010110" =>
   degres_i <=50;

When "010010111" =>
   degres_i <=51;

When "010011000" =>
   degres_i <=51;

When "010011001" =>
   degres_i <=51;

When "010011010" =>
   degres_i <=52;

When "010011011" =>
   degres_i <=52;

When "010011100" =>
   degres_i <=52;

When "010011101" =>
   degres_i <=53;

When "010011110" =>
   degres_i <=53;

When "010011111" =>
   degres_i <=53;

When "010100000" =>
   degres_i <=54;

When "010100001" =>
   degres_i <=54;

When "010100010" =>
   degres_i <=54;

When "010100011" =>
   degres_i <=55;

When "010100100" =>
   degres_i <=55;

When "010100101" =>
   degres_i <=55;

When "010100110" =>
   degres_i <=56;

When "010100111" =>
   degres_i <=56;

When "010101000" =>
   degres_i <=56;

When "010101001" =>
   degres_i <=57;

When "010101010" =>
   degres_i <=57;

When "010101011" =>
   degres_i <=57;

When "010101100" =>
   degres_i <=58;

When "010101101" =>
   degres_i <=58;

When "010101110" =>
   degres_i <=58;

When "010101111" =>
   degres_i <=59;

When "010110000" =>
   degres_i <=59;

When "010110001" =>
   degres_i <=59;

When "010110010" =>
   degres_i <=60;

When "010110011" =>
   degres_i <=60;

When "010110100" =>
   degres_i <=60;

When "010110101" =>
   degres_i <=61;

When "010110110" =>
   degres_i <=61;

When "010110111" =>
   degres_i <=61;

When "010111000" =>
   degres_i <=62;

When "010111001" =>
   degres_i <=62;

When "010111010" =>
   degres_i <=62;

When "010111011" =>
   degres_i <=63;

When "010111100" =>
   degres_i <=63;

When "010111101" =>
   degres_i <=63;

When "010111110" =>
   degres_i <=64;

When "010111111" =>
   degres_i <=64;

When "011000000" =>
   degres_i <=64;

When "011000001" =>
   degres_i <=65;

When "011000010" =>
   degres_i <=65;

When "011000011" =>
   degres_i <=65;

When "011000100" =>
   degres_i <=66;

When "011000101" =>
   degres_i <=66;

When "011000110" =>
   degres_i <=66;

When "011000111" =>
   degres_i <=67;

When "011001000" =>
   degres_i <=67;

When "011001001" =>
   degres_i <=67;

When "011001010" =>
   degres_i <=68;

When "011001011" =>
   degres_i <=68;

When "011001100" =>
   degres_i <=68;

When "011001101" =>
   degres_i <=69;

When "011001110" =>
   degres_i <=69;

When "011001111" =>
   degres_i <=69;

When "011010000" =>
   degres_i <=70;

When "011010001" =>
   degres_i <=70;

When "011010010" =>
   degres_i <=70;

When "011010011" =>
   degres_i <=71;

When "011010100" =>
   degres_i <=71;

When "011010101" =>
   degres_i <=71;

When "011010110" =>
   degres_i <=72;

When "011010111" =>
   degres_i <=72;

When "011011000" =>
   degres_i <=72;

When "011011001" =>
   degres_i <=73;

When "011011010" =>
   degres_i <=73;

When "011011011" =>
   degres_i <=73;

When "011011100" =>
   degres_i <=74;

When "011011101" =>
   degres_i <=74;

When "011011110" =>
   degres_i <=74;

When "011011111" =>
   degres_i <=75;

When "011100000" =>
   degres_i <=75;

When "011100001" =>
   degres_i <=75;

When "011100010" =>
   degres_i <=76;

When "011100011" =>
   degres_i <=76;

When "011100100" =>
   degres_i <=76;

When "011100101" =>
   degres_i <=77;

When "011100110" =>
   degres_i <=77;

When "011100111" =>
   degres_i <=77;

When "011101000" =>
   degres_i <=78;

When "011101001" =>
   degres_i <=78;

When "011101010" =>
   degres_i <=78;

When "011101011" =>
   degres_i <=79;

When "011101100" =>
   degres_i <=79;

When "011101101" =>
   degres_i <=79;

When "011101110" =>
   degres_i <=80;

When "011101111" =>
   degres_i <=80;

When "011110000" =>
   degres_i <=80;

When "011110001" =>
   degres_i <=81;

When "011110010" =>
   degres_i <=81;

When "011110011" =>
   degres_i <=81;

When "011110100" =>
   degres_i <=82;

When "011110101" =>
   degres_i <=82;

When "011110110" =>
   degres_i <=82;

When "011110111" =>
   degres_i <=83;

When "011111000" =>
   degres_i <=83;

When "011111001" =>
   degres_i <=83;

When "011111010" =>
   degres_i <=84;

When "011111011" =>
   degres_i <=84;

When "011111100" =>
   degres_i <=84;

When "011111101" =>
   degres_i <=85;

When "011111110" =>
   degres_i <=85;

When "011111111" =>
   degres_i <=85;

When "100000000" =>
   degres_i <=86;

When "100000001" =>
   degres_i <=86;

When "100000010" =>
   degres_i <=86;

When "100000011" =>
   degres_i <=87;

When "100000100" =>
   degres_i <=87;

When "100000101" =>
   degres_i <=87;

When "100000110" =>
   degres_i <=88;

When "100000111" =>
   degres_i <=88;

When "100001000" =>
   degres_i <=88;

When "100001001" =>
   degres_i <=89;

When "100001010" =>
   degres_i <=89;

When "100001011" =>
   degres_i <=89;

When "100001100" =>
   degres_i <=90;

When "100001101" =>
   degres_i <=90;

When "100001110" =>
   degres_i <=90;

When "100001111" =>
   degres_i <=91;

When "100010000" =>
   degres_i <=91;

When "100010001" =>
   degres_i <=91;

When "100010010" =>
   degres_i <=92;

When "100010011" =>
   degres_i <=92;

When "100010100" =>
   degres_i <=92;

When "100010101" =>
   degres_i <=93;

When "100010110" =>
   degres_i <=93;

When "100010111" =>
   degres_i <=93;

When "100011000" =>
   degres_i <=94;

When "100011001" =>
   degres_i <=94;

When "100011010" =>
   degres_i <=94;

When "100011011" =>
   degres_i <=95;

When "100011100" =>
   degres_i <=95;

When "100011101" =>
   degres_i <=95;

When "100011110" =>
   degres_i <=96;

When "100011111" =>
   degres_i <=96;

When "100100000" =>
   degres_i <=96;

When "100100001" =>
   degres_i <=97;

When "100100010" =>
   degres_i <=97;

When "100100011" =>
   degres_i <=97;

When "100100100" =>
   degres_i <=98;

When "100100101" =>
   degres_i <=98;

When "100100110" =>
   degres_i <=98;

When "100100111" =>
   degres_i <=99;

When "100101000" =>
   degres_i <=99;

When "100101001" =>
   degres_i <=99;

When "100101010" =>
   degres_i <=100;

When "100101011" =>
   degres_i <=100;

When "100101100" =>
   degres_i <=100;

When "100101101" =>
   degres_i <=101;

When "100101110" =>
   degres_i <=101;

When "100101111" =>
   degres_i <=101;

When "100110000" =>
   degres_i <=102;

When "100110001" =>
   degres_i <=102;

When "100110010" =>
   degres_i <=102;

When "100110011" =>
   degres_i <=103;

When "100110100" =>
   degres_i <=103;

When "100110101" =>
   degres_i <=103;

When "100110110" =>
   degres_i <=104;

When "100110111" =>
   degres_i <=104;

When "100111000" =>
   degres_i <=104;

When "100111001" =>
   degres_i <=105;

When "100111010" =>
   degres_i <=105;

When "100111011" =>
   degres_i <=105;

When "100111100" =>
   degres_i <=106;

When "100111101" =>
   degres_i <=106;

When "100111110" =>
   degres_i <=106;

When "100111111" =>
   degres_i <=107;

When "101000000" =>
   degres_i <=107;

When "101000001" =>
   degres_i <=107;

When "101000010" =>
   degres_i <=108;

When "101000011" =>
   degres_i <=108;

When "101000100" =>
   degres_i <=108;

When "101000101" =>
   degres_i <=109;

When "101000110" =>
   degres_i <=109;

When "101000111" =>
   degres_i <=109;

When "101001000" =>
   degres_i <=110;

When "101001001" =>
   degres_i <=110;

When "101001010" =>
   degres_i <=110;

When "101001011" =>
   degres_i <=111;

When "101001100" =>
   degres_i <=111;

When "101001101" =>
   degres_i <=111;

When "101001110" =>
   degres_i <=112;

When "101001111" =>
   degres_i <=112;

When "101010000" =>
   degres_i <=112;

When "101010001" =>
   degres_i <=113;

When "101010010" =>
   degres_i <=113;

When "101010011" =>
   degres_i <=113;

When "101010100" =>
   degres_i <=114;

When "101010101" =>
   degres_i <=114;

When "101010110" =>
   degres_i <=114;

When "101010111" =>
   degres_i <=115;

When "101011000" =>
   degres_i <=115;

When "101011001" =>
   degres_i <=115;

When "101011010" =>
   degres_i <=116;

When "101011011" =>
   degres_i <=116;

When "101011100" =>
   degres_i <=116;

When "101011101" =>
   degres_i <=117;

When "101011110" =>
   degres_i <=117;

When "101011111" =>
   degres_i <=117;

When "101100000" =>
   degres_i <=118;

When "101100001" =>
   degres_i <=118;

When "101100010" =>
   degres_i <=118;

When "101100011" =>
   degres_i <=119;

When "101100100" =>
   degres_i <=119;

When "101100101" =>
   degres_i <=119;

When "101100110" =>
   degres_i <=120;

When "101100111" =>
   degres_i <=120;

When "101101000" =>
   degres_i <=120;

When "101101001" =>
   degres_i <=121;

When "101101010" =>
   degres_i <=121;

When "101101011" =>
   degres_i <=121;

When "101101100" =>
   degres_i <=122;

When "101101101" =>
   degres_i <=122;

When "101101110" =>
   degres_i <=122;

When "101101111" =>
   degres_i <=123;

When "101110000" =>
   degres_i <=123;

When "101110001" =>
   degres_i <=123;

When "101110010" =>
   degres_i <=124;

When "101110011" =>
   degres_i <=124;

When "101110100" =>
   degres_i <=124;

When "101110101" =>
   degres_i <=125;

When "101110110" =>
   degres_i <=125;

When "101110111" =>
   degres_i <=125;

When "101111000" =>
   degres_i <=126;

When "101111001" =>
   degres_i <=126;

When "101111010" =>
   degres_i <=126;

When "101111011" =>
   degres_i <=127;

When "101111100" =>
   degres_i <=127;

When "101111101" =>
   degres_i <=127;

When "101111110" =>
   degres_i <=128;

When "101111111" =>
   degres_i <=128;

When "110000000" =>
   degres_i <=128;

When "110000001" =>
   degres_i <=129;

When "110000010" =>
   degres_i <=129;

When "110000011" =>
   degres_i <=129;

When "110000100" =>
   degres_i <=130;

When "110000101" =>
   degres_i <=130;

When "110000110" =>
   degres_i <=130;

When "110000111" =>
   degres_i <=131;

When "110001000" =>
   degres_i <=131;

When "110001001" =>
   degres_i <=131;

When "110001010" =>
   degres_i <=132;

When "110001011" =>
   degres_i <=132;

When "110001100" =>
   degres_i <=132;

When "110001101" =>
   degres_i <=133;

When "110001110" =>
   degres_i <=133;

When "110001111" =>
   degres_i <=133;

When "110010000" =>
   degres_i <=134;

When "110010001" =>
   degres_i <=134;

When "110010010" =>
   degres_i <=134;

When "110010011" =>
   degres_i <=135;

When "110010100" =>
   degres_i <=135;

When "110010101" =>
   degres_i <=135;

When "110010110" =>
   degres_i <=136;

When "110010111" =>
   degres_i <=136;

When "110011000" =>
   degres_i <=136;

When "110011001" =>
   degres_i <=137;

When "110011010" =>
   degres_i <=137;

When "110011011" =>
   degres_i <=137;

When "110011100" =>
   degres_i <=138;

When "110011101" =>
   degres_i <=138;

When "110011110" =>
   degres_i <=138;

When "110011111" =>
   degres_i <=139;

When "110100000" =>
   degres_i <=139;

When "110100001" =>
   degres_i <=139;

When "110100010" =>
   degres_i <=140;

When "110100011" =>
   degres_i <=140;

When "110100100" =>
   degres_i <=140;

When "110100101" =>
   degres_i <=141;

When "110100110" =>
   degres_i <=141;

When "110100111" =>
   degres_i <=141;

When "110101000" =>
   degres_i <=142;

When "110101001" =>
   degres_i <=142;

When "110101010" =>
   degres_i <=142;

When "110101011" =>
   degres_i <=143;

When "110101100" =>
   degres_i <=143;

When "110101101" =>
   degres_i <=143;

When "110101110" =>
   degres_i <=144;

When "110101111" =>
   degres_i <=144;

When "110110000" =>
   degres_i <=144;

When "110110001" =>
   degres_i <=145;

When "110110010" =>
   degres_i <=145;

When "110110011" =>
   degres_i <=145;

When "110110100" =>
   degres_i <=146;

When "110110101" =>
   degres_i <=146;

When "110110110" =>
   degres_i <=146;

When "110110111" =>
   degres_i <=147;

When "110111000" =>
   degres_i <=147;

When "110111001" =>
   degres_i <=147;

When "110111010" =>
   degres_i <=148;

When "110111011" =>
   degres_i <=148;

When "110111100" =>
   degres_i <=148;

When "110111101" =>
   degres_i <=149;

When "110111110" =>
   degres_i <=149;

When "110111111" =>
   degres_i <=149;

When "111000000" =>
   degres_i <=150;

When "111000001" =>
   degres_i <=150;

When "111000010" =>
   degres_i <=150;

When "111000011" =>
   degres_i <=151;

When "111000100" =>
   degres_i <=151;

When "111000101" =>
   degres_i <=151;

When "111000110" =>
   degres_i <=152;

When "111000111" =>
   degres_i <=152;

When "111001000" =>
   degres_i <=152;

When "111001001" =>
   degres_i <=153;

When "111001010" =>
   degres_i <=153;

When "111001011" =>
   degres_i <=153;

When "111001100" =>
   degres_i <=154;

When "111001101" =>
   degres_i <=154;

When "111001110" =>
   degres_i <=154;

When "111001111" =>
   degres_i <=155;

When "111010000" =>
   degres_i <=155;

When "111010001" =>
   degres_i <=155;

When "111010010" =>
   degres_i <=156;

When "111010011" =>
   degres_i <=156;

When "111010100" =>
   degres_i <=156;

When "111010101" =>
   degres_i <=157;

When "111010110" =>
   degres_i <=157;

When "111010111" =>
   degres_i <=157;

When "111011000" =>
   degres_i <=158;

When "111011001" =>
   degres_i <=158;

When "111011010" =>
   degres_i <=158;

When "111011011" =>
   degres_i <=159;

When "111011100" =>
   degres_i <=159;

When "111011101" =>
   degres_i <=159;

When "111011110" =>
   degres_i <=160;

When "111011111" =>
   degres_i <=160;

When "111100000" =>
   degres_i <=160;

When "111100001" =>
   degres_i <=161;

When "111100010" =>
   degres_i <=161;

When "111100011" =>
   degres_i <=161;

When "111100100" =>
   degres_i <=162;

When "111100101" =>
   degres_i <=162;

When "111100110" =>
   degres_i <=162;

When "111100111" =>
   degres_i <=163;

When "111101000" =>
   degres_i <=163;

When "111101001" =>
   degres_i <=163;

When "111101010" =>
   degres_i <=164;

When "111101011" =>
   degres_i <=164;

When "111101100" =>
   degres_i <=164;

When "111101101" =>
   degres_i <=165;

When "111101110" =>
   degres_i <=165;

When "111101111" =>
   degres_i <=165;

When "111110000" =>
   degres_i <=166;

When "111110001" =>
   degres_i <=166;

When "111110010" =>
   degres_i <=166;

When "111110011" =>
   degres_i <=167;

When "111110100" =>
   degres_i <=167;

When "111110101" =>
   degres_i <=167;

When "111110110" =>
   degres_i <=168;

When "111110111" =>
   degres_i <=168;

When "111111000" =>
   degres_i <=168;

When "111111001" =>
   degres_i <=169;

When "111111010" =>
   degres_i <=169;

When "111111011" =>
   degres_i <=169;

When "111111100" =>
   degres_i <=170;

When "111111101" =>
   degres_i <=170;

When "111111110" =>
   degres_i <=170;

When "111111111" =>
   degres_i <=171;
when others =>
        degres_i <= 180; 
end case;
degres <= std_logic_vector(TO_UNSIGNED(degres_i,degres'length));
end process;

end Behavioral;
