

def ecrire_et_numeroter(nom_fichier, nb_lignes, chaine_avant_decimal, chaine_avant_binaire):
    with open(nom_fichier, 'w') as fichier:
        largeur = 0
        for i in range(1, nb_lignes + 1):
            largeur = (i * 1056) + 50000
            binaire = format(i, 'b').zfill(9)  # Ajout de zéros en tête pour avoir 9 bits
            str_to_send = str(chaine_avant_binaire) + str("\x22") + str(binaire) + str("\x22 =>") + str("\n") + str("   ")  + str(chaine_avant_decimal) + str(largeur) + str(";")    + str("\n") + str("\n") 
            fichier.write(f"{str_to_send}")


ecrire_et_numeroter("test.txt",180,'largeur_i <=',"When ")

