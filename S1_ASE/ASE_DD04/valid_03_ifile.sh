#!/bin/bash
clear
#
#Validation des commandes if_*
#
# F.Dubiez 10/11/2014
#
# recuperation de la variable locale
# creation du filesystem sur le volume X (+superblock)
# lecture des 8 volumes et  affichage si defini

export CURRENT_VOLUME=0
echo -e "\n********validation ecriture/lecture d'un fichier de 1682 caracteres : $CURRENT_VOLUME *********"
./mkhd
./frmt 0
./mkvol --fc 0 --fs 1 --size 250
./mknfs

FIL="250.txt"
echo -e "\n********essai avec un petit fichier (bloc direct) *********"
cat $FIL | ./if_nfile 

echo -e "\n********Prise en compte de l occupation disque *********"
./dfs
read -p "Press any key to continue... " -n1 -s

echo -e "\n********lecture du fichier *********"
./if_pfile 249
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Suppression du fichier *********"
./if_dfile 249

echo -e "\n********Prise en compte de l occupation disque *********"
./dfs
read -p "Press any key to continue... " -n1 -s

echo -e "\nessai avec un fichier avec bloc direct indirect d_indirect "
FIL="32kb.txt"
cat $FIL |./if_nfile 
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Prise en compte de l occupation disque *********"
./dfs
read -p "Press any key to continue... " -n1 -s

echo -e "\n********lecture du fichier *********"
./if_pfile 249
read -p "Press any key to continue... " -n1 -s

echo -e "\n********copie du fichier=> depassement de capacité *********"
./if_cfile 249
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Disque plein *********"
./dfs
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Suppression du fichier tronqué *********"
./if_dfile 117
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Disque plein *********"
./dfs
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Suppression du fichier *********"
./if_dfile 249
read -p "Press any key to continue... " -n1 -s

echo -e "\n********Disque vide *********"
./dfs
read -p "Press any key to continue... " -n1 -s


