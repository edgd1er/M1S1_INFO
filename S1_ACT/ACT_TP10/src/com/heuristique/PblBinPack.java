package com.heuristique;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

	//le pb d optimisation du BinPacking
public class PblBinPack extends Pbl{
	public int nb_objets; //nb d objets
	public int poids[]; //poids des objets
	public int cap;
	public String strFile;

	//capacite d un sac
	
	private int nb_sacs;
	
	public PblBinPack(String file){
		if (!loadDonnee(file))
			{
			System.out.println("\nErreur, le fichier de donnée "+file + " n'a pu être chargé");
			System.exit(-1);}
	}
	
	public PblBinPack(int n, int p[], int c, int nbs ){
		this.nb_objets = n;
		this.poids = p;
		this.cap = c;
		this.nb_sacs = nbs;
	}
	
	public int getNbSacs() {
		return this.nb_sacs;
	}
	
	public int getNbObjets() {
		return this.nb_objets;
	}
	
	public int getPoidsObjet(int obj) {
		return this.poids[obj];
	}
	
	public int getCapacite() {
		return this.cap;
	}
	
	public Boolean loadDonnee(String file) {

		// ********************************************/
		/*
		 * Syntaxe n, le nb objets p1 P2 . . . Pn k , le nb de sacs c , la
		 * capacit�
		 */
		strFile = file;
		try {
			BufferedReader in = new BufferedReader(new InputStreamReader(
					new FileInputStream(file), "UTF8"));
			try {

				String temp;

				temp = in.readLine();
				this.nb_objets = Integer.parseInt(temp);
				
				temp = in.readLine();
				this.cap = Integer.parseInt(temp);


				/* Lecture des objets */
				poids = new int[nb_objets];
				for (int i = 0; i < nb_objets; i++) {
					temp = in.readLine();
					poids[i] = Integer.parseInt(temp);
					//sum += poids[i];
				}


			} finally {
				in.close();
			}
		} catch (Exception e) {
			System.err.println(this.getClass().getPackage().getName()
					+ e.getMessage() + "\n");
			System.err.println(this.getClass().getPackage().getName()
					+ e.getStackTrace() + "\n");
			return false;
		}
		return true;

	}
	
}