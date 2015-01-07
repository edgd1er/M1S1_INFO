( affiche 0 et NXslave - 1 sur l afficheur )
( 0 1  sur nexys 2)
( 0 7 sur hemu avec 8 x 8 )

:3IP zeroIP
	$ 0 put hlt
;
slave
PC wherediag
PC zero
' zeroIP zero static
PC	x+y
: diag_init
	xnum ynum <>
	if
		sleep
	endif
;
' diag_init wherediag  static
: x+ycode
	xnum ynum + put
;

' x+ycode x+y  static

start
master
: main
	all
	X+Y //w
	wherediag //w
	zero //w
	Hdebug_rcom
;	
: print2
	S2M
	7seg
	$ 1F btn
	>x 
	S2M
	7seg
	$ 1f btn
;

start
	main
	print2
endprogram
