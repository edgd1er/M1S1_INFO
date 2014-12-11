
public class testAlgo {

	public static void main(String[] args) {
		// chargement de la palette
		int test = 0;
		Palette pInit;
		
		String file2read="";
		file2read="data/init-palettes.pgm";
		pInit = new Palette(file2read);

		/*Reduction de la palette de test en newnbcolor */
		int newnbcolor=3;
		/* calcul de la distance optimale avec memorisation */
		test= pInit.distanceImage(pInit.nivGris.length, newnbcolor);
		/* affichage du tableau memorisé */
		pInit.AffichageTab();
		/* recuperation des index de fin d'interval*/
		int index[] = pInit.retrouveIndex(test);
	    for (int i : index) System.out.println(i);	
		System.out.print("\nReduction de la palette de  "+ pInit.nivGris.length + " a " + newnbcolor +": " + test+"\n");
		/* creation de la nouvelle palette.*/
		pInit.getNewPalette();
		
	}
	
}
