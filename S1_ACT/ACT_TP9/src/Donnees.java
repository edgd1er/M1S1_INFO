import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class Donnees {

	/**
	 * @param args
	 */

	int nbobjets;
	int[] px; // poids des objets
	int k; // nb de sacs
	int c; // capacit� des sacs
	String comments;
	int[] solcertificat;
	int[] britcert;
	String strFile;

	public Donnees(String file) {
		super();
		this.loadDonneeSac(file);
	}

	public Donnees() {
	}

	/* Algo de verification du certificat */
	public boolean algoverif(int[] certificat) {

		int[] sacs = new int[k];
		int currentsac;
		int currentobj;
		for (int i = 0; i < nbobjets; i++) {
			currentobj = px[i];
			currentsac = certificat[i];
			sacs[currentsac] += currentobj;
			if (sacs[currentsac] > this.c) {
				return false;
			}
		}

		return true;
	}

	/* generation et test des certificats */
	boolean exhaustMode() {
		int[] mycertificat = new int[this.nbobjets];
		boolean resultat;
		String strTemp;
		for (int i = 0; i < this.nbobjets; i++) {
			mycertificat[i] = 0;
		}

		System.out.println("Donnees: " + this.strFile + "\n");

		while (getNextCertificat()) {
			mycertificat = britcert;
			resultat = algoverif(mycertificat);
			strTemp = "certificat:" + this.getCertificat(mycertificat) + "="
					+ resultat;
			System.out.println(strTemp);
			if (resultat) {
				System.out.println(this.comments);
				return true;
			}
			
		}
		System.out.println("Pas de solution.\n" + comments);
		return false;
	}

	/* recuperation du certificat pour un affichage */
	public String getCertificat(int[] mycertificat) {
		String strTemp = "{";

		for (int myint : mycertificat) {
			strTemp += String.valueOf(myint) + ",";
		}
		strTemp = strTemp.substring(0, strTemp.length() - 1);
		strTemp += "}";
		return strTemp;
	}

	/* generation du certificat suivant a la facon d'un compteur */
	public boolean getNextCertificat() {
		if (britcert == null) {
			britcert = new int[this.nbobjets];
			return true;
		}
		britcert[0]++;
		for (int i = 0; i < this.nbobjets - 1; i++) {
			if (britcert[i] >= this.k) {
				britcert[i + 1]++;
				britcert[i] = 0;
			}
		}
		if (britcert[this.nbobjets - 1] >= this.k) {
			return false;
		} else {
			return true;
		}
	}

	public Boolean loadDonneePart(String file) {

		// ********************************************/
		/*
		 * Syntaxe n, le nb objets p1 P2 . . . Pn k , le nb de sacs c , la
		 * capacit�
		 */
		strFile = file;
		int sum = 0;
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(
					new FileInputStream(file), "UTF8"));
			try {

				String temp;

				temp = in.readLine();
				this.nbobjets = Integer.parseInt(temp);

				/* Lecture des objets */
				px = new int[nbobjets];
				for (int i = 0; i < nbobjets; i++) {
					temp = in.readLine();
					px[i] = Integer.parseInt(temp);
					sum += px[i];
				}

				/* lecture de k nb de sacs */
				k = 2;

				/* lecture de c capacit� du sac */
				c = sum / k;

				/* Lecture des commentaires */
				while ((temp = in.readLine()) != null) {
					comments += temp + "\n";
				}
			} finally {
				in.close();
			}
		} catch (Exception e) {
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getMessage() + "\n");
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getStackTrace() + "\n");
			return false;
		}
		return true;

	}

	/* chargement des données Sac */
	public Boolean loadDonneeSac(String file) {

		// ********************************************/
		/*
		 * Syntaxe n, le nb objets p1 P2 . . . Pn k , le nb de sacs c , la
		 * capacit�
		 */
		strFile = file;
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(
					new FileInputStream(file), "UTF8"));
			try {

				String temp;

				temp = in.readLine();
				this.nbobjets = Integer.parseInt(temp);

				/* Lecture des objets */
				px = new int[nbobjets];
				for (int i = 0; i < nbobjets; i++) {
					temp = in.readLine();
					px[i] = Integer.parseInt(temp);
				}

				/* lecture de k nb de sacs */
				temp = in.readLine();
				k = Integer.parseInt(temp);

				/* lecture de c capacit� du sac */
				temp = in.readLine();
				c = Integer.parseInt(temp);

				/* Lecture des commentaires */
				boolean gotsol = false;
				int idx = 0, idxobjet, idxdans, idxsac;
				int iobjet = 0, isac = 0;
				String strtemp2;
				while ((temp = in.readLine()) != null) {
					if (gotsol) {
						idxobjet = temp.indexOf("objet") + "objet".length();
						idxdans = temp.indexOf("dans");
						idxsac = temp.indexOf("sac") + "sac".length();
						strtemp2 = temp.substring(idxobjet, idxdans - 1);
						iobjet = Integer.parseInt(strtemp2.trim());
						isac = Integer.parseInt(temp.substring(idxsac,
								temp.length()).trim());
						solcertificat[iobjet] = isac;

					}
					if (temp.toLowerCase().contains("une solution")) {
						gotsol = true;
						solcertificat = new int[this.nbobjets];
						britcert = new int[this.nbobjets];
					}
					comments += temp + "\n";
				}
			} finally {
				in.close();
			}
		} catch (Exception e) {
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getMessage() + "\n");
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getStackTrace() + "\n");
			return false;
		}
		return true;

	}

	/* chargement du des données du probleme sum */ 
	public boolean loadDonneeSum(String file) {

		strFile = file;
		int sum=0;
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(
					new FileInputStream(file), "UTF8"));
			try {
				String temp;

				temp = in.readLine();
				this.nbobjets = Integer.parseInt(temp);

				/* Lecture des objets */
				px = new int[nbobjets+1];
				for (int i = 1; i <= nbobjets; i++) {
					temp = in.readLine();
					px[i] = Integer.parseInt(temp);
					sum+= px[i];
				}
				
				/* definition de k nb de sacs */
				k = 2;

				/* définition de c capacite du sac */
				temp = in.readLine();
				c = Integer.parseInt(temp);

				/* ajout de l'objet qui completera le second sac  */
				/* si 2c > sum: ens1 + (ens2 +x) = 2c */
				nbobjets++;
				if (2*c-sum>0){
				px[0] = 2*c-sum;}
				else/* sum>2c  */
					/* on cree un espace pour agrandir le sac 
					 * et basculer l'objet x dans le second sac */
					/* sum + objet inconnu = 2 (capacité sac +x) */
					/* pour distinguer la solution, il conviendra de 
					 * chercher l'objet X dans le certificat vérifiant
					 * l'algo ( en le supprimant, on a la solution)
					 * Certificat1:{4,6,10,4,}=24
					 * Certificat2:{2,2,12,8,}=24 => sol 2,12,8 
					 * */
				{
					this.c = c + sum -2*c;
					px[0] = 2*c-sum;
				}

				
				/* Lecture des commentaires */
				while ((temp = in.readLine()) != null) {
					comments += temp + "\n";
				}
			} finally {
				britcert = new int[this.nbobjets];
				in.close();
			}
		} catch (Exception e) {
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getMessage() + "\n");
			System.err.println(Donnees.class.getPackage().getName()
					+ e.getStackTrace() + "\n");
			return false;
		}
		return true;


		
	}
}