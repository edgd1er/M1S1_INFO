( fibonacci asm)
slave
start
master
: read
	$ 1f
	WaitBtn
	Switch
;
: main
	begin
		read ( lecture du nb d appels )
		7segdup ( affichage )
		$ %11111
		btn
		$ 2 ( n boucles - les 2 premieres valeurs )
		-
		$ 0 ( init de f0 )
		$ 1 ( init de f1 )
		rot    ( nb d'iteration placé en tete de pile )
		for
			tuck ( recopie et insere le sommet sous le sous-sommet   a b  -- b a b  => fibo(n-1) )
			add (  calcul la nouvelle valeur de fibo  ) 
			7segdup
			$ &20000000
			delay
		next
		7seg
		$ %11111
		btn
;
start
	main
endprogram
