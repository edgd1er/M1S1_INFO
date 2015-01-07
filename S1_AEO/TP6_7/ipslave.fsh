( spmd monte carlo PI sur 2 esclaves )
:IP IP_Rdm
         IP
         IPcode
           8810      
         endIP
;
slave
( init )*

: init
	xnum ( recup le num du slave )
	$ 1
	=
	if
		IP_Rdm ( si = 1, alors on tire un aleatoire en plus )
		drop
	endif
;

: rdmslave
	IP_Rdm
	drop
	IP_Rdm ( tirage tout les deux RDM )
	$ FFF
	and
	swap
	$ 14
	rshift
	$ FFF
	and
	dup
	mul16
	swap
	dup
	mul16
	add
	$ FFE001
	Le
	if 
	inc
	endif	
	put
;
pc pimc

start

master 
: print 
	7segdup
	$ 1F 
	btn
;

: main
	$ 1
	led
	all
	$ 10000
	for 
		pimc //w
		S2M
		add
		comx
		S2M
		add
	next
	print
	$ 0
	led
;
start
	main
endprogram
