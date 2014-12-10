package com.heuristique;

import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

/*
 * classe du parcoureur de solution pour bin_packing selon un critère
 * glouton XX et avec choix de l’énumération
 */
public class SolutionWalkerBinPackNF extends SolutionWalkerBinPack {

	PartialSolutionBinPack mysolPartial;

	public SolutionWalkerBinPackNF(PblBinPack pbl, EnumerationObjets en) {
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
			// le sac n'est pas rempli
			int nextone = mysolPartial.en.NextElement();
			int currentPoids = mysolPartial.ASac.get(mysolPartial.currentsac);
			if (currentPoids + nextone <= mysolPartial.cap) {
				mysolPartial.ASac.set(mysolPartial.currentsac,
						mysolPartial.ASac.get(mysolPartial.currentsac)
								+ nextone);
			} else {
				// ajout d'un nouveau sac.
				mysolPartial.ASac.add(nextone);
				mysolPartial.currentsac++;
				//System.out.println("\nNouveau sac cree no"+ mysolPartial.currentsac);
			}
		}
		// plus rien a traiter, solution finale
		else {
			mysolPartial.terminated = true;
		}

	}

	@Override
	public boolean Terminated() {
		return mysolPartial.Complete();

	}

	@Override
	public PartialSolution Current() {
		return mysolPartial;
	}
}