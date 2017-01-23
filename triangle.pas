{ALGORITHME triangle

BUT Afficher un triangle avec des X et des O
ENTREE La taille du triangle
SORTIE le triangle

VAR
	tailleTriangle, i, j : ENTIER

DEBUT
	//On demande à l'utilisateur la taille du triangle
	ECRIRE "Entrez la taille du triangle"
	LIRE tailleTriangle
	
	//On fait une itération pour chaque ligne du triangle
	POUR i DE 1 A tailleTriangle FAIRE
		//On écrit toujours un X au début
		ECRIRE 'X'
		
		//On met un deuxième X si c'est la deuxième ligne
		SI (i = 2) ALORS
			ECRIRE 'X'
			
		//On met des O au milieu et un X à la fin des prochaines lignes sauf de la dernière
		SINON SI ((i > 2) ET (i<tailleTriangle)) ALORS
			POUR j DE 1 A i-2 FAIRE
				ECRIRE 'O'
			FINPOUR
			ECRIRE 'X'
		FINSI
		
		//On met autant de X que la taille du triangle, -1 car on en a déjà mis un au début, pour la dernière ligne
		SINON SI (i = tailleTriangle) ALORS
			POUR j DE 1 A tailleTriangle-1 FAIRE
				ECRIRE 'X'
			FINPOUR
		FINSI
		ECRIRE //On saute une ligne une fois celle-ci finie
	FINPOUR
FIN}

program triangle;

uses crt;

VAR
	tailleTriangle, i, j : integer;

BEGIN
	clrscr;

	//On demande à l'utilisateur la taille du triangle
	writeln('Entrez la taille du triangle');
	readln(tailleTriangle);
	
	//On fait une itération pour chaque ligne du triangle
	for i:=1 to tailleTriangle do
	BEGIN
		//On écrit toujours un X au début
		write('X');
		
		//On met un deuxième X si c'est la deuxième ligne
		if (i = 2) then
			write('X')
			
		//On met des O au milieu et un X à la fin des prochaines lignes sauf de la dernière
		else if ((i > 2) and (i<tailleTriangle)) then
		BEGIN
			for j:=1 to i-2 do
			BEGIN
				write('O');
			END;
			write('X');
		END
		
		//On met autant de X que la taille du triangle, -1 car on en a déjà mis un au début, pour la dernière ligne
		else if (i = tailleTriangle) then
		BEGIN
			for j:=1 to tailleTriangle-1 do
			BEGIN
				write('X');
			END;
		END;
		writeln(); //On saute une ligne une fois celle-ci finie
	END;

	readln();
END.