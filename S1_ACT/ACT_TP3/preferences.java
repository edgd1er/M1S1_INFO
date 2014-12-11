
public class preferences {

	// contient les donnees a traiter
	static exempleData myExemple = null;

	public preferences() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {

		double distance = 0;
		double startTime, totalTime;

		// chargement des données a traiter
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
		 * un tableau de correspondance entre les données d'origine et les
		 * données normalisées
		 */
		myExemple.normaliseA();

		/*
		 * Calcul de distance en n²
		 */
		startTime = System.nanoTime();
		distance = myExemple.sortcar();
		totalTime = (System.nanoTime() - startTime);

		System.out.print("Tri par insertion en n² (temps):" + totalTime);
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
