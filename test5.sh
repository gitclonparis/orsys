#!/bin/bash
# reassign-stdout.sh

FICHIERTRACES=fichiertraces.txt

exec 6>&1           # Lie le descripteur de fichier #6 avec stdout.
                    # Sauvegarde stdout.

exec > $FICHIERTRACES     # stdout remplacé par le fichier "fichiertraces.txt".

# ----------------------------------------------------------- #
#  Toute sortie des commandes de ce bloc sera envoyée dans le fichier
#+ $FICHIERTRACES.

echo -n "Fichier traces: "
date
echo "-------------------------------------"
echo

echo "Sortie de la commande \"ls -al\""
echo
ls -al
echo; echo
echo "Sortie de la commande \"df\""
echo
df

# ----------------------------------------------------------- #

exec 1>&6 6>&-      # Restaure stdout et ferme le descripteur de fichier #6.

echo
echo "== stdout restauré à sa valeur par défaut == "
echo
ls -al
echo

exit 0
