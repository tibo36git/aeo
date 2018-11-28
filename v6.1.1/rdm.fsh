slave 
start
master 

:IP rdm $8810
;

: main
    49 for
        rdm
        7segdup
        1
        btn
    next
    7seg
    %11111
    btn
;
start 
main

endprogram