package com.heuristique.SolutionWalker;

import java.util.Collections;

import com.heuristique.PartialSolutionBinPack;
import com.heuristique.PblBinPack;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

/*******************/

/*
 * classe du parcoureur de solution pour bin_packing selon un critère glouton
 * XX et avec choix de l’énumération
 */
public class SolutionWalkerBinPackBF extends SolutionWalkerBinPack {

	PartialSolutionBinPack mysolPartial;

	public SolutionWalkerBinPackBF(PblBinPack pbl, EnumerationObjets en) {
		// on peut passer en en parametre: deux énumérations ici:
		// online et par poids décroissants
		// on peut aussi simplement construire le probleme avec objets tries
		// au depart....

		mysolPartial = new PartialSolutionBinPack(pbl, en);
	}

	/* Pour chaque objet, on regarde si il rentre dans un des sacs créés: si oui, on le met
dans le celui qui est le plus rempli parmi ceux qui conviennent. Sinon, on crée un nouveau sac et on y
met l’objet. */
	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!
		// il y a encoer des objets a empaqueter
		if (mysolPartial.getEn().hasMoreElements()) {

			int nextone = mysolPartial.getEn().NextElement();
			boolean found = false;

			/*
			 * tri des sacs en paquets decroissants pour trouver celui qui
			 * conviendra le mieux.
			 */
			Collections.sort(mysolPartial.ASac, Collections.reverseOrder());

			for (int j = 0; j < mysolPartial.getASac().size(); j++) {
				int currentpoids = mysolPartial.getASac().get(j);
				if (currentpoids + nextone <= mysolPartial.getCap()) {
					mysolPartial.ASac.set(j, currentpoids + nextone);
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
		return mysolPartial.Complete();
	}

	@Override
	public PartialSolution Current() {
		// TODO Auto-generated method stub
		return mysolPartial;
	}
}