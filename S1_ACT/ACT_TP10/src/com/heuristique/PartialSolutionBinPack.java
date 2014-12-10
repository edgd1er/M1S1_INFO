package com.heuristique;

import java.util.ArrayList;


import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class PartialSolutionBinPack implements PartialSolution {

	int[] objets;
	ArrayList<Integer> ASac;
	boolean terminated;
	EnumerationObjets en;
	int currentsac;
	int cap;
	
	public PartialSolutionBinPack(PblBinPack _pbl, EnumerationObjets _en) {
		this.en = _en;
		this.objets = _pbl.poids;
		this.ASac = new ArrayList<Integer>();
		this.currentsac=0;
		this.cap = _pbl.cap;
	}

	/* retourne 1 si tous les objets ont ete affectés  */
	@Override
	public boolean Complete() {
		return !en.hasMoreElements(); 
		//return terminated;
	}

	@Override
	public void Display() {
		// TODO Auto-generated method stub
		int i=0;
		String result= "\nVersion finale: "+ en.hasMoreElements()+ 
						"\nNombre de sacs: " + ASac.size() +  
						"\nRemplissage du sac courant: " + currentsac;
				
		for (Integer integer : ASac) {
			result += "\"sac["+i++ + "]=" + integer +", ";			
		}
				
		System.out.println("\nPartialSolutionBinPack.Display()"+result);
		
	}

}
