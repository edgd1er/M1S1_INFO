package com.example.booklist;


import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.ListView;
import android.widget.SimpleAdapter;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main2);

		// listview
		ListView bookList = (ListView) findViewById(R.id.listBookView);
		int layoutId = R.layout.book_detail2;
		loadlist(bookList, layoutId);

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	public void loadlist(ListView bookList,int layoutId) {
		
		// recherche la vue affichant la liste
		BookCollection books = new BookCollection();

		// list des objets
		java.util.List<java.util.Map<String, String>> ListOfBook = new java.util.ArrayList<java.util.Map<String, String>>();
		for (Book book : books.getBooks()) {
			java.util.Map<String, String> bookMap = new java.util.HashMap<String, String>();

			// ->script
			bookMap.put("img", String.valueOf(R.drawable.ic_launcher));
			// use available img
			// ->script
			bookMap.put("author", book.getAuthor());
			bookMap.put("title", book.getTitle());
			bookMap.put("isbn", book.getIsbn());
			ListOfBook.add(bookMap);
		}

		// Cree un adapter faisant le lien entre la liste d'élément et la
		// ListView servant à l'affichage.
		SimpleAdapter listAdapter = new SimpleAdapter(this.getBaseContext(),
				ListOfBook, 
				layoutId, 
				new String[] { "img","author", "title", "isbn" }, 
				new int[] {	R.id.book_image, R.id.bookAuthor, R.id.bookTitle,R.id.bookIsbn });
		// Associe l’adapter et le ListView
		bookList.setAdapter(listAdapter);
		}
}
