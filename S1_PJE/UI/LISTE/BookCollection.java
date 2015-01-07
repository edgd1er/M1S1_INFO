package pje.listelivres;

import java.util.ArrayList;

public class BookCollection {
	
	ArrayList<Book> books;

	public BookCollection() {
		
		books = new ArrayList<Book>();
		
		for(int n=0;n<20;n++)
		{
			books.add(new Book("auteur"+ n,"Titre"+n,"ISBN"+n));
		}
		
		
		// TODO Auto-generated constructor stub
	}

	public ArrayList<Book> getBooks() {
		return books; 
	}

}
