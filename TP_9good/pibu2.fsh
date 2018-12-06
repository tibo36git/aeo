:ip rdm $9010
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

        dup 
		mul16          
		
		swap

		dup			
		mul16			
		
		add				
		$FFE001			
		<=				
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