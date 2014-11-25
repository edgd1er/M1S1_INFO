import java.io.File;

public class partition {

	/**
	 * @param args
	 */

	static Donnees mydata;
	static int[] mycertificat;

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String strFile = "donnees" + File.separator + "dataReduction"
				+ File.separator + "exPartition1";
		/* chargement des donnees */
		if (args[0].length() > 0) {
			if (OSDetector.isWindows()) {
				strFile = args[0].replace("\\", File.separator);
			} else {
				strFile = args[0];
			}
		}
		mydata = new Donnees();
		mydata.loadDonneePart(strFile);

		/* verification des conditions */

		/* impairs */
		boolean impair = false;

		/* sum divisible par 2 */
		int sum = 0;
		for (int i : mydata.px) {
			sum += i;
			if ((!impair) && (i % 2) > 0) {
				impair = true;
			}
		}
		if ((sum % 2) > 0) {
			System.out.println("Erreur: la somme " + sum / 2
					+ " n'est pas divisible par 2.Arret");
			System.exit(0);
		}

		/* */
		if ((((sum / 2) % 2) > 0) && (!impair)) {
			System.out.println("Erreur: la somme " + sum / 2
					+ " est impair mais les entiers sont tous pairs.Arret");
			System.exit(0);
		}

		/* recherche british museum du certificat */
		if (mydata.exhaustMode()) {
			/* affichage du certificat trouvé */
			String strTemp1 = "Certificat1:{";
			String strTemp2 = "Certificat2:{";
			for (int i = 0; i < mydata.nbobjets; i++) {
				if (mydata.britcert[i] == 0) {
					strTemp1 += mydata.px[i]+",";
				} else {
					strTemp2 += mydata.px[i]+",";
				}
			}
			strTemp1+="}="+String.valueOf(sum/2);
			strTemp2+="}="+String.valueOf(sum/2);
			System.out.println(strTemp1 +"\n"+ strTemp2 +"\n");
		}

	}
}
