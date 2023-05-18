import os

# repertoire_courant = os.getcwd()
# print(repertoire_courant)

fichier = open("./nlp/test.fr", "r", encoding="utf-8")
contenu = fichier.read()

print(contenu)


