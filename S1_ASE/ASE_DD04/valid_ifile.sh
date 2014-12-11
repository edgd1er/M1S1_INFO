#
#Validation des commandes if_*
#
# F.Dubiez 10/11/2014
#
# recuperation de la variable locale
# creation du filesystem sur le volume X (+superblock)
# lecture des 8 volumes et  affichage si defini
set -x
export CURRENT_VOLUME=0
echo "validation ecriture/lecture d'un fichier de 1682 caracteres : $CURRENT_VOLUME"
./mkhd
./frmt 0
./mkvol --fc 0 --fs 1 --size 250
./mknfs

FIL="250.txt"
echo "essai avec un petit fichier (bloc direct)"
cat $FIL | ./if_nfile 

echo "Prise en compte de l occupation disque"
./dfs

echo "lecture du fichier"
./if_pfile 249

echo "Suppression du fichier"
./if_dfile 249

echo "Prise en compte de l occupation disque"
./dfs

FIL="essai avec un fichier avec bloc direct indirect d_indirect 32kb.txt"
cat $FIL |./if_nfile 

echo "Prise en compte de l occupation disque"
./dfs

echo "lecture du fichier"
./if_pfile 249

echo "copie du fichier=> depassement de capacité"
./if_cfile 249

echo "Disque plein"
./dfs

echo "Suppression du fichier tronqué"
./if_dfile 117

echo "Disque plein"
./dfs

echo "Suppression du fichier"
./if_dfile 249

echo "Disque vide"
./dfs



