#!/bin/sh

echo "\ncreation d un nouveau disque"
./mkhd
echo "\ndump d un secteur choisi"
./dmps -c0 -s0

echo "\ntest du formatage"
./frmt 255
./dmps -c0 -s0

echo "\ntest des volumes"
echo "\naffichage"
./dvol

echo "\ncreation de volumes"
echo "\nsur le MBR"
./mkvol --fs 0 --fc 0 --size 5
./dvol
echo "\nen dehors des limites"

./mkvol --fs 1000 --fc 1 --size 1000
./mkvol --fs 1 --fc 1000 --size 1000  
./mkvol --fs 1 --fc 1 --size 1000 
echo "\ncreation du premier volume"
./mkvol --fc 1 --fs 1 --size 5
echo "\ntest de collision pour le second volume"
./mkvol --fc 1 --fs 3 --size 5
./mkvol --fc 1 --fs 2 --size 10
echo "\ninsertion du volume en cylindre 0"
./mkvol --fc 0 --fs 1 --size 15
