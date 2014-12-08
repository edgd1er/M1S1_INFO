#!/bin/bash
clear
echo -e "\n\n***creation d un nouveau disque**************"
./mkhd

echo -e "\n\n***dump d un secteur choisi**************"
./dmps -c0 -s0
read -p "Press any key to continue... " -n1 -s

echo -e "\n\n***test du formatage**************"
./frmt 255
./dmps -c0 -s0
read -p "Press any key to continue... " -n1 -s

echo -e "\n\n***test des volumes**************"
echo -e "\n\n***affichage**************"
./dvol
read -p "Press any key to continue... " -n1 -s

echo -e "\n\n***creation de volumes**********"
echo -e "\n\n***sur le MBR"
./mkvol --fs 0 --fc 0 --size 5
./dvol
read -p "Press any key to continue... " -n1 -s

echo -e "\n\n***en dehors des limites***********"
./mkvol --fs 1000 --fc 1 --size 1000
./mkvol --fs 1 --fc 1000 --size 1000  
./mkvol --fs 1 --fc 1 --size 1000 
read -p "Press any key to continue... " -n1 -s
echo -e "\n\n***creation du premier volume*************"
./mkvol --fc 1 --fs 1 --size 5
./dvol
read -p "Press any key to continue... " -n1 -s
echo -e "\n\n***test de collision pour le second volume************"
./mkvol --fc 1 --fs 3 --size 5
./mkvol --fc 1 --fs 2 --size 10
./dvol
read -p "Press any key to continue... " -n1 -s
echo -e "\n\n***insertion du volume en cylindre 0***************"
./mkvol --fc 0 --fs 1 --size 15

echo -e "\n\n***volume Manager***************"
./vm
