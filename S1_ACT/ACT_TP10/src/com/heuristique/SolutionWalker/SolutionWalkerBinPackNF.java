package com.heuristique.SolutionWalker;

import com.heuristique.PartialSolutionBinPack;
import com.heuristique.PblBinPack;
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

	}

	/* Le principe est simple; on a un sac courant; à chaque objet, on le met dans le sac
courant si il y a assez de place. Sinon , on crée un nouveau sac courant et on y met l’objet */
	public void NextPartialSolution() { // implémenter selon le critère
										// glouton!}
		// il y a encore des objets a empaqueter
		if (mysolPartial.getEn().hasMoreElements()) {
			// le sac n'est pas rempli
			int currentPoids=0;
			int nextone = mysolPartial.getEn().NextElement();
			if (!mysolPartial.ASac.isEmpty())
				{ currentPoids = mysolPartial.ASac.get(mysolPartial.getCurrentsac());}
			else{
				mysolPartial.ASac.add(currentPoids);
			}
			
			if (currentPoids + nextone <= mysolPartial.getCap()) {
				mysolPartial.ASac.set(mysolPartial.getCurrentsac(),
						mysolPartial.ASac.get(mysolPartial.getCurrentsac())
								+ nextone);
			} else {
				// ajout d'un nouveau sac.
				mysolPartial.ASac.add(nextone);
				mysolPartial.setCurrentsac(mysolPartial.getCurrentsac() + 1);
				//System.out.println("\nNouveau sac cree no"+ mysolPartial.currentsac);
			}
		}
		// plus rien a traiter, solution finale
		else {
			mysolPartial.setTerminated(true);
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