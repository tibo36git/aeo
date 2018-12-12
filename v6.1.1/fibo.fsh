slave
start

master
: read
  $1f btn
	switch
;

: main
    
    $1
    $2
    read 

    $3 -
    ticraz
    for 
        dup
        rot
        add
    next
    tic
    7seg $1f btn

    7seg $1f btn
;

start
    begin
	    main
    again    
endprogram