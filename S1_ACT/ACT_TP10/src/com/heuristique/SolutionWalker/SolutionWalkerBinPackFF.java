package com.heuristique.SolutionWalker;

import com.heuristique.PartialSolutionBinPack;
import com.heuristique.PblBinPack;
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

	}

	/* Pour chaque objet, on regarde si il rentre dans un des sacs créés: si oui, on le met
dans le premier qui convient; sinon, on créee un nouveau sac et on y met l’objet; */
	
	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!}

		// il y a encore des objets a empaqueter
		if (mysolPartial.getEn().hasMoreElements()) {
			/* recherche du meilleur sac pour l element present */
			int nextone = mysolPartial.getEn().NextElement();

			boolean found = false;

			for (int j = 0; j < mysolPartial.getASac().size(); j++) {
				int currentpoids = mysolPartial.getASac().get(j);
				if (currentpoids + nextone <= mysolPartial.getCap()) {
					mysolPartial.getASac().set(j, currentpoids + nextone);
					found = true;
					break;
				}
			}
			if (!found)
				mysolPartial.getASac().add(nextone);
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