def convert_to_7_segment(number):
    # Définition des codes 7 segments pour les chiffres de 0 à 9
    segments = {
        0: "1000000",
        1: "1111001",
        2: "0100100",
        3: "0110000",
        4: "0011001",
        5: "0010010",
        6: "0000010",
        7: "1111000",
        8: "0000000",
        9: "0010000"
    }

    # Vérification que le nombre est dans la plage de 0 à 9
    if number < 0 or number > 9:
        raise ValueError("Le nombre doit être compris entre 0 et 9")

    # Conversion du nombre en code 7 segments
    return segments[number]


with open('switch_case.vhd', 'w') as f:
    f.write("case (nb_binaire) is\n")
    for i in range(180):
        binary_value = format(i, '010b')# Convertir le nombre en binaire sur 10 bits
        #unit = format(i%10, '04b')
        #diz = format((i//10)%10, '04b')
        #cent = format (i//100, '04b')
        unit = convert_to_7_segment(i%10)
        diz = convert_to_7_segment((i//10)%10)
        cent = convert_to_7_segment(i//100)
        f.write(f'when "{binary_value}" =>\n')
        f.write(f'    s_unit <= "{unit}";\n')
        f.write(f'    s_diaine <= "{diz}";\n')
        f.write(f'    s_cent <= "{cent}";\n')
        f.write('\n')
    f.write("end case;\n")
