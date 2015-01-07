#!/bin/bash


if test $# -eq 2
then
fullname=$(basename $2)
filename=${fullname%.*}
filename="$filename.hmd"
hasm=$1

else
     echo "Il faut deux arguments ...."
	fullname=$(basename $1)
	filename=${fullname%.*}
	filename="$filename.hmd"
	hasm="hasmV5.fs"


fi

gforth $1 $2 -e bye

cat homade.hmd homade.shmd > $filename
rm -f homade.hmd
rm -f homade.shmd
rm -f homade.www

