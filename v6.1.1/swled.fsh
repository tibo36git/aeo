slave
start
master
: print
	led 
;
: read 
	switch 
	%1111 
	btnpush 
	7seg
;

: main
	begin
		read
		print
	again
;

start
	main
endprogram
