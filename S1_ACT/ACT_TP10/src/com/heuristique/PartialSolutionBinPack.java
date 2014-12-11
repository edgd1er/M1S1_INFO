package com.heuristique;

import java.util.ArrayList;


import com.heuristique.interfaces.EnumerationObjets;
import com.heuristique.interfaces.PartialSolution;

public class PartialSolutionBinPack implements PartialSolution {

	public int[] getObjets() {
		return objets;
	}

	public void setObjets(int[] objets) {
		this.objets = objets;
	}

	public ArrayList<Integer> getASac() {
		return ASac;
	}

	public void setASac(ArrayList<Integer> aSac) {
		ASac = aSac;
	}

	public boolean isTerminated() {
		return terminated;
	}

	public void setTerminated(boolean terminated) {
		this.terminated = terminated;
	}

	public EnumerationObjets getEn() {
		return en;
	}

	public void setEn(EnumerationObjets en) {
		this.en = en;
	}

	public int getCurrentsac() {
		return currentsac;
	}

	public void setCurrentsac(int currentsac) {
		this.currentsac = currentsac;
	}

	public int getCap() {
		return cap;
	}

	public void setCap(int cap) {
		this.cap = cap;
	}

	int[] objets;
	public ArrayList<Integer> ASac;
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
						"\nCapacité du sac: " + this.cap +
						"\nNombre de sacs: " + ASac.size() +
						"\nRemplissage du sac courant: " + currentsac;
				
		for (Integer integer : ASac) {
			result += "\"sac["+i++ + "]=" + integer +", ";			
		}
				
		System.out.println("\n" +this.getClass().toString()+".Display()"+result);
		
	}

}
