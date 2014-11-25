
public class reduce {

	public static void main(String[] args) {
		// chargement de la palette
		int test = 0;
		Palette pImg = new Palette();
		PGM myImage;

		/* chargement de l'image */
		String img2read= "data/baboon_gray.PGM";
		myImage= new PGM();
		myImage.setFilePath(img2read);
		myImage.readImage();
		/* extraction de la palette de l'image */ 
		pImg.extractPalette(myImage);

		/*Reduction de la palette de test en newnbcolor */
		int newnbcolor=40;
		/* calcul de la distance optimale avec memorisation */
		test= pImg.distanceImage(pImg.nivGris.length, newnbcolor);
		/* affichage du tableau memoris� */
		pImg.AffichageTab();
		/* recuperation des index de fin d'interval*/
		int index[] = pImg.retrouveIndex(test);
	    for (int i : index) System.out.println(i);	
		System.out.print("\nReduction de la palette de  "+ pImg.nivGris.length + " a " + newnbcolor +": " + test+"\n");
		/* creation de la nouvelle palette.*/
		pImg.getNewPalette();
		
		pImg.SetNewpixel(myImage);
		myImage.setFilePath("data\\test.pgm");
		myImage.writeImage();
		
		
	}
	
}
