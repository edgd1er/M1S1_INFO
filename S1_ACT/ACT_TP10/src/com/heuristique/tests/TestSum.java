package com.heuristique.tests;

import java.io.File;
import java.util.Random;

import com.heuristique.EnumerationOnline;
import com.heuristique.EnumerationTriee;
import com.heuristique.PblSum;
import com.heuristique.SolutionWalker.SolutionWalkerSumBF;
import com.heuristique.SolutionWalker.SolutionWalkerSumFF;
import com.heuristique.SolutionWalker.SolutionWalkerSumNF;
import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.tools.OSDetector;

import joptsimple.OptionParser;
import joptsimple.OptionSet;

public class TestSum {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		/* definition du jeu de donnees */
		boolean sorted = false;
		String sortedString = "Elements non tries";

		OptionParser parser = new OptionParser("d:nbfth");
		OptionSet options = parser.parse(args);

		String file = "data" + File.separator + "N1C1W1_D.BPP";

		if (options.has("d")) {
			if (options.hasArgument("d")) {
				file = (String) options.valueOf("d");
			}
		}

		if (options.has("t")) {
			sortedString = "Elements tries";
			sorted = true;
		}

		if (options.has("h")) {
			usage();
		}

		/* chargement des donn�es */
		if (OSDetector.isWindows()) {
			file = file.replace("\\", File.separator);
		}

		/* BestFit: on le met dans le sac le plus rempli qui accepte l'objet */
		if (options.has("b")) {
			TestBestFit(file, sorted);
		}

		/* NextFit: met dans le prochain sac, si l'actuel est plein */
		if (options.has("n")) {
			TestNextFit(file, sorted);
		}

		/* FirstFit: parcourt les sacs et met dans le premier sac qui convient */
		if (options.has("f")) {
			TestFirstFit(file, sorted);
		}

	}

	/* methode de remplissage FirstFit */
	/* FirstFit: parcourt les sacs et met dans le premier sac qui convient */
	static void TestFirstFit(String file, boolean sorted) {

		EnumerationObjets en;
		PblSum testSumPb = new PblSum(file);
		
		if (!sorted)
		{
			/* mise en desordre de la liste de poids car elle est deja triee */
			
			shuffleArray(testSumPb.poids);
			en = new EnumerationOnline(testSumPb.poids);
		}
		else {
			/* tri du tableau dans l'enumeration*/
			en = new EnumerationTriee(testSumPb.poids);
		}
		
		SolutionWalkerSumFF sol = new SolutionWalkerSumFF(testSumPb,en);

		System.out.println("\nFirstFit " +  (sorted?"triee":"non triee")+ ", fichier: "+ file );

		while (!sol.Current().Complete()) {
			sol.NextPartialSolution();
		}
		sol.Current().Display();
		System.out.println("\nSol Partielle finie: " + sol.Terminated());

	}

	/* methode de remplissage BestFit */
	/* BestFit: recherche du meilleur sac */
	static void TestBestFit(String file, boolean sorted) {

		PblSum testpbSum = new PblSum(file);
		EnumerationObjets en;
		
		if (!sorted)
		{
			/* mise en desordre de la liste de poids car elle est deja triee */
			shuffleArray(testpbSum.poids);
			 en = new EnumerationOnline(testpbSum.poids);
		}
		else {
			/* tri du tableau dans l'enumeration*/
			 en = new EnumerationTriee(testpbSum.poids);
		}
		
		SolutionWalkerSumBF sol = new SolutionWalkerSumBF(testpbSum,en);

		System.out.println("\nBestFit " +  (sorted?"triee":"non triee")+ ", fichier: "+ file );

		/* while (!sol.Current().Complete()) */
		while (!sol.Terminated()) {
			sol.NextPartialSolution();
			// if ((++i%10)==0)sol.Current().Display();
		}
		sol.Current().Display();
		System.out.println("\nSol Partielle finie: " + sol.Terminated());

	}

	/* mode d emploi */
	private static void usage() {
		// TODO Auto-generated method stub
		String strTemp = "\n\nusage: testSum -d file <mode> \n avec modes -b (bestfit), -f (firstfit), -n (nextfit) -t (trie) ";
		System.out.println(strTemp);
		System.exit(2);
	}

	/* methode de remplissage NextFit */
	/* NextFit: met dans le prochain sac, si l'actuel est plein */
	static void TestNextFit(String file, boolean sorted) {

		PblSum testSum = new PblSum(file);
		EnumerationObjets en;

		if (!sorted)
		{
			/* mise en desordre de la liste de poids car elle est deja tri�e */
			
			shuffleArray(testSum.poids);
			 en = new EnumerationOnline(testSum.poids);
		}
		else {
			/* tri du tableau dans l'enumeration*/
			 en = new EnumerationTriee(testSum.poids);
		}
		
		SolutionWalkerSumNF sol = new SolutionWalkerSumNF(testSum,
				en);

		System.out.println("\nNextFit " +  (sorted?"triee":"non triee")+ ", fichier: "+ file );

		/* while (!sol.Current().Complete()) */
		while (!sol.Terminated()) {
			sol.NextPartialSolution();
			// if ((++i%10)==0)sol.Current().Display();
		}
		sol.Current().Display();
	}

	// Implementing Fisher-Yates shuffle
	static void shuffleArray(int[] ar) {
		Random rnd = new Random();
		for (int i = ar.length - 1; i > 0; i--) {
			int index = rnd.nextInt(i + 1);
			// Simple swap
			int a = ar[index];
			ar[index] = ar[i];
			ar[i] = a;
		}
	}

}
