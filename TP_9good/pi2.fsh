:ip rdm $9010
;

slave
start
master

start
	ticraz
	$0                  //init compteur valeur dans le cercle
	$10000 for          //itération boucle

		rdm dup          //tirage nombre aléatoire et duplique sommet 
		mul16

		swap

		dup
		mul16
        
		add				//on additionne F2 et f2
		$FFE001			//Lit FFE001
		<=				//Compare et met vrai ou faux sommet de pile
		if				//si vrai		
			++			//inc le compteur
		endif
	next

	tic					//nb cycle
	7segdup $1F btn		//affiche 16b poids faible nbcycle 
		
	$10	->				//shift de 16b
	7seg $1F btn		//affiche 16b poids forts nbcycle et consomme sommet pile 1703936 cycles
	
	7segdup $1F	btn		//affiche nb de point à l'intérieur du cercle 
	
endprogram