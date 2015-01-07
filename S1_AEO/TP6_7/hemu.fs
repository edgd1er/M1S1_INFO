variable NXslave
variable NYslave
variable NBslave
variable HME_stacksize
variable HME_x
variable HME_y
variable HME_debut
variable HME_vc1
variable HME_vc2
variable HME_register0
variable HME_register1
variable HME_register2
variable HME_register3
variable HME_register4
variable HME_register5
variable HME_register6
variable HME_register7
0 HME_register0 !
0 HME_register1 !
0 HME_register2 !
0 HME_register3 !
0 HME_register4 !
0 HME_register5 !
0 HME_register6 !
0 HME_register7 !

variable HME_register_save0
variable HME_register_save1
variable HME_register_save2
variable HME_register_save3
variable HME_register_save4
variable HME_register_save5
variable HME_register_save6
variable HME_register_save7


decimal
8 NXslave ! 
8 NYslave ! 
NXslave @ NYslave @  * NBslave !

variable HME_reg_slave0 NBslave @ 1 - cells allot
variable HME_reg_slave1 NBslave @ 1 - cells allot
variable HME_reg_slave2 NBslave @ 1 - cells allot
variable HME_reg_slave3 NBslave @ 1 - cells allot
variable HME_reg_slave4 NBslave @ 1 - cells allot
variable HME_reg_slave5 NBslave @ 1 - cells allot
variable HME_reg_slave6 NBslave @ 1 - cells allot
variable HME_reg_slave7 NBslave @ 1 - cells allot

HME_reg_slave0 NBslave @ cells 0 fill
HME_reg_slave1 NBslave @ cells 0 fill
HME_reg_slave2 NBslave @ cells 0 fill
HME_reg_slave3 NBslave @ cells 0 fill
HME_reg_slave4 NBslave @ cells 0 fill
HME_reg_slave5 NBslave @ cells 0 fill
HME_reg_slave6 NBslave @ cells 0 fill
HME_reg_slave7 NBslave @ cells 0 fill

128 HME_stacksize !  
hex
\  actif flag + init à 1
variable  HME_actif  NBslave @ 1 -   allot
	HME_actif NBslave @  1  fill 
\ IP list 
: :IP : ;
: IP ;
: IPcode hex ;
: endIP drop ;

: :3IP : ;
\ activity
: all 
	HME_actif NBslave @  1  fill 
;

: onx ( 32b -- )
	NXslave @ 0 do
		NYslave @ 0 do
			dup 01 J lshift  and  J rshift   HME_actif I  NYslave @  J * + + c!  
		loop
	loop
	drop
;

: ony ( 32b -- )
	NYslave @ 0 do
		NXslave @ 0 do
			dup 01 J lshift  and  J rshift   HME_actif J  NYslave @  I * + + c!  
		loop
	loop
drop
;


: onxy ( 32by 32bx -- )
	NXslave @ 0 do
		NYslave @ 0 do
			dup 01 J lshift  and  J rshift  
			rot 
			dup 01 I lshift and I rshift 
			rot  and 
			HME_actif I  NYslave @  J * + + c!  swap
		loop
	loop
drop drop
;

: Hdebug_actif
hex
CR ." actif = " CR
NXslave @ 0 do
	NYslave @ 0 do
			." x " J . ." y " I . ." : " HME_actif I  NYslave @  J * +   + c@ . CR
	loop
loop
;
\ communications
variable HME_rcom NBslave @ 1 - cells  allot

: M2S 
	HME_rcom !
;

: S2M
	HME_rcom @
;

: bcomx
	NXslave @ 1 - 0 do
		NYslave @ 0 do
			HME_rcom I NYslave @  NXslave @ J  1 + - 1 - * +  cells + @ 
			HME_rcom I  NYslave @  NXslave @ J  - 1 - *  +   cells + !  
		loop
	loop
;

: bcomy
	NXslave @ 0 do
		NYslave @ 1 -  0 do
			HME_rcom NYslave @ 1- I 1 + -   NYslave @  J * +   cells + @ 
			HME_rcom NYslave @ 1 -  I -  NYslave @ J * +    cells + !  
		loop
	loop
;

: comx
	NYslave @ 0 do
		HME_rcom I  NYslave @ NXslave @ 1 -  * +   cells + @  
	loop
	NXslave @ 1 - 0 do
		NYslave @ 0 do
			HME_rcom I NYslave @  NXslave @ J  1 + - 1 - * +   cells + @ 
			HME_rcom I  NYslave @  NXslave @ J  - 1 - *  +   cells + !  
		loop
	loop
	NYslave @ 0 do
			HME_rcom NYslave @  1 -  I  -  cells + !  
	loop
;
: comx-
	NXslave @ 1 - 0 do
		comx
	loop
;

: comy
	NXslave @ 0 do
		HME_rcom NYslave @  1 -   NYslave @  I  *  +  cells + @ 
	loop 
	NXslave @ 0 do
		NYslave @ 1 -  0 do
			HME_rcom NYslave @ 1- I 1 + -   NYslave @  J * +    cells + @ 
			HME_rcom NYslave @ 1 -  I -  NYslave @ J * +   cells + !  
		loop
	loop
	NXslave @ 0 do
		HME_rcom NYslave @ NXslave @ 1 - I -  *  cells + !  
	loop
;

: comy- 
	NYslave @ 1 - 0 do
		comy
	loop
;

: >x comx ;
: >y comy ;
: <x comx- ;
: <y comy- ;
: b>x bcomx ;
: b>y bcomy ;


: Hdebug_rcom
hex
CR ." Rcom = " CR
	NXslave @ 0 do
		NYslave @ 0 do
				." x " J . ." y " I . ." : " HME_rcom I  NYslave @  J * +  cells + @ . CR
		loop
	loop
;
\ gestion des stacks des exclaves
variable HME_stack NBslave @ HME_stacksize @ * 1 -  cells  allot 
variable HME_stackptr NBslave @  1 -  cells  allot 
HME_stackptr NBslave @  cells  0  fill 

: HME_savestack (  )
	depth HME_debut @ 
	=
	if 
		
	else
		depth HME_debut @ - HME_stackptr HME_Y @ NYslave @ HME_x @ * + cells +   !
		HME_stack  HME_y @ NYslave @ HME_x @ * + HME_stacksize @  * 4 * + 
			depth HME_debut @ -  0  DO
				dup rot swap  ! 4 +  
			loop
	endif
;

: HME_restaurestack
	depth  HME_debut  !
	HME_stackptr HME_Y @ NYslave @ HME_x @ * + cells + @     dup 
	0 =
	if 
		 drop 
	else
		HME_stack HME_y @ NYslave @ HME_x @ * + HME_stacksize @  *  HME_stackptr HME_Y @ NYslave @ HME_x @ * + cells + @ 1 - + 4 * +  
		swap
			0 DO
				dup @ swap  4 -
			loop
		drop
	endif
;

: HME_save_register
	HME_register0 @ HME_register_save0 !
	HME_register1 @ HME_register_save1 !
	HME_register2 @ HME_register_save2 !
	HME_register3 @ HME_register_save3 !
	HME_register4 @ HME_register_save4 !
	HME_register5 @ HME_register_save5 !
	HME_register6 @ HME_register_save6 !
	HME_register7 @ HME_register_save7 !
;

: HME_load_register
	HME_reg_slave0 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register0 !
	HME_reg_slave1 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register1 !
	HME_reg_slave2 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register2 !
	HME_reg_slave3 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register3 !
	HME_reg_slave4 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register4 !
	HME_reg_slave5 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register5 !
	HME_reg_slave6 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register6 !
	HME_reg_slave7 HME_y @ NYslave @ HME_x @ * +  cells + @ HME_register7 !
;

: HME_store_register
	HME_register0 @  HME_reg_slave0 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register1 @  HME_reg_slave1 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register2 @  HME_reg_slave2 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register3 @  HME_reg_slave3 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register4 @  HME_reg_slave4 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register5 @  HME_reg_slave5 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register6 @  HME_reg_slave6 HME_y @ NYslave @ HME_x @ * +  cells +  !
	HME_register7 @  HME_reg_slave7 HME_y @ NYslave @ HME_x @ * +  cells +  !
;

: HME_restaure_register
	HME_register_save0 @ HME_register0 !
	HME_register_save1 @ HME_register1 !
	HME_register_save2 @ HME_register2 !
	HME_register_save3 @ HME_register3 !
	HME_register_save4 @ HME_register4 !
	HME_register_save5 @ HME_register5 !
	HME_register_save6 @ HME_register6 !
	HME_register_save7 @ HME_register7 !
;

variable HMD_PCall

: spmd 
	hex 
	HME_save_register
	HMD_PCall !
\	CR ." PCexe " CR
		NXslave @ 0 do
			NYslave @ 0 do
				I J HME_x !
				HME_Y !
				HME_actif I  NYslave @  J * +   + c@		0 =	
				IF 
				ELSE
\					." execution pour xnum = " J . ." ynum = " I . 		
					HME_restaurestack
					HME_load_register
					HMD_PCall @  execute
					HME_savestack
					HME_store_register
\					CR  
				ENDIF
			loop
		loop
	HME_restaure_register
;

: Hdebug_stack 
	hex
	CR ." Stack = " CR
		NXslave @ 0 do
			NYslave @ 0 do
				I HME_y !
				J HME_x !
				." x " J . ." y " I . ." :  => " HME_stackptr I  NYslave @  J * +  cells + @ . 
				HME_stackptr I  NYslave @  J * +  cells + @ dup 
				0 = 
				if 
					." stack vide " drop CR
				else
					." = " 
						0 DO 
							HME_stack HME_y @ NYslave @ HME_x @ * +  HME_stacksize @  * I +   4 *  +     @ .
						loop
					CR
				endif
			loop
		loop
;
: Hdebug_register 
	hex
	CR ." Slave register = " CR
		NXslave @ 0 do
			NYslave @ 0 do
				I HME_y !
				J HME_x !
				." x " J . ." y " I . ." :  => " HME_reg_slave0 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave1 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave2 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave3 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave4 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave5 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave6 I  NYslave @  J * +  cells + @ . 
				HME_reg_slave7 I  NYslave @  J * +  cells + @ . CR
				
			loop
		loop
;
\ IP des esclaves
: xnum
	HME_x @
;

: ynum
	HME_y @
;

: sleep
	0 HME_actif HME_y @ NYslave @  HME_x @ * +   + c!
;

: put
	HME_rcom HME_y @ NYslave @  HME_x @ * +  cells + ! 
;

: get 
	HME_rcom HME_y @ NYslave @  HME_x @ * +  cells + @
;

: slave hex  ;
: null ;
: master hex ;
: start ;

\ composants
: VC 
	create ['] null ,  
;

: PC  
	create  ['] null ,
;
: Vcexe @ execute ;
: /x vcexe ;

: PCexe @ spmd ;
: //x pcexe ;
: //w pcexe ;


: dynamic ! ; 
: static ! ; 


\ literaux
: $ 
;


\ : IFDUP dup if ;
\ : again_l  again ;
\ : until_l until ;

: program 
	hex CR CR ." Start HoMade Emulator" CR CR 
;

: endprogram   
	CR ." End HoMade Emulator " CR CR 
	." halt (press any char) " key drop
;
  

\ liste des IPs predefinis
: add + ;
: minus - ;
: eq = ;

\ : switch .s 2 base ! CR ." input 8 bits => " 0. BL word hex  ff and dup CR ." switch = " 2 base ! 8 U.R CR ;
: switch 
	hex
	0 8 
	CR ." sw  7 -> 0 : "
	begin
		key dup  
		 [char] 1 = if
			drop
			1 -  ." 1"
			swap 2* 1 + swap
		else
			 [char] 0  = if
			 	1 -  ." 0"
				swap 2* swap
			endif
		endif
		dup
		0 =
	until
	drop CR
;
: btnpush 
	hex
	begin 
		dup
		key 
		dup [char] 6 = IF  drop 1 else
		dup [char] 2 = IF  drop 2 else
		dup [char] 4 = IF  drop 4 else
		dup [char] 8 = IF  drop 8 else
		dup [char] 5 = IF  drop 10 else
		drop 0
		then then then then then  
		dup rot and  0 = 
	while 
		drop 
	repeat
	swap drop
	
;
: btn
	btnpush drop
;
: 7segdup
	dup hex
	." 7seg       = " [ hex ]   8 U.R CR
 ;
: 7seg
	 hex
	." 7seg       = " [ hex ]   8 U.R CR
 ;
	
					
					
: led   
	." led        = " [ hex ] ff and 2 base ! 8 U.R CR
	hex     
;
: mul16 
	FFFF and swap FFFF and swap *
;
: muladd
	mul16 +
;
\ master only!!!!!!!!!!! for emulation....

: >0 HME_register0 ! ;
: >1 HME_register1 ! ;
: >2 HME_register2 ! ;
: >3 HME_register3 ! ;
: >4 HME_register4 ! ;
: >5 HME_register5 ! ;
: >6 HME_register6 ! ;
: >7 HME_register7 ! ;

: 0> HME_register0 @ ;
: 1> HME_register1 @ ;
: 2> HME_register2 @ ;
: 3> HME_register3 @ ;
: 4> HME_register4 @ ;
: 5> HME_register5 @ ;
: 6> HME_register6 @ ;
: 7> HME_register7 @ ;

: leddup dup led ;
: tic  ff ." tic dummy result ff " cr ;
: ticraz ;
: delay drop ;
: pop1 drop ;
: pop2 drop drop ;
: pop3 drop drop drop ;
: vrai ffffffff ;
: faux 0 ;
: wait ; 

: fibo
	." fibo hard emul " CR
		$ 0 
		$ 1 
		rot
		$ 3  
		- 
for
	dup rot + 
next
swap 
drop
;
: return ;
: null ;

: nop ;
: hlt  ;
: >rdup dup >R ;
: <- lshift ;
: -> rshift ;







CR 
." Begin HoMade Emulator" CR 




