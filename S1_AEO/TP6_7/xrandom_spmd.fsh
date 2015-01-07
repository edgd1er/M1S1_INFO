( spmd monte carlo PI sur 2 esclaves )
:IP IP_Rdm
         IP
         IPcode
           8810      
         endIP
;
slave

( init )*

: generate

	IP_Rdm
	drop
	IP_Rdm

	dup
	$ FFF
	and

	dup
	mul16

	swap

	$ C
	->

	$ FFF
	and

	dup
	mul16

	add

	$ FFE001
	<=

	if
		$ 1
	else
		$ 0
	endif

	put
;

PC PC1

' generate PC1 STATIC

start
: init
	xnum
	$ 1
	=
	if
		IP_Rdm
		drop
	endif
;

master

: main
begin
	$ 0
	$ 8001
	ticraz

	for
		PC1 //x
		wait
		S2M
		comx
		add
		S2M
		add
	next
	
	tic
	7segdup
	$ 1F
	btn
	$ 10
	->
	7seg
	$ 1F
	btn

	$ 2
	->
	7seg
	$ 1F
	btn
;
start 
main

endprogram
