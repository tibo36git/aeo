slave
start

master
: read
  $1f btn
	switch
;

:ip fibo $AC03
;

: main
    read 
    ticraz
    fibo
    tic
    7seg $1f btn

    7seg $1f btn
;

start
    begin
	    main
    again    
endprogram