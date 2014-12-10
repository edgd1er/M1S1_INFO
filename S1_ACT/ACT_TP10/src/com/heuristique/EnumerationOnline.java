package com.heuristique;

import java.util.ArrayList;
import java.util.Iterator;

import com.heuristique.interfaces.EnumerationObjets;

/* classe d enumeration online */
public class EnumerationOnline implements EnumerationObjets {

	ArrayList<Integer> list;
	Iterator<Integer> itr;

	public EnumerationOnline(int[] poids) {

		ArrayList<Integer> list = new ArrayList<Integer>(poids.length);
		for (int i = 0; i < poids.length; i++)
			list.add(Integer.valueOf(poids[i]));

		itr = list.iterator();

	}

	@Override
	public boolean hasMoreElements() {
		return itr.hasNext();
	}

	@Override
	public int NextElement() {
		return (int) itr.next();
	}
}
