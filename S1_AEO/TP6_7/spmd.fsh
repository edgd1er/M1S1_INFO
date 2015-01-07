( test spmd)
:3IP  get3
get  hlt nop
;
:3IP put3
xnum add put
;
slave 
PC pf
PC S2
' get3 pf static 
' put3 s2 static
start

master 
: print 
	7seg 
	$ 1F 
	btn
;


: main	
	$ 10 
	M2S
	b>x
	b>y
	pf //w
	s2 //w
	Hdebug_rcom
	S2M
	>x
	print 
	S2M
	print 
;
start
	main
endprogram
