:ip rdm $9010
;

:ip square $C814
;

:ip comp $A83C
;

:ip constante $443E
;

slave
start
master

start
	ticraz
	$0               
	$10001 
    begin         

		rdm 

        square

		comp

		if	
			swap					
			++	
			swap		
		endif
		-- dup
	0 = until drop

	tic					
	7segdup $1F btn		 
		
	$10	
	->				
	7seg $1F btn		
	
	7seg $1F btn		
endprogram