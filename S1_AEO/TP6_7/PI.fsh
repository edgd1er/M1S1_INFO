( test add16)

 :IP IP_Rdm
         IP
            
         IPcode
           8810      
         endIP
;
slave 
start
master 
: print
	7seg
	$ 1f
	btn
;
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
	begin
		$ 0
		$ 10000
		TicRaz
		for
			IP_Rdm
			getxy
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
		Tic
		pop1
		print ( affichage du nb de cycles )
	again
;
start
	main
endprogram
