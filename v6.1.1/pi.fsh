:ip rdm $8810
;

slave
start
master

start
	ticraz
	$0                  //init compteur valeur dans le cercle
	$10000 for          //itération boucle

		rdm dup         //tirage nombre aléatoire et duplique sommet pile
	
		$FFF            //FFF sommet pile
		and             //and -> on récupère les poids fort
		dup             //duplique sommet pile
		mul16           //calcul de F2
		
		swap			//inverse F2 avec rdm
		$C ->		    //shift droit pour obtenir poid faible
							
		$FFF			//FFF sommet de pile
		and				//on recupere poid faible
		dup				//duplique
		mul16			//calcul de f2
		
		add				//on additionne F2 et f2
		$FFE001			//Lit FFE001
		<=				//Compare et met vrai ou faux sommet de pile
		if				//si vrai		
			++			//inc le compteur
		endif
	next

	tic					//nb cycle
	7segup $1F btn		//affiche 16b poids faible nbcycle 
		
	$10	->				//shift de 16b
	7seg $1F btn		//affiche 16b poids forts nbcycle et consomme sommet pile
	
	7segdup $1F	btn		//affiche nb de point à l'intérieur du cercle 
	
endprogram