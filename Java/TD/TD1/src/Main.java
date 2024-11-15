public class Main {
    public static void main(String[] args) throws Exception {

        /*Exercice 1 : Ecrivez un programme qui affiche "Hello World" au terminal.*/
        System.out.println("Hello World!");

        /*Exercice 2 : Ecrivez un programme qui affiche 10 fois "Hello World" au terminal en utilisant la boucle while.*/
        int n = 0;
	    while (n<10) {
	        n++;
	        System.out.println("Hello World");
	    }

        /*Exercice 3 : Ecrivez un programme qui affiche 10 fois "Hello World" au terminal en utilisant la boucle do... while.*/
        int i = 0;
	    do {
	        i++;
	        System.out.println("Hello World");
	    }
	    while (i<10);

        /*Exercice 4 : Ecrivez un programme qui affiche "Hello World" suivi d'un compteur, au terminal, en utilisant une boucle for.*/
        for (int e=1; e<7; e++){
            System.out.println("Hello World " + e);
        }

        /*Exercice 5 : Ecrivez un programme qui initialise un tableau de chaines de caractères (des objets de type String), comme indiqué ci-dessous, 
        puis les affiche une après l’autre au terminal en utilisant la boucle for…each.*/
        String[] nombres = {"one", "two", "three", "null", "four", "five"};
        for (String nombre : nombres) {
            System.out.println(nombre);
        }

        /*Exercice 6 : Ecrire un programme qui affiche le résultat ci-dessous au terminal en utilisant la boucle for avec indice allant de 1 à 5 inclus 
        et l’instruction continue.*/
        for (int j=1; j <= 5; j++){
        if (j == 3) {
            System.out.println("i = 3");
            continue;
        }
        System.out.println("Hello World " + j);
    }

        /*Exercice 7 : Ecrire un programme qui affiche le résultat ci-dessous au terminal en utilisant la boucle for avec indice allant de 1 à 5 inclus et 
        l’instruction break.*/
        for(int k=1; k<5; k++){
	        if (k == 3){
	            System.out.println(" Stop!");
	            break;
	        }
	        System.out.println("Hello World " + k);
	    }

        /*Exercice 8 : Ecrire un programme qui initialise une matrice sous la forme d'un tableau bidimensionnel, comme indiqué ci-dessus. Ensuite, le 
        programme lit la matrice des éléments à l'aide de deux boucles for imbriquées et affiche ses éléments au terminal, sous le format décrit 
        ci-dessous.*/
        int[][] matrice = {
            {1, 3, 5, 7},
            {2, 4, 6, 8},
            {9, 11, 13, 15}
        };

        for (int q=0; q<matrice.length; q++) {
            for (int j = 0; j < matrice[i].length; i++) {
                System.out.print(matrice[i][j] + " "); 
            }
            System.out.println(); // Saut de ligne
        }


    }
}
