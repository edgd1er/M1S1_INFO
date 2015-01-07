#!/bin/bash

#CPH=./bin:./lib/jopt-simple-4.8.jar
CPH=~/Documents/ACT_TP10/bin:~/Documents/ACT_TP10/lib/jopt-simple-4.8.jar

HEU=-n

heurBinPack () {
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -n
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -n -t
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -f
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -f -t
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -b
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestBinPack -d $DTA -b -t
	read -p "Press [Enter] key to start backup..."
}

heurSum () {
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -n
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -n -t
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -f
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -f -t
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -b
	read -p "Press [Enter] key to start backup..."
	java -classpath $CPH com.heuristique.tests.TestSum -d $DTA -b -t
	read -p "Press [Enter] key to start backup..."
}


echo "***********************************************\n"
echo "********** Heuristique BinPack **********\n"
echo "***********************************************\n"


DTA=data/N1C1W1_A.BPP
echo "***********************************************\n"
echo "********** Données $DTA 25 **********\n"
echo "***********************************************\n"

heurBinPack

DTA=data/N4C3W4_T.BPP
echo "***********************************************\n"
echo "********** Données $DTA 216 **********\n"
echo "***********************************************\n"

heurBinPack


echo "***********************************************\n"
echo "********** Heuristique SUM **********\n"
echo "***********************************************\n"


DTA=data/N1C1W1_A.BPP
echo "***********************************************\n"
echo "********** Données $DTA 25 **********\n"
echo "***********************************************\n"

heurSum

DTA=data/N4C3W4_T.BPP
echo "***********************************************\n"
echo "********** Données $DTA 216 **********\n"
echo "***********************************************\n"

heurSum



