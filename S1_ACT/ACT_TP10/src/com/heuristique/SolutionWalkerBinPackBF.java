package com.heuristique;

import java.util.Collections;

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
		// Ajout du premeir element
		mysolPartial.ASac.add(en.NextElement());
	}

	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!
		// il y a encoer des objets a empaqueter
		if (mysolPartial.en.hasMoreElements()) {

			int nextone = mysolPartial.en.NextElement();
			boolean found = false;

			/*
			 * tri des sacs en paquets decroissants pour trouver celui qui
			 * conviendra le mieux.
			 */
			Collections.sort(mysolPartial.ASac, Collections.reverseOrder());

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
		return mysolPartial.Complete();
	}

	@Override
	public PartialSolution Current() {
		// TODO Auto-generated method stub
		return mysolPartial;
	}
}