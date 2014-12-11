import java.util.Random;


public class Pb1Dec {

	/**
	 * @param args
	 */
	//la classe abstraite des problèmes de décision...
	abstract class PblDec {
	public PblDec(){}
	}
	//la classe des problèmes BinPack
		class PblBinPack extends PblDec{
		int nb_objets; //nb d’objets
		int poids[]; //poids des objets
		int cap;
		String comments;
		//capacité du sac
		int nb_sacs;
	//nb de sacs
	public PblBinPack(int n, int p[], int c, int nbs ){
	//juste le constructeur A ECRIRE
		this.nb_objets = n;
		this.poids = p;
		this.cap = c;
		this.nb_sacs = nbs;
	}
	//Ecrivez Les accesseurs que vous souhaitez!
	
	
	//retourne Vrai ssi il existe une mise en sachets possible i.e. si l’instance du pb est positive
	public boolean aUneSolution() {
		
	
	//fonctionnera par recherche exhaustive
	// A ECRIRE
	}
	//teste au hasard une mise en sachets et retourne Vrai si elle est valide
	//chaque mise en sachets doit pouvoir être générée par une exécution
	public boolean aUneSolutionNonDéterministe() {
		
		Random rnd = new Random();
		int[] mycertificat = new int[this.nb_objets];
		boolean resultat;
		String strTemp;
		for (int i = 0; i < nb_objets; i++) {
			/* l'objet i mis est mis dans le sac au hasard */
			mycertificat[i] = rnd.nextInt(k);
		}
		
		System.out.println("Données: " + strFile + "\n");
		resultat = algoverif(mycertificat, this);
		strTemp = "certificat:" + getCertificat(mycertificat) + "=" + resultat
				+ "\n";
		System.out.println(strTemp);
		System.out.println(comments);

		return false;
	// A ECRIRE
	}
	}
		
	interface Certificat{
	//retourne True SSi le certificat est valide pour le problème
	//doit être de complexité polynomiale par rapport à la taille du certificat et du problème
	public boolean correct(); //algo de vérification A de la définition NP du cours!
	// pour l’énumération on utilisera un ordre total sur les certificats
	//par ex. le constructeur initialisera au plus petit élément
	//transforme le certificat en son successeur pour l’ordre
	public void suivant();
	//retourne True Ssi le certificat n’a pas de successeur pour l’ordre
	public boolean estDernier();
	//modifie aléatoirement la valeur du certificat
	//chaque valeur doit pouvoir être générée par au moins une exécution
	public void alea();
	//réinitialise le certificat au plus petit pour l’ordre
	public void reset();
	//permet la saisie d’un certificat
	public void saisie();
	}
	//la notion de certificat pour le problème Bin_Pack
	class CertificatBinPack implements Certificat{
	private PblBinPack pb; //le problème associé au certificat
	//A compléter

	@Override
	public boolean correct() {
		
		int[] sacs = new int[];
		int currentsac;
		int currentobj;
		for (int i = 0; i < nb_objets; i++) {
			currentobj = mydata.px[i];
			currentsac = certificat[i];
			sacs[currentsac] += currentobj;
			if (sacs[currentsac] > mydata.c) {
				return false;
			}

		}

		return true;
		return false;
		return false;
	}

	@Override
	public void suivant() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean estDernier() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void alea() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void reset() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saisie() {
		// TODO Auto-generated method stub
		
	}
	}

}
