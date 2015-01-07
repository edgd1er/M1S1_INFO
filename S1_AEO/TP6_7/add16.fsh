( test led CHENILLARD)

slave 
start
master 
: fct
	 $ %11111
	btn
	Switch
	$ 8
	<-
	$ %11111
	btn
	Switch
	or
	7segdup
	$ %11111
	btn
;
: main
$ 1 7seg
begin 
	fct
	fct
	ticraz
	+
	tic
	7seg
	$ %11111
	btn
	7seg
again
;

start 
main

endprogram
