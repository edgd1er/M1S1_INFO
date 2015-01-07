package com.heuristique.SolutionWalker;

<<<<<<< HEAD
import com.heuristique.PartialSolutionSum;
=======
>>>>>>> 6316d26d5f47197e848e167d95859d1b4b9ff882
import com.heuristique.PblSum;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class SolutionWalkerSumFF extends SolutionWalkerSum {
<<<<<<< HEAD
	PartialSolutionSum mysolPartial;
	
	public SolutionWalkerSumFF(PblSum testSumPb, EnumerationObjets en) {
		mysolPartial = new PartialSolutionSum(testSumPb, en);
=======

	public SolutionWalkerSumFF(PblSum testSumPb, EnumerationObjets en) {
		// TODO Auto-generated constructor stub
>>>>>>> 6316d26d5f47197e848e167d95859d1b4b9ff882
	}

	
	
	@Override
	public boolean Terminated() {
<<<<<<< HEAD
		return mysolPartial.Complete();
=======
		// TODO Auto-generated method stub
		return false;
>>>>>>> 6316d26d5f47197e848e167d95859d1b4b9ff882
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
<<<<<<< HEAD
		return mysolPartial;
=======
		// TODO Auto-generated method stub
		return null;
>>>>>>> 6316d26d5f47197e848e167d95859d1b4b9ff882
	}

}
