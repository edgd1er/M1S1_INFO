

variable HMD_mybin
s" homade.shmd" R/W create-file throw value mybin
s" homade.hmd" R/W create-file throw value mybin2
s" homade.www" R/W create-file throw value mybin3
	mybin3 HMD_mybin !
	

hex
variable HMD_debut 
variable HMD_buffer

variable HMD_filenb

variable HMD_assoc
variable HMD_nextc


variable HMD_lastcall
variable HMD_register
variable HMD_wim
variable HMD_wim1
variable HMD_wim2
variable HMD_wim3

variable HMD_lastcallcreate
variable HMD_readif
variable HMD_IP
variable HMD_myIP

4 HMD_nextc !

: Hdebug_actif ;
: Hdebug_rcom ;
: Hdebug_stack ;


( rename mots Fouth utilisés par homade )

: Fdup dup ;

: Fswap swap
;
: Fdrop drop 
;	  
: Ftuck tuck 
;
: Fover over 
;	 
: Frot rot 
; 
: Fnip nip
;
: Fand and
;
: Fou or 
;
: Fxor xor
;

0 HMD_filenb !

: incfile ( a - )
	HMD_filenb @  + HMD_filenb !
;

hex
: popwrite ( ak .. a0 k -- )
	fdup HMD_register !
	fdup here fswap - fswap HMD_mybin @ write-file fdrop
	HMD_register @ incfile
;

: Binary 
	fdup   ff00 fand 8 rshift c, 00ff fand c,
	2 popwrite
;

: Null ffff binary 
;

: NBnull 
	HMD_filenb @  2/ 3 fand   fdup fdup 
	1 = if NULL NULL NULL endif 
	2 = if Null NULL endif 
	3 = if Null endif 
; 
   
( slave )
: get 8A00 binary ;
: put A201 binary ;

: xnum 8A02 binary ;
: ynum 8A03 binary ;

: sleep 8204 binary ;

( master )
: M2S A013 binary ;
: S2M 8812 binary ;

: onx A1F0 binary ;
: ony A1F1 binary ;
: onxy C1F2 binary ;
: all 81F3 binary ;

: bcomx 81FC binary ;
: b>x bcomx ;
: bcomy 81FD binary ;
: b>y bcomy ;
: comx 81FE binary ;
: >x comx ;
: comy 81FF binary ;
: >y comy ! ;
: <x null ;
: <y null ;


:  pop1    A000 binary ;
:  pop2    C000 binary ;
:  pop3    E000 binary ;

:  Tic	    8801 binary ;
:  TicRaz    8001 binary ;

:  BufOut	    A002 binary ;
: 7seg BufOut ;
:  BufOutDup	    8002 binary ;
: 7segdup BufOutDup ;
:  Led		A003 binary ;
:  LedDup	    8003 binary ;
:  Switch	    8804 binary ;


: Nop      8000 binary ;
: Hlt      1C00 binary ;
: DataPop  8806 binary ;
: datapopZ 8006 binary ;
: DataPush A007 binary ;
: DataPushDup 8007 binary ;	  
: >r DataPush ;
: r> DataPop ;
: >rdup DataPushDup ;
\ : RegLd  A811 binary ;
\ : RegSt C010 binary ;
\ : RegStDup A010 binary ;	 
: Delay  A401 binary ;
: WaitBtn A402 binary ;
: btn Waitbtn ;
: WaitBtnpush AC02 binary ;
: btnpush WaitBtnPush ;

: fibo AC03 binary ;
: dup B008 binary ;
: swap d009 binary ;
: drop pop1 ;	  
: tuck d80A binary ;
: over d80b binary ;	 
: rot f80C binary ; 
: invrot f80d binary ; 
: nip c80e binary ;
: clearstack 800F binary ;

: nip3 F005 binary ;
: nip23 E805 binary ;
: dup2 9005 binary ;
: dup3 9805 binary ;

:  push1    2000 binary ;
:  push2    2000 binary dup ;
:  push3    2000 binary dup2 ;

: add     C820 binary  ;
: minus C821 binary ;
: inc A822 binary  ;
: dec A823 binary ;
\ : Hnot A824 binary ;
: invert A824 binary ;
: and     C825 binary ;
: or     C826 binary ;
: xor     C827 binary ;
: 2*     A828 binary ;
: Hu2/     A829 binary ;
: H2/     A82A binary ;
: ->     C82B binary ;
: <-     C82C binary ;
: Shiftlit C82D binary ;
: <-$ ShiftLit ;
: Comp2		A82F binary ;
: Vrai     8830 binary ;
: true vrai ;
: Faux     8831 binary ;
: false faux ;
: Ez     A832 binary ;
: Neg     A833 binary ;
\ : GtU     C834 binary ;
\ : LtU     C835 binary ;
: Eq     C836 binary ;
: Eqpdup     A836 binary ;
\ : GeU     C837 binary ;
\ : LeU     C838 binary ;
: Ne     C839 binary ;
: Gt     C83A binary ;
: Lt     C83B binary ;
: Le     C83C binary ;
: Ge     C83D binary ;
: mul16 C814 binary ;

: muladd mul16 add ;

: return   1400 binary  ; 

: wait 6000 binary ;

: $12 ( a) 
	FFF fand 2000 Fou fdup 8 rshift c, c, 
	here 2 - 2 HMD_mybin @ write-file  fdrop
	2 incfile
;

( extension litteral )
: $L 
	fdup fff fand $12 
	fdup FFF000 fand c rshift $12 
	FF000000 fand  18 rshift $12 
	shiftlit 
	shiftlit 
;
: $24 
	fdup fff fand $12  
	FFF000 fand c rshift $12  
	shiftlit 
;

: $post 
 fdup fdup fdup 
		0xfffff000 fand 0 =  if fdrop fdrop $12 else 
			0xFF000000 fand 0 = if fdrop $24  else
				$L 
			endif 
		endif
; 

\ : $ 
	\ 0.  BL hex word  count >number 
	\ 2drop fdrop   
	\ $post 
\ ;

: $ 
	0.  BL  word  count  
	fswap fdup   c@  
		fdup [char] % = if 
			hex
			fdrop
			1 + fswap  1 -  
			2 base ! >number
			2drop fdrop $post  hex
		else
			[char] & = if		
				decimal
				1 + fswap  1 -  
				fswap fdup   c@  
				[char] - <> if 
					fswap >number 
					2drop fdrop 
					$post 
				else
					1 + fswap  1 - >number
					2drop fdrop $post comp2 
				endif
			else	
				hex fswap >number 
				2drop fdrop 
				$post 		
			endif
		endif
	hex
;

	
: BZ ( a) 
	3FF fand 0400 Fou fdup 8 rshift c, c, 
	2 popwrite
;

: BNZ ( a) 
	3FF fand 0800 Fou fdup 8 rshift c, c, 
	2 popwrite
;

: BR ( a) 
	3FF fand  0000 Fou fdup 8 rshift  c, c, 
	2 popwrite
;

: BRA ( a b )  
	NBnull
	00 0c c, c, fdup 10 rshift fdup 8 rshift c, c, fdup 8 rshift c, c,  
	here 6 - 6 HMD_mybin @ write-file fdrop
	6 incfile
;

: call ( a b )  
	HMD_filenb @ 2/ 2 fand 0 
	<> IF 
		NBnull
	endif
	fdup HMD_lastcall !
	00 10 c, c, fdup 10 rshift fdup 8 rshift c, c, fdup 8 rshift c, c,  
	here 6 - 6 HMD_mybin @ write-file fdrop
	6 incfile
;

: program 
	mybin HMD_mybin !
	hlt nbnull  ffff binary nbnull
	HMD_mybin @ close-file fdrop
\ slave finish empty!!!!!!
	4 HMD_nextc !
	0 HMD_filenb !
	mybin2 HMD_mybin !
	hex
	clearstacks hex here HMD_debut !  3 BRA NBnull
;

: slave 
\ clean IP declarations
." ***** SLAVE *****" cr
	0 HMD_filenb !
	mybin HMD_mybin !
	0  0 HMD_mybin @  reposition-file fdrop fdrop
	4 HMD_nextc !
\ call at reset 	
	clearstacks hex here HMD_debut ! 1000 binary 0000 binary 0004 binary hlt
	NBnull
;

: master 
cr ." ***** MASTER *****" cr
	return
	nbnull  ffff binary nbnull
	0 0 HMD_mybin @ reposition-file fdrop
	HMD_lastcallcreate @ 2/ call 
	HMD_mybin @ close-file fdrop
\ slave finish!!!!!!
	4 HMD_nextc !
	0 HMD_filenb !
	mybin2 HMD_mybin !
	clearstacks hex here HMD_debut !  3 call NBnull
;

: start 
	HMD_filenb @ HMD_lastcallcreate !
;

: endprogram
	hlt
	nbnull  ffff binary nbnull
	0 0 HMD_mybin @ reposition-file fdrop
	HMD_lastcallcreate @ 2/ BRA NBnull
	

	HMD_mybin @ close-file fdrop
	mybin3 close-file fdrop
	
\ V5
\ append shmd to hmd file
s" homade.shmd" r/o open-file  mybin
s" homade.hmd"  r/w open-file  mybin2
mybin file-size  fdrop fdrop  
mybin2 file-size  fdrop fdrop 
 	0 mybin2  reposition-file fdrop
	0 0 mybin  reposition-file fdrop
	1 - for
		HMD_buffer 1 mybin read-file fdrop fdrop
		HMD_buffer  1 mybin2  write-file fdrop
    next
	mybin  close-file fdrop
	mybin2  close-file fdrop
  
\  5V

." ***** END *****" cr
;

( structure )

: begin 
	NBnull HMD_filenb @ 2/ ( debut de boucle sur la pile) 
;

: until 
	pop1 HMD_filenb @  2/ - BNZ ( fin de boucle  test du sommet de pile  avec conso )
;

: until_l 
	pop1 BRA ( fin de boucle  test du sommet de pile  avec conso )
;

: again_l  
	BRA  ( fin de boucle infinie longue )
;

: again 
	HMD_filenb @  2/   -    BR ( fin de boucle infinie short )
;

: if 
	\ pop1 HMD_filenb @ 2/  ff 4 c, c,   ( debut du if  conso du sommet de pile pour test) 
	\ 2 popwrite
	pop1 HMD_filenb @ 2/ 400 BZ 
;
\ : ifdup
	\ nop HMD_filenb @ 2/  ff 4 c, c,   ( debut du if  conso du sommet de pile pour test) 
	\ 2 popwrite
\ ;

: endif  
	NBnull 
	fdup HMD_filenb @ 2/  fswap - fswap   2 * fdup HMD_register !
	0 HMD_mybin @  reposition-file fdrop 
	HMD_readif    2 HMD_mybin @ read-file fdrop fdrop
	HMD_register @ 0 HMD_mybin @ reposition-file fdrop
	3FF fand  fdup ff fand 8 lshift fswap ff00 fand 8 rshift Fou hmd_readif @   Fou  HMD_register !
	HMD_register 2 HMD_mybin @ write-file fdrop
	HMD_filenb @ 0 HMD_mybin @ reposition-file fdrop
;

: else  

	HMD_filenb @ 2/ 0000 binary	fswap  
	NBnull 
	fdup HMD_filenb @ 2/  fswap - fswap   2 * fdup HMD_register ! 
	0 HMD_mybin @ reposition-file fdrop 
	HMD_readif    2 HMD_mybin @ read-file fdrop fdrop
	HMD_register @ 0 HMD_mybin @ reposition-file fdrop
	3FF fand  fdup ff fand 8 lshift fswap ff00 fand 8 rshift Fou hmd_readif @   Fou  HMD_register !
	HMD_register 2 HMD_mybin @ write-file fdrop 
	HMD_filenb @ 0 HMD_mybin @ reposition-file fdrop
;
( <end_val>  index Do ... LOOP ....  [end_val - 1.. index] )

: DO  
	swap  DataPush   Datapush HMD_filenb @  2/ 
;

: for
2000 binary Datapush Datapush HMD_filenb @  2/ 

;

: next 
	Datapop dec datapushdup neg pop1 HMD_filenb @  2/ - BZ datapopz datapopz 
;



: loop 
	DataPop inc datapop  datapushdup swap datapushdup GT pop1 HMD_filenb @  2/ - BNZ  datapopz datapopz 
; 

: +loop 
	DataPop add datapop  datapushdup swap datapushdup GT pop1 HMD_filenb @  2/ - BNZ  datapopz datapopz 
;
 
: I 
	DataPop DataPushDup ( index of the inner loop )
;

: J 
	DataPop DataPop DataPop DataPushDup 
	invrot DataPush  DataPush ( index of the second loop )
;

: K 
	DataPop DataPop DataPop DataPop DataPop DataPushDup 
	invrot DataPush  DataPush invrot DataPush  DataPush ( index of the Third loop )
( For next  a faire )
;

: ::  
	create   HMD_filenb @   2/  fdup HMD_lastcallcreate ! ,   
	DOES>  @    call 
;

: :IP  
	create      here fdup  HMD_myIP ! 0000 ,  
	DOES> 
		  @  binary 

;

: IP
	HMD_filenb @ HMD_IP !
;

: IPcode
	HMD_IP @ 0 HMD_mybin @ reposition-file fdrop
	HMD_IP @ HMD_filenb !
;

: endIP
	  HMD_myIP @ ! 
;

: :3IP 
	create   HMD_filenb @ ,
	DOES> @   

		 0 mybin3 reposition-file fdrop
		HMD_register 2 mybin3 read-file fdrop fdrop
		HMD_register 2 HMD_mybin @ write-file fdrop
		
		HMD_register 2 mybin3 read-file fdrop fdrop
		HMD_register 2 HMD_mybin @ write-file fdrop
		
		HMD_register 2 mybin3 read-file fdrop fdrop
		HMD_register 2 HMD_mybin @ write-file fdrop		
		HMD_filenb @ 6 + HMD_filenb !
;
	 
: VC  
	create HMD_filenb @  2/   ,  NBnull 0 call    return 
	DOES> @
;

: vcexe  
	call 
;
: /x vcexe ;


: PC  
	create HMD_filenb @  2/   ,  NBnull 0 call    hlt 
	DOES> @
;

: Pcexe  
	2 rshift 1FFF fand 4000 fou fdup ff00 fand 8 rshift fswap ff fand 8 lshift fou HMD_register !
	HMD_register 2 HMD_mybin @ write-file fdrop 
	2 incfile
;

: //x pcexe ;
: //w //x wait ;

: dynamic  
\ ecriture de WIM 30XX en retrait de 8 , initailisé par ['] à FFFF
	HMD_filenb @ 8 -   0 HMD_mybin @ reposition-file fdrop
	2 rshift fff fand 3000 Fou 	fdup   ff00 fand 8 rshift fswap ff fand 8 lshift fou HMD_register !
	HMD_register 2 HMD_mybin @ write-file fdrop
\ retour en fin de fichier
	HMD_filenb @     0 HMD_mybin @ reposition-file fdrop
;

: static
\ adresse VC ou PC
	2 *   HMD_wim !
\ lecture trois derniers mots
	HMD_filenb @ 6 - 0 HMD_mybin @ reposition-file    fdrop
	HMD_wim1 2 HMD_mybin @ read-file fdrop fdrop
	HMD_wim2 2 HMD_mybin @ read-file fdrop fdrop
	HMD_wim3 2 HMD_mybin @ read-file fdrop fdrop
\ placement sur VC ou PC pour recopie
	HMD_wim @ 0 HMD_mybin @ reposition-file    fdrop
	HMD_wim1 2 HMD_mybin @ write-file fdrop	
	HMD_wim2 2 HMD_mybin @ write-file fdrop	
	HMD_wim3 2 HMD_mybin @ write-file fdrop	
\ nettoyage des 3 dernier mots	
	HMD_filenb @ 6 -  fdup HMD_filenb ! 0 HMD_mybin @ reposition-file fdrop
;

: ' 
;

: ['] 
nbnull null
;
: + add ;
: = eq ;
: - minus ;
: * mul16 ;
: < lt ;
: > gt ;
: 0= ez ;
: 0< neg ;
: <= LE ;
: >= GE ;
: <> NE ;
: 1+ inc ;
: 1- dec ;
: 2/ H2/ ;
: -rot invrot ;
: negate comp2 ;
: rshift -> ;
: lshift <- ;
: :forth : ; 
: : :: ;


:forth  ;  
	return  
	nbnull 

;




