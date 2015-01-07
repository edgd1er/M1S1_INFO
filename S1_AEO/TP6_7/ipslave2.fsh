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
$ 0
$ 8000
for 
	IP_Rdm
	drop
	IP_Rdm ( tirage tout les deux RDM )
	dup
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
next
	put
;
pc pimc
' rdmslave pimc STATIC

start
init

master 
: print 
	7segdup
	$ 1F 
	btn
;

: main
	$ 1
	led
	pimc //w
	S2M
	comx
	S2M
	add
	print
	$ 0
	led
;
start
	main
endprogram
