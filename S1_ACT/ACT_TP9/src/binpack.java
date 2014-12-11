import java.io.File;
import java.util.Random;

public class binpack {

	static Donnees mydata;
	static int[] mycertificat;

	public static void main(String[] args) {

		/* definition du jeu de donn�es */
		String strFile = "donnees" + File.separator + "dataBinPack"
				+ File.separator + "exemple1";

		if (args.length < 2) {
			usage();
		}

		/* chargement des donn�es */
		if (OSDetector.isWindows()) {
			strFile = args[0].replace("\\", File.separator);
		} else 
		{ 
			strFile = args[0];
		}
		mydata = new Donnees(strFile);

		/* traitement des options pour java 1.6 */
		if (!(args[1].startsWith("-"))) {
			usage();
		}

		/* lancement du mode demandé */
		char opt = args[1].charAt(1);

		switch (opt) {

		/* verification */
		case 'v':
			verificationMode();
			break;

		/* non d�terministe */
		case 'n':
			ndMode();
			break;

		/* exhaustif */
		case 'e':
			exhaustMode();
			break;

		/* erreur */
		default:
			usage();
			break;
		}
	}

	/* generation de tout les candidats-certificats possibles */
	private static void exhaustMode() {
		int[] mycertificat = new int[mydata.nbobjets];
		boolean resultat;
		String strTemp;
		for (int i = 0; i < mydata.nbobjets; i++) {
			mycertificat[i] = 0;
		}
		
		System.out.println("Données: " + mydata.strFile + "\n");
		
		while ((mydata.getNextCertificat())) {
			mycertificat = binpack.mydata.britcert;
			resultat = algoverif(mycertificat, mydata);
			strTemp = "certificat:" + getCertificat(mycertificat) + "="
					+ resultat;
			System.out.println(strTemp);
			if (resultat) {
				System.out.println(mydata.comments);
				System.exit(0);
			}
		}
	}

	/* generation d'un certificat aleatoire */
	private static void ndMode() {
		Random rnd = new Random();
		int[] mycertificat = new int[mydata.nbobjets];
		boolean resultat;
		String strTemp;
		for (int i = 0; i < mydata.nbobjets; i++) {
			/* l'objet i mis est mis dans le sac au hasard */
			mycertificat[i] = rnd.nextInt(mydata.k);
		}
		System.out.println("Données: " + mydata.strFile + "\n");
		resultat = algoverif(mycertificat, mydata);
		strTemp = "certificat:" + getCertificat(mycertificat) + "=" + resultat
				+ "\n";
		System.out.println(strTemp);
		System.out.println(mydata.comments);

	}

	private static void verificationMode() {
		// TODO Auto-generated method stub
		String strTemp;
		/* certificat */
		System.out.println("Données: " + mydata.strFile + "\n");
		boolean resultat = algoverif(mydata.solcertificat, mydata);
		
		strTemp = "certificat:" + getCertificat(mydata.solcertificat) + "="
				+ resultat + "\n";
		System.out.println(strTemp);
		
		System.out.println(mydata.comments);

	}

	/* recuperation du certificat solution depuis le fichier data */
	private static int[] solCertificat() {
		// TODO Auto-generated method stub
		// String tabdonne = String.spl
		// int mydata.comments.toLowerCase().indexOf("une solution");
		return null;
	}

	/* generation du certificat suivant */
	private static void usage() {
		// TODO Auto-generated method stub
		String strTemp = "\n\nusage: binpack <files> <mode> \n avec modes -v (verif), -nd (non d�terministe), -exh (exhaustif)";
		System.out.println(strTemp);
		System.exit(2);
	}

	/* Algo de verification du certificat */
	public static boolean algoverif(int[] certificat, Donnees mydata) {

		int[] sacs = new int[mydata.k];
		int currentsac;
		int currentobj;
		for (int i = 0; i < mydata.nbobjets; i++) {
			currentobj = mydata.px[i];
			currentsac = certificat[i];
			sacs[currentsac] += currentobj;
			if (sacs[currentsac] > mydata.c) {
				return false;
			}

		}

		return true;
	}

	public static String getCertificat(int[] mycertificat) {
		String strTemp = "{";

		for (int myint : mycertificat) {
			strTemp += String.valueOf(myint) + ",";
		}
		strTemp = strTemp.substring(0, strTemp.length() - 1);
		strTemp += "}";
		return strTemp;
	}

}
