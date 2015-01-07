( test chenillard )
:IP rdm
IP
IPcode
8810
endIP
;
slave 
start
master
: getxy
	dup
	$ FFF
	and
	swap
	$ 14
	rshift
	$ FFF
	and
;
: main
$ 1
begin 
	$ 0
	$ 10000
	for 
		rdm  ( generer un nom aleatoire )
		getxy ( recupere PF et Pf sur 11 bits )
		dup  ( duplique la tete pile )
		mul16  ( mulitplie PFxPF )
		swap ( inverse la pile )
		dup ( duplique Pf )
		mul16 ( multiplie Pf*Pf )
		add ( PF*PF+Pf*Pf )
		$ FFEO01 ( test sup FFE001 )
		Le
		if 		( consomme la pile )
			inc	( increment du cpt )
		endif
	next
	7seg  ( c829 )
	$ %00001
	btn
again
;
start 
main

endprogram
