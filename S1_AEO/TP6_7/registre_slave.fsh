slave
pc init
pc send
: initcode
	xnum Ynum +  
	>1
;
' initcode init static
: sendcode
	1> put
;
' sendcode send static
start
master

: print
	7seg
	$ 1F
	btnpush 
;
: main
init //w
Hdebug_register
send //w
Hdebug_rcom
;



start
main
endprogram
