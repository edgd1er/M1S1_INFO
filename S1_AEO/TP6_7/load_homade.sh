#!/bin/sh

if test $# -gt 0
then 
	hompgm=$1
else 
	hompgm=~/Documents/AEO_TP/TP6/Nexys3v5_rdm_fibo_slave.bit
	#hompgm=~/Documents/AEO_TP/TP3_Homade/Nexys3v5.bit
fi

echo "\nchargement du softproc homade $hompgm"
#/usr/local/bin/djtgcfg -d Nexys3 prog -i 0 -f ../TP3_
djtgcfg -d Nexys3 prog -i 0 -f $hompgm
