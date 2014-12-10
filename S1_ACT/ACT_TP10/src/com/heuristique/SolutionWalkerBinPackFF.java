package com.heuristique;

import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

/*******************/

/*
 * classe du parcoureur de solution pour bin_packing selon un critère glouton
 * XX et avec choix de l’énumération
 */
public class SolutionWalkerBinPackFF extends SolutionWalkerBinPack {

	PartialSolutionBinPack mysolPartial;

	public SolutionWalkerBinPackFF(PblBinPack pbl, EnumerationObjets en) {
		// on peut passer en en parametre: deux énumérations ici:
		// online et par poids décroissants
		// on peut aussi simplement construire le probleme avec objets tries
		// au depart....

		mysolPartial = new PartialSolutionBinPack(pbl, en);
		// Ajout du premeir element
		mysolPartial.ASac.add(en.NextElement());

	}

	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!}

		// il y a encoer des objets a empaqueter
		if (mysolPartial.en.hasMoreElements()) {
			/* recherche du meilleur sac pour l element present */
			int nextone = mysolPartial.en.NextElement();

			boolean found = false;

			for (int j = 0; j < mysolPartial.ASac.size(); j++) {
				int currentpoids = mysolPartial.ASac.get(j);
				if (currentpoids + nextone <= mysolPartial.cap) {
					mysolPartial.ASac.set(j, currentpoids + nextone);
					found = true;
					break;
				}
			}
			if (!found)
				mysolPartial.ASac.add(nextone);
		}
	}

	@Override
	public boolean Terminated() {
		// TODO Auto-generated method stub
		return mysolPartial.Complete();
	}

	@Override
	public PartialSolution Current() {
		// TODO Auto-generated method stub
		return mysolPartial;
	}
}