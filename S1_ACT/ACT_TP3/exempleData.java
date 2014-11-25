

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;



public class exempleData {

	int profilSize;
	int[] profilA;
	HashMap<Integer, Integer> HashA;
	int[] profilB;
	int[] profilBnor;
	int[] profilBsor;

	String comments;

	public int getProfilSize() {
		return profilSize;
	}

	public void setProfilSize(int profilSize) {
		this.profilSize = profilSize;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public exempleData() {

	}

	public exempleData(int size) {
		profilSize =size;
		profilA =  new int[size];
		profilB =  new int[size];
		comments ="Constructeur vide";
		/*
		10
		8 1 3 0 4 9 7 5 6 2 
		3 5 0 9 2 6 1 4 7 8 
		 ******************
		Résultats attendus
		L2 normalisée par rapport à L1:
		2 7 3 5 9 8 1 4 6 0 
		distance:
		25*/

	}

	public exempleData(String file2read)
	{
		String strProfilA = null;
		String strProfilB = null;
		String strPath="";
		int tsize= 0;
		try{

			Path path = Paths.get(file2read.replace("\\", File.separator));
			strPath = path.toString().replace("\\", File.separator);
			String temp ;

			BufferedReader in = new BufferedReader(
					new InputStreamReader(new FileInputStream(strPath), "UTF8"));
			int tSize = Integer.parseInt(in.readLine().toString());
			strProfilA=in.readLine();
			strProfilB=in.readLine();

			profilA =  new int[tSize];
			profilB =  new int[tSize];
			HashA = new HashMap<Integer,Integer>();
			profilBnor =  new int[tSize];
			profilSize = tSize;


			comments="";
			while ((temp = in.readLine()) != null) {
				comments+=temp+"\n";
			}
			in.close();

		}

		//essai non testé d'attraper un parametre du genre < fichier
		catch(Exception e)
		{
			String[] separated = file2read.split("\n");
			tsize = Integer.valueOf(separated[0]);
			String[] strProfileA = separated[1].split(" ");
			String[] strProfileB = separated[2].split(" ");

			for(int i=3; i<separated.length; i++)
			{
				this.comments += separated[i].toString() + "\r\n";
				this.comments += e.getMessage() + e.getStackTrace() ; 

			}
		}

		finally{
			profilBnor = new int[profilSize];
			profilBnor = profilB.clone();
			//split string
			int j=0;
			for(String s : strProfilA.split(" ")) profilA[j++]=Integer.valueOf(s);
			j=0;
			for(String s : strProfilB.split(" ")) profilB[j++]=Integer.valueOf(s);
		}

	}

	public void AffichagResultat(double distance)
	{
		int max = profilA.length > 10 ? 10 : profilA.length;
		System.out.print("\nProfileA(" + profilA.length +"):	"); 
		for(int i=0;i<max; i++){ System.out.print(profilA[i]+" ");}
		//System.out.print("\nProfileA trié:	");
		//System.out.print(HashA +" ");
		System.out.print("\nProfileB:	");
		for(int i=0;i<max; i++){ System.out.print(profilB[i]+" ");}			
		System.out.print("\nProfileB normalisé:	");
		for(int i=0;i<max; i++){ System.out.print(profilBnor[i]+" ");}
		System.out.print("\nProfileB trié:	");
		for(int i=0;i<max; i++){ System.out.print(profilBsor[i]+" ");}


		System.out.print("\nDistance: " + distance +"\n");
	}

	public void normaliseA()
	{
		//Creation de la table d equivalence données brutes / données normalisées  
		int j=0;
		HashA = new HashMap<Integer,Integer>();
		for(int i : this.profilA )
		{
			HashA.put(i,j++);
		}
		//puis conversion des données de B selon la table d'équivalence.

		for(int i=0; i<profilSize; i++)
		{
			//recherche de la nouvelle valeur 
			int searchKey = profilB[i];
			if(HashA.containsKey(searchKey))
			{	//Affectation de la valeur normalisée
				profilBnor[i]= (int) HashA.get(searchKey).intValue();
			}
		}
	}

	//tri en n²
	public int sortcar() {
		int distance= 0;
		int itemp;
		this.profilBsor = new int[profilSize];
		profilBsor = profilBnor.clone();

		for(int i=0; i<this.profilBsor.length; i++)
		{
			for(int j=i+1; j<this.profilBsor.length; j++)
			{

				if (this.profilBsor[j]<this.profilBsor[i])
				{
					itemp = this.profilBsor[i];
					this.profilBsor[i] = profilBsor[j];
					this.profilBsor[j]= itemp;
					++distance;			
				}

			}
		}
		return distance;
	}


	// tri fusion en nlogn
	public int  mergesort(int[] profil,int g,int d) {
		int m=0, compteur=0;
		if (g<d)
		{
			m= (g+d)/2;
			compteur+=mergesort(profil,g,m);
			compteur+=mergesort(profil,m+1,d);
			compteur+=fusion(profil,g,m,d);
		}
		return compteur;
	}

	public int fusion(int[] tableau, int g, int m, int d)
	{
		int[] newtab= new int[d-g+1];
		int compteur =0;
		int cptg=g;
		int cptd=m+1;
		int cptcurrent=0;

		//les deux tableaux sont a traiter
		while ((cptg<=m) && (cptd<=d))
		{
			// si valeur de la liste 1 < valeur de la liste2,
			if (tableau[cptg]<=tableau[cptd])
			{
				//alors on prend la liste 1.
				newtab[cptcurrent] = tableau[cptg];
				cptg++;
				cptcurrent++;
			}
			else {
				//sinon on prend la liste 2.
				newtab[cptcurrent] = tableau[cptd];
				compteur+=(m-g)-cptcurrent+1;
				cptd++;
				cptcurrent++;
			}
			
		}

		//reste t-il des tableaux a completer
		//tableau1 fini, on recopie la 2eme liste 
		while (cptd<=d)
		{
			newtab[cptcurrent] = tableau[cptd];
			cptcurrent++;
			cptd++;
		}


		//tableau2 fini, on recopie la 1ere liste
		while(cptg<=m)
		{
			newtab[cptcurrent]=tableau[cptg];
			cptcurrent++;
			cptg++;
		}

		//recopie de la partie trié
		for(int i=g; i<=d;i++)
		{
			tableau[i]= newtab[i-g];
		}
		return compteur;
	}
}

