package com.heuristique;

import java.util.ArrayList;


import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class PartialSolutionSum implements PartialSolution {

	int[] objets;
	public ArrayList<Integer> ASac;
	boolean terminated;
	private EnumerationObjets en;
	int currentsac;
	private int cap;
	
	public PartialSolutionSum(PblSum pbl, EnumerationObjets _en) {
		this.setEn(_en);
		this.objets = pbl.poids;
		this.ASac = new ArrayList<Integer>();
		this.currentsac=0;
		this.setCap(pbl.cap);
	}

	/* retourne 1 si tous les objets ont ete affectés  */
	@Override
	public boolean Complete() {
		return !getEn().hasMoreElements(); 
		//return terminated;
	}

	@Override
	public void Display() {
		// TODO Auto-generated method stub
		int i=0;
		String result= "\nVersion finale: "+ getEn().hasMoreElements()+ 
						"\nNombre de sacs: " + ASac.size() +  
						"\nCapacité du sac: " + this.getCap() +
						"\nRemplissage du sac courant: " + currentsac;
				
		for (Integer integer : ASac) {
			result += "\"sac["+i++ + "]=" + integer +", ";			
		}
				
		System.out.println("\n" +this.getClass().toString()+".Display()"+result);
		
	}

	public int getCap() {
		return cap;
	}

	public void setCap(int cap) {
		this.cap = cap;
	}

	public EnumerationObjets getEn() {
		return en;
	}

	public void setEn(EnumerationObjets en) {
		this.en = en;
	}

}
