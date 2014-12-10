package com.heuristique;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

import com.heuristique.interfaces.EnumerationObjets;

/* classe d enumeration triee selon les poids decroissants */
public class EnumerationTriee implements EnumerationObjets {

	ArrayList<Integer> list;
	Iterator<Integer> itr;

	public EnumerationTriee(int[] poids) {

		ArrayList<Integer> list = new ArrayList<Integer>(poids.length);
		for (int i = 0; i < poids.length; i++)
			list.add(Integer.valueOf(poids[i]));

		/* tri selon les poids decroissants */
		Comparator<Object> comparator = Collections.reverseOrder();
		Collections.sort(list, comparator);
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

// on utilisera par exemple une implementation de la classe Comparator
// de java.util