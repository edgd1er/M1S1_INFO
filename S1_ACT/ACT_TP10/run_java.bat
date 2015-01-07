@echo off

set CPH=./bin;./lib/jopt-simple-4.8.jar
set DTA=data\N4C3W4_T.BPP
set HEU=-n

java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -n
java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -n -t
java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -f
java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -f -t
java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -b
java -classpath %CPH% com.heuristique.tests.TestBinPack -d %DTA% -b -t
