#!/bin/bash
#
# Projet PJE : generation d'application Android
# 
#
# But: copier les fichier MTL au bon endroit pour le projet Acceleo

#set -x
#GDIR = github directory
GDIR=.
#ADIR =  Acceleo directory
ADIR=~/runtime-EclipseApplication/pjeacceleo
DDIR=${ADIR}/src/pjeacceleo

ACCELEO=${DDIR}
# répertoire où les fichiers seront générés par acceleo (à configurer dans le projet acceleo)
GENERATED=GENERATED
GENERATED=${ADIR}/src-gen
GENERATED_P=${GENERATED}/palindrome
GENERATED_L=${GENERATED}/liste
GENERATED_M=${GENERATED}/memory
GENERATED_H=${GENERATED}/hello

# répertoire où sont placés les projets android accueillant les fichiers générés
ANDROID=/home/alexandre/MASTER/M1S1-PJE/ANDROID-GENERATED
ANDROID=~/workspace_androidapp
# nom des projets (emplacements dans le workspace android)
ANDROID_P=${ANDROID}/Palindrome
ANDROID_L=${ANDROID}/Liste
ANDROID_M=${ANDROID}/Memory
ANDROID_H=${ANDROID}/Hello

TOGEN=${1}

function usage {
 echo -e "\n\nun argument est attendu: mtl palindrome liste memory\n" 
}

function genDir {
#creation des rep si non présent
echo création des répertoires
echo ${ANDROID}
echo ${ACCELEO}/main
echo ${ACCELEO}/common

mkdir -p ${ANDROID}
mkdir -p ${ACCELEO}/main
mkdir -p ${ACCELEO}/common

for projet in palindrome liste memory hello
do 
	mkdir -p ${GENERATED}/${projet}
done

}

# copie des fichiers pproduits par acceleo dans les projets 
function genpal {
 	cp -R ${GENERATED_P}/* ${ANDROID_P}
}

function genmem {
 	cp -R ${GENERATED_M}/* ${ANDROID_M}
	#cp -R ${GDIR}/UI/MEMORY/*.java ${ANDROID_M}/src/pje/memory/
	cp -R ${GDIR}/UI/MEMORY/*.jpg ${ANDROID_M}/res/drawable-hdpi/
}

function genliste {
 	cp -R ${GENERATED_L}/* ${ANDROID_L}
	cp -R ${GDIR}/UI/LISTE/* ${ANDROID_L}/src/pje/listelivres/
	rm ${ANDROID_L}/src/pje/listelivres/MainActivity.java
}

function genhello {
 	cp -R ${GENERATED_H}/* ${ANDROID_H}
}

function genmtl {

echo -e "\n\n!!!!///ATTENTION aux imports dans les fichiers MTL: remplacer pjeacceleo par le nom du projet acceleo si différent \\\\!!!!"
echo -e "[import pjeacceleo::common::generateLayouts/]\n\n"

#	ln -sf ../../../../MTL/generateActivities.mtl ${ACCELEO}/common/generateActivities.mtl
#	ln -sf ../../../../MTL/generateLayouts.mtl ${ACCELEO}/common/generateLayouts.mtl
#	ln -sf ../../../../MTL/generateManifest.mtl ${ACCELEO}/common/generateManifest.mtl
#	ln -sf ../../../../MTL/generateScripts.mtl ${ACCELEO}/common/generateScripts.mtl
#	ln -sf ../../../../MTL/generateValues.mtl ${ACCELEO}/common/generateValues.mtl

for fichierMTL in generateActivities.mtl generateLayouts.mtl generateManifest.mtl generateScripts.mtl generateValues.mtl
 do
 echo  -e "$fichierMTL\n"
#	ln -sf ${GDIR}/MTL/$fichierMTL ${ACCELEO}/common/$fichierMTL
	cp ${GDIR}/MTL/$fichierMTL ${ACCELEO}/common
 done
#	ln -sf ${GDIR}/MTL/generateALL.mtl ${ACCELEO}/main/generateALL.mtl
 	cp ${GDIR}/MTL/generateALL.mtl ${ACCELEO}/main/generateALL.mtl

#	ln -sf ../${GENERATED} ${ACCELEO}/GENERATED
#echo cp ${GDIR}/*.mtl ${DDIR}
}


#####################
# Main              #
#####################
genDir

case $TOGEN in
mtl)
	echo -e "\ngénération des MTL" >&2
	genmtl
	;;
pal*)
	echo -e "\ngénération du palindrome" >&2
	genpal
      	;;
lis*)
	echo -e "\ngénération de la liste " >&2
	genliste
	;;
mem*)
	echo -e "\ngénération du memory " >&2
	genmem
	      ;;
hello)
	echo -e "\ngénération du helloWorld " >&2
	genhello
	      ;;
\?) 
	echo -e "Invalid option: -$OPTARG" >&2
      ;;
	*)
	usage
  esac

