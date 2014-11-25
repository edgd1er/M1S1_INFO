
public class preferences {

	// contient les donnees a traiter
	static exempleData myExemple = null;

	public preferences() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {

		double distance = 0;
		double startTime, totalTime;

		// chargement des donn�es a traiter
		for (String s : args)
			System.out.println("arg -> " + s);

		if (args.length > 0) {
			if (args[0].contains("<")) {
				myExemple = new exempleData(args[1]);
			} else {
				myExemple = new exempleData(args[0]);
			}

			System.out.printf("\nComments: %s\n", myExemple.comments);

		} else {
			System.out.println("\nUsage: " + preferences.class.getSimpleName()
					+ " nomdifichier_a_charger \r\n");
			System.exit(0);
		}

		// poursuite du traitement

		/*
		 * normalisation de profilA tri de A dans l'ordre croissant, en gardant
		 * un tableau de correspondance entre les donn�es d'origine et les
		 * donn�es normalis�es
		 */
		myExemple.normaliseA();

		/*
		 * Calcul de distance en n�
		 */
		startTime = System.nanoTime();
		distance = myExemple.sortcar();
		totalTime = (System.nanoTime() - startTime);

		System.out.print("Tri par insertion en n� (temps):" + totalTime);
		myExemple.AffichagResultat(distance);

		/*
		 * Calcul de distance en nlogn
		 */
		distance = -1;
		myExemple.profilBsor = myExemple.profilBnor.clone();
		startTime = System.nanoTime();
		distance = myExemple.mergesort(myExemple.profilBsor, 0, myExemple.profilBsor.length - 1);
		totalTime = (System.nanoTime() - startTime);

		System.out.print("\nTri Fusion en nlogn (temps): " + totalTime);
		myExemple.AffichagResultat(distance);
	}

}
