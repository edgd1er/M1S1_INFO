package com.heuristique.SolutionWalker;

import com.heuristique.PblSum;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class SolutionWalkerSumFF extends SolutionWalkerSum {

	public SolutionWalkerSumFF(PblSum testSumPb, EnumerationObjets en) {
		// TODO Auto-generated constructor stub
	}

	
	
	@Override
	public boolean Terminated() {
		// TODO Auto-generated method stub
		return false;
	}

	/* Pour chaque objet, on regarde si il rentre dans un des sacs créés: si oui, on le met
dans le premier qui convient; sinon, on créee un nouveau sac et on y met l’objet; */
	@Override
	public void NextPartialSolution() {
		// TODO Auto-generated method stub
		System.out.println("\n Not yet implemented");
		System.exit(-1);

	}

	@Override
	public PartialSolution Current() {
		// TODO Auto-generated method stub
		return null;
	}

}
