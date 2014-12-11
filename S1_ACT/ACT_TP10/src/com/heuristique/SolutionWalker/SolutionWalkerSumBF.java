package com.heuristique.SolutionWalker;

import com.heuristique.PartialSolutionSum;
import com.heuristique.PblSum;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

/*******************/

/*
 * classe du parcoureur de solution pour bin_packing selon un critère glouton
 * XX et avec choix de l’énumération
 */
public class SolutionWalkerSumBF extends SolutionWalkerSum {

	PartialSolutionSum mysolPartial;

	public SolutionWalkerSumBF(PblSum pbl, EnumerationObjets en) {
		// on peut passer en en parametre: deux énumérations ici:
		// online et par poids décroissants
		// on peut aussi simplement construire le probleme avec objets tries
		// au depart....

		mysolPartial = new PartialSolutionSum(pbl, en);
	}

	/* Pour chaque objet, on regarde si il rentre dans un des sacs créés: si oui, on le met
dans le celui qui est le plus rempli parmi ceux qui conviennent. Sinon, on crée un nouveau sac et on y
met l’objet. */
	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!
		System.out.println("\n Not yet implemented");
		System.exit(-1);
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