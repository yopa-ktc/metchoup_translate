import csv
import io
import json
import mysql.connector

# Ouvrir les fichiers source en mode lecture
test_fr = open("dev.fr", "r", encoding="utf-8")
test_gho = open("dev.bbj", "r", encoding="utf-8")

# Lire le contenu des fichiers source
contenu_fr = test_fr.readlines()
contenu_gho = test_gho.readlines()


# Fermer les fichiers sources
test_fr.close()
test_gho.close()

#Stockage dans une base de données SQL

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="gho_fr"
)
cursor = mydb.cursor()


#Stockage du ghomala
for textgho, textfr in zip(contenu_gho, contenu_fr):
    sql = "INSERT INTO dev (gho, fr) VALUES (%s, %s)"
    val = (textgho.strip(), textfr.strip())
    cursor.execute(sql, val)
    
cursor.close()
mydb.commit()
mydb.close()
#Fermeture de la connexion SQL
print(cursor.rowcount, "enregistrement inséré.")
