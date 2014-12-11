import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class Palette {

	/**
	 * @param args
	 */

	String paletteType = "";
	int[] poids;
	int[] nivGris;
	int[] nouveaupoids;
	int[] nouveaunivGris;
	int[] indexes;
	int[] equivGris;
	int maxnbGris;

	int[][] MEMO;
	static int distanceOpt = Integer.MAX_VALUE;

	public Palette(String file) {
		super();
		this.loadpalette(file);
	}

	public Palette() {
	}

	public Palette(int i) {
		poids = new int[i];
		nivGris = new int[i];
	}

	public Boolean loadpalette(String file) {

		/*
		 * P25 52550 0 0 0 020 20 20 20 20100 132 164 164 180255 255 255 255 255
		 * 255 255 255 255 255
		 */

		try {

			String temp;

			BufferedReader in = new BufferedReader(new InputStreamReader(
					new FileInputStream(file), "UTF8"));
			this.paletteType = in.readLine();

			/* verification du format */
			/*
			 * if (Type.contains("P2")) {
			 * System.out.print("Erreur au chargement du fichier " + file +
			 * ",\n le format n'est pas le bon(P2): " + temp); in.close();
			 * return false; }
			 */
			/* lecture de la taille de l'image */
			temp = in.readLine();
			while (temp.contains("#") || (temp.isEmpty())) {
				temp = in.readLine();
			}
			String[] temparray = temp.split(" ");
			int largeur = Integer.parseInt(temparray[0]);
			int hauteur = Integer.parseInt(temparray[1]);

			/* valeur maximum du gris */
			this.maxnbGris = Integer.parseInt(in.readLine());

			/* Lecture des valeurs de gris */
			String alllines = "";
			while ((temp = in.readLine()) != null) {
				alllines += temp + " ";
			}

			String[] tablines = null;
			// PGM au format ASCII
			if (this.paletteType.contains("P2")) {
				tablines = alllines.split(" ");
			}
			// PGM au format Binaire
			else if (this.paletteType.contains("P5")) {

				tablines = alllines.split(" ");
			}

			int[] tempPoids = new int[largeur * hauteur];
			int[] tempNivGris = new int[largeur * hauteur];

			int oldint = -1;
			int compteur = 0;
			int index = 0;
			int tempint;
			for (String s : tablines) {
				tempint = Integer.parseInt(s);
				if (oldint == -1) {
					tempNivGris[index] = tempint;
					oldint = tempint;
					compteur++;
				} else {
					/* on augmente le poids */
					if (tempint == oldint) {
						compteur++;
					} else
					// sinon on passe au nouveau gris
					{
						tempPoids[index] = compteur;
						tempNivGris[index] = oldint;
						oldint = tempint;
						index++;
						compteur = 1;

					}
				}
			}
			tempPoids[index] = compteur;
			tempNivGris[index] = oldint;
			this.poids = new int[index + 1];
			this.nivGris = new int[index + 1];
			this.nouveaunivGris = new int[index + 1];
			this.nouveaupoids = new int[index + 1];

			// recopie des tableaux sans les valeurs nulles
			int i = 0;
			while (i <= index) {
				poids[i] = tempPoids[i];
				nivGris[i] = tempNivGris[i];
				i++;
			}

			in.close();

		} catch (Exception e) {
			System.out.printf(e.getMessage());
		}
		return true;

	}

	// retourne le nombre de gris dans la palette
	public int nbniveaux() {

		return poids.length;
	}

	/*
	 * calcule, pour un intervalle de la palette, le niveau gris qui donne la
	 * distance minimale apres fusion, cette fonction prendra en argument les
	 * indices des premier et dernier gris � fusionner. Le meilleur gris est
	 * la moyenne ponderee des gris fusionnes.
	 */
	public int meilleurGris(int min, int max) {
		int index = 0;
		float meilleurgris = 0;
		int sommepoids = 0;

		while (true) {
			// fin du tableau alors on sort.
			if (index >= nivGris.length)
				break;

			// valeurs de gris inferieurs a la borne min
			if (nivGris[index] < nivGris[min]) {
				index++;
			}

			// valeurs de gris supperieur la borne min
			if (nivGris[index] > nivGris[max]) {
				break;
			}

			if (nivGris[index] >= nivGris[min]) {
				meilleurgris += (nivGris[index] * poids[index]);
				sommepoids += poids[index];
				index++;
			}
		}
		meilleurgris = meilleurgris / sommepoids;

		return Math.round(meilleurgris);
	}

	/*
	 * calcule la distance minimale qu entrainera //la fusion d un intervalle de
	 * la palette (en ne considerant que les pixels ayant ces niveaux de gris).
	 */

	public int distanceMin(int min, int max) {
		int distance = 0;
		int index = 0;
		int meilleurgris = meilleurGris(min, max);

		while (true) {
			// fin du tableau alors on sort.
			if (index >= nivGris.length)
				break;

			// valeurs de gris superieur la borne max
			if (nivGris[index] > nivGris[max]) {
				break;
			}

			// valeurs de gris inferieurs a la borne min
			if (nivGris[index] < nivGris[min]) {
				index++;
			}

			if (nivGris[index] >= nivGris[min]) {
				distance += Math.pow((nivGris[index] - meilleurgris), 2)
						* poids[index];
				index++;
			}
		}
		return (int) distance;
	}

	// Calcul de la distance de l'image en passant de nbCouleurInit a
	// newNbCouleur

	// Calcul la somme des poids d'un intervalle
	private int sommePoids(int min, int max) {
		int poids = 0;
		for (int i = min; i <= max; i++) {
			poids += this.poids[i];
		}
		return poids;
	}

	public int distanceImage(int nbCouleurInit, int nbCouleurNew) {

		if (nbCouleurNew < 1) {
			nbCouleurNew = 1;
		}
		if (nbCouleurNew > nbCouleurInit) {
			nbCouleurNew = nbCouleurInit;
		}

		MEMO = new int[nbCouleurNew + 1][nbCouleurInit];

		for (int i = 1; i <= nbCouleurNew; i++) {
			for (int j = 0; j < nbCouleurInit; j++) {
				MEMO[i][j] = -1;
			}
		}

		// devrait indiquer la plus courte distance
		// int dist=this.SelectedIndexWithMinDist(nbCouleurInit, nbCouleurNew,
		// 0);
		int dist = this.getDistMemo(nbCouleurInit, nbCouleurNew, 0);
		/*
		int dist2 = this.getDist(nbCouleurInit, nbCouleurNew, 0);
		if (dist != dist2)
			System.out.println("BORDEL!!!!");
			*/
		return dist;
	}

	// retourne la distance pour un calcul iteratif sur une serie d'intervalle
	private int getDistMemo(int nbCouleurInit, int nbCouleurNew, int idebut) {

		if (MEMO[nbCouleurNew][idebut] != -1)
			return MEMO[nbCouleurNew][idebut];

		// pas de meilleur resultat a l'appel
		int distanceOpt = Integer.MAX_VALUE;
		int tempdist = 0;

		// sortie de la recursivite
		if (nbCouleurNew == 1) {
			int res = distanceMin(idebut, nbCouleurInit - 1);
			MEMO[nbCouleurNew][idebut] = res;
			return res;

		} else {
			// appel recursif pour calculer les solutions
			// avec un decalage en nombre de couleurs et en debut
			// d'intervalle.
			for (int n = idebut; n <= nbCouleurInit - nbCouleurNew; n++) {
				// selectedIndex[selectedIndex.length - nbCouleurNew] = idebut;
				// calcul de la distance sur l'intervalle courant.
				tempdist = getDistMemo(nbCouleurInit, nbCouleurNew - 1, n + 1)
						+ distanceMin(idebut, n);

				// verification pour cette plage d'indice, as t-on la meilleur
				// solution
				if (tempdist < distanceOpt) {
					distanceOpt = tempdist;
				}
			}
		}
		MEMO[nbCouleurNew][idebut] = distanceOpt;
		return distanceOpt;
	}

	int[] retrouveIndex(int meilleurDist) {
		int n = MEMO.length - 1; // nombre de couleurs réduites = nombre de
									// fins d'intervalles à trouver
		this.indexes = new int[n];

		int k = 0;
		int dernier_k = 0;
		for (int i = 0; i < indexes.length - 1; i++) { // pour chaque intervalle
			while (meilleurDist - distanceMin(dernier_k, k) != MEMO[n - i - 1][k + 1]) {
				/*
				 * System.out.println("valeur cherchée="+(meilleurDist-distanceMin
				 * (dernier_k, k)));
				 * System.out.println("memo="+MEMO[n-i-1][k+1]);
				 * System.out.println("k="+k);
				 */
				k++;
			}
			/*
			 * System.out.println("valeur cherchée="+(meilleurDist-distanceMin(
			 * dernier_k, k))); System.out.println("memo="+MEMO[n-i-1][k+1]);
			 * System.out.println("k="+k);
			 */
			meilleurDist = MEMO[n - i - 1][k + 1];
			indexes[i] = k++;
			dernier_k = k;
		}

		indexes[n - 1] = MEMO[0].length - 1; // fin du dernier intervalle = fin
												// de la palette originale
		return indexes;
	}

	// retourne la distance pour un calcul iteratif sur une serie d'intervalle
	private int getDist(int nbCouleurInit, int nbCouleurNew, int idebut) {
		// pas de meilleur resultat a l'appel
		int distanceOpt = Integer.MAX_VALUE;
		int tempdist = 0;

		// sortie de la recursivite
		if (nbCouleurNew == 1) {
			int res = distanceMin(idebut, nbCouleurInit - 1);
			return res;

		} else {
			// appel recursif pour calculer les solutions
			// avec un decalage en nombre de couleurs et en debut
			// d'intervalle.
			for (int n = idebut; n <= nbCouleurInit - nbCouleurNew; n++) {
				// selectedIndex[selectedIndex.length - nbCouleurNew] = idebut;
				// calcul de la distance sur l'intervalle courant.
				tempdist = getDist(nbCouleurInit, nbCouleurNew - 1, n + 1)
						+ distanceMin(idebut, n);

				// verification pour cette plage d'indice, as t-on la meilleur
				// solution
				if (tempdist < distanceOpt) {
					distanceOpt = tempdist;
				}
			}
		}
		return distanceOpt;
	}

	// Calcul la distance entre une image a nbCouleurInit et la meme image en
	// nbCouleur
	public int distanceImage(int nbCouleurInit, int nbCouleurNew, int idebut) {
		return 1;
	}

	//

	public void AffichageTab() {
		// affiche le tableau des index.
		int nbcoul = this.MEMO.length - 1;
		int idebut = this.MEMO[0].length;
		String tab1, tab2 = "";
		String head = "header  :    ";
		for (int j = 0; j < idebut; j++) {
			head += String.valueOf(j) + "|";
		}

		System.out.print("\nAffichage des distances sauvegardes\n" + head
				+ "\t\t\t" + head + "\n");

		for (int i = nbcoul; i >= 1; i--) {
			tab1 = "Couleurs:" + i + " | ";
			tab2 = "";
			for (int j = 0; j < idebut; j++) {
				tab1 += this.MEMO[i][j] + "|";
			}

			System.out.print(tab1 + "\t\t\t" + tab2 + "\n");
		}

	}

	// calcul de la nouvelle palette.
	public void getNewPalette() {

		if (indexes != null) {
			this.nouveaunivGris = new int[indexes.length];
			this.nouveaupoids = new int[indexes.length];
			this.equivGris = new int[this.maxnbGris];
			int idx2 = 0, idx1 = 0;

			for (int i = 0; i < indexes.length; i++) {
				idx2 = indexes[i];
				// si on est en fin de tableau alors on prend le reste
				this.nouveaunivGris[i] = meilleurGris(idx1, idx2);
				this.nouveaupoids[i] = sommePoids(idx1, idx2);
				idx1 = idx2 + 1;
			}

			// creation d'un tableau d'equivalence de gris
			// index = couleur de l'ancien gris, val = nouveau gris
			int idx = 0;
			for (int i = 0; i <= this.maxnbGris - 1; i++) {
				idx1 = this.nivGris[this.indexes[idx]];
				if (i > this.nivGris[this.indexes[idx]]) {
					idx++;
				}
				idx=idx>=this.indexes.length?this.indexes.length-1:idx;
				this.equivGris[i] = this.nouveaunivGris[idx];
			}

			// fin de l'intervalle
		}// sortie de la boucle, c'est terminé
	}// Fin du test indexes null

	public void AffichageNewPalette() {
		// TODO Auto-generated method stub
		String message = "\nNouveauGris:";
		String message2 = "\nNouveauPoids: ";
		for (int i = 0; i <= this.nouveaunivGris.length - 1; i++) {
			message += nouveaunivGris[i] + ",";
			message2 += nouveaupoids[i] + ",";
		}
		message += message2;

		System.out.println(message);
	}

	public int extractPalette(PGM myImage) {
		// TODO Auto-generated method stub
		paletteType = myImage.getType();
		String FilePath = myImage.getFilePath();
		int[] poids;
		int[] nivGris;
		int[] nouveaupoids;
		int[] nouveaunivGris;
		int[] indexes;

		int[][] selectedIndex;
		int[][] SelectedIndexbis;
		distanceOpt = Integer.MAX_VALUE;
		int rows = myImage.getRows();
		int cols = myImage.getColumns();
		int[] tempGris = new int[rows * cols];
		int[] tempPoids = new int[rows * cols];
		int gris = 0;
		int idx = 0;

		// recuperation des gris de l'image
		for (int tr = 0; tr <= rows; tr++) {
			for (int tc = 0; tr <= cols; tr++) {
				gris = myImage.getPixel(tr, tc);
				tempGris[gris] = gris;
				tempPoids[gris] += 1;
			}
		}

		// creation d'une hashmap avec les valeurs uniques

		HashMap<Integer, Integer> hm = new HashMap<Integer, Integer>();
		for (int i = 0; i < tempGris.length; i++) {
			if (tempPoids[i] != 0) {
				hm.put(tempGris[i], tempPoids[i]);
			}
		}

		this.nivGris = new int[hm.size()];
		this.poids = new int[hm.size()];
		this.maxnbGris= myImage.getMaxGray()+1;

		Map<Integer, Integer> map = new TreeMap<Integer, Integer>(hm);
		Set<Entry<Integer, Integer>> set2 = map.entrySet();
		Iterator<Entry<Integer, Integer>> iterator2 = set2.iterator();
		idx = 0;
		while (iterator2.hasNext()) {
			Map.Entry me2 = (Map.Entry) iterator2.next();
			this.nivGris[idx] = (Integer) me2.getKey();
			this.poids[idx] = (Integer) me2.getValue();

			/*
			 * System.out.print(this.nivGris[idx] + ": ");
			 * System.out.println(this.poids[idx]);
			 */
			idx++;
		}

		idx = 0;
		return 1;
	}

	/* Parcours les pixel et affecte la nouvelle palette. */
	void SetNewpixel(PGM image) {

			int i,j;
		for (int row = 0; row < image.getRows(); row++) // parcours des lignes
		{
			for (int col = 0; col < image.getColumns(); col++) // parcours des
																// colonnes
			{
				i=image.getPixel(row, col);
				j=this.equivGris[image.getPixel(row, col)];
				image.setPixel(row, col,
						this.equivGris[image.getPixel(row, col)]);
			}
		}

	}

}