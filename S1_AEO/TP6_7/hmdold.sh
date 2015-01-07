#!/bin/bash


if test $# -eq 2
then
     
fullname=$(basename $2)
filename=${fullname%.*}
filename="$filename.hmd"
gforth $1 $2 -e bye

cat homade.hmd homade.shmd > $filename
rm -f homade.hmd
rm -f homade.shmd
rm -f homade.www

java -jar /opt/jHomade/jhomade-2.1.jar  -p /dev/ttyUSB0 $filename

else
	echo "Il faut deux arguments ...."
	echo "arg1 = hasmV5"
	echo "arg2 = pgm assembleur test_led.fsh"
fi
