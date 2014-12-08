#!/bin/bash
#
#Validation des commandes mknfs et dfs
#
# F.Dubiez 10/11/2014
#
# recuperation de la variable locale
# creation du filesystem sur le volume X (+superblock)
# lecture des 8 volumes et  affichage si defini
clear 
export CURRENT_VOLUME=0
echo -e "\n***************creation du fs sur le volume : $CURRENT_VOLUME ***************"
./mknfs
echo -e "\n***************affichage des nfs***************"
./dfs
read -p "Press any key to continue... " -n1 -s

echo
export CURRENT_VOLUME=1
echo -e "\n***************Creation du fs sur le volume : $CURRENT_VOLUME ***************"
./mknfs
echo -e "\n***************Affichage des nfs***************"
./dfs
read -p "Press any key to continue... " -n1 -s

echo
export CURRENT_VOLUME=7
echo -e "\n***************Creation du fs sur le volume : $CURRENT_VOLUME ( erreur car mkvol non realise precedemment)***************"
./mknfs
echo -e "\n***************Affichage des nfs***************"
./dfs
read -p "Press any key to continue... " -n1 -s
