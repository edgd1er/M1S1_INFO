#!/bin/bash

fullname=$(basename $1)
filename=${fullname%.*}
filenamehmd="$filename.hmd"

jhomade="/opt/jHomade/jhomade-2.1.jar"

clear
echo -e "\nCompilation de ${filename}.fsh\n\n"
./hmd.sh hasmV5.fs  "${filename}.fsh"
echo -e "\n\nchargement du pgm via le port UART.\n\n"
java -jar $jhomade  -p /dev/ttyUSB0 $filenamehmd
