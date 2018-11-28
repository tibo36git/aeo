slave 
start
master 

: read
    %11111
    btn
    switch
    7segdup
;

: main
begin
    ticraz
    1 for
        read
    next
    add
    tic
    7seg
    %11111
    btn
    7segdup
    $10 
    -> 
    led
again
;
start 
main

endprogram