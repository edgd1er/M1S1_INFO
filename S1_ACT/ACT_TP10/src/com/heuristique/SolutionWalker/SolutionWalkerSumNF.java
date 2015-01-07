package com.heuristique.SolutionWalker;

import java.util.Collections;

import com.heuristique.PartialSolutionSum;
import com.heuristique.PblSum;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class SolutionWalkerSumNF extends SolutionWalkerSum {

	PartialSolutionSum mysolPartial;

	public SolutionWalkerSumNF(PblSum pbl, EnumerationObjets en) {
		// on peut passer en en parametre: deux énumérations ici:
		// online et par poids décroissants
		// on peut aussi simplement construire le probleme avec objets tries
		// au depart....

		mysolPartial = new PartialSolutionSum(pbl, en);
	}

	/*
	 * Le principe est simple; on a un sac courant; à chaque objet, on le met
	 * dans le sac courant si il y a assez de place. Sinon , on crée un nouveau
	 * sac courant et on y met l’objet
	 */
	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!
		// il y a encore des objets a empaqueter
		if (mysolPartial.getEn().hasMoreElements()) {

			int nextone = mysolPartial.getEn().NextElement();
			boolean found = false;

			/*
			 * tri des sacs en paquets decroissants pour trouver celui qui
			 * conviendra le mieux.
			 */
			Collections.sort(mysolPartial.ASac, Collections.reverseOrder());

			if (mysolPartial.ASac.size()<1)
			{ while (nextone > mysolPartial.getCap() && mysolPartial.getEn().hasMoreElements())
				{
					nextone = mysolPartial.getEn().NextElement();
				}
				if (nextone< mysolPartial.getCap())
				{
					mysolPartial.ASac.add(nextone);
					System.out.println("Ajout de l'objet: " + nextone); 
				}
			}
			
			for (int j = 0; j < mysolPartial.ASac.size(); j++) {
				int currentpoids = mysolPartial.ASac.get(j);
				if (currentpoids + nextone <= mysolPartial.getCap()) {
					mysolPartial.ASac.set(j, currentpoids + nextone);
					System.out.println("\nAjout de l'objet: " + nextone); 
					found = true;
					break;
				}
			}

			/* sac 0 rempli, epuisement des elements */
			if (!found) {
				while (!mysolPartial.Complete()) {
					nextone = mysolPartial.getEn().NextElement();
				}
			}

		}
	}

	@Override
	public boolean Terminated() {
		return mysolPartial.Complete();
	}

	@Override
	public PartialSolution Current() {
		// TODO Auto-generated method stub
		return mysolPartial;
	}
}
