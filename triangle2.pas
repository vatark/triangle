{ALGORITHME triangle2

BUT Afficher un triangle avec des nombres
ENTREE La taille du triangle
SORTIE le triangle

VAR
	tailleTriangle, i, j : ENTIER

DEBUT
	//On demande à l'utilisateur la taille du triangle
	ECRIRE "Entrez la taille du triangle"
	LIRE tailleTriangle
	
	//On fait une itération pour chaque ligne du triangle
	POUR i DE 0 A tailleTriangle-1 FAIRE
		//On écrit le numéro de la ligne, la première étant 0, autant de fois que l'inverse de la ligne à laquelle on est (exemple : Si tailleTriangle = 5; ligne 0 -> On écrit l'entier '0' 5 fois)
		POUR j DE 1 A tailleTriangle-i FAIRE
			ECRIRE i
		FINPOUR
		ECRIRE
	FINPOUR
FIN}

program triangle2;

uses crt;

VAR
	tailleTriangle, i, j : integer;

BEGIN
	clrscr;

	//On demande à l'utilisateur la taille du triangle
	writeln('Entrez la taille du triangle');
	readln(tailleTriangle);
	
	//On fait une itération pour chaque ligne du triangle
	for i:=0 to tailleTriangle-1 do
	BEGIN
		//On écrit le numéro de la ligne, la première étant 0, autant de fois que l'inverse de la ligne à laquelle on est (exemple : Si tailleTriangle = 5; ligne 0 -> On écrit l'entier '0' 5 fois)
		for j:=1 to tailleTriangle-i do
		BEGIN
			write(i);
		END;
		writeln();
	END;

	readln();
END.