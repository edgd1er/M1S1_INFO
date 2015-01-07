:3IP fibohard
	fibo return null
;
slave
start
master
vc fibo_dynamic
: read
	$ 1f
	WaitBtn
	Switch
;
: fibosoft
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
		nip ( retrait de fibo n-1 )
;
: main
begin
	switch ( lecture puis empilement du nb de boucles )
	$ %11111 ( selection mode hard / soft / precedent )
	btnpush (  empilement du btn selectionne )
	leddup ( affichage de led eq btn ) 
	$ %00001 ( test du btn1 )
	Eqpdup ( test avec duplication du predicat )
	if
		['] fibosoft fibo_dynamic dynamic
	else
		$ %00100 ( test du btn4 )
		Eqpdup ( test avec duplication du predicat )
		if
			['] fibohard fibo_dynamic dynamic
		endif
	endif
	pop1 ( suppression du predicat )
	fibo_dynamic /x ( lancement de l execution du vc )
	7seg ( aff du resultat )
	$ 1f 
	btn
	$ 0 
	led ( off led )
	7segdup ( verif de la stack vide )
	again
;






start
main
endprogram
