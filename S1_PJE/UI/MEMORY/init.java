// initialisation du mapping
private void initMapping() {
  numClic = 1;
  isVisible.put(R.id.img1, false);
  isVisible.put(R.id.img2, false);
  isVisible.put(R.id.img3, false);
  isVisible.put(R.id.img4, false);
  isVisible.put(R.id.img5, false);
  isVisible.put(R.id.img6, false);
  isVisible.put(R.id.img7, false);
  isVisible.put(R.id.img8, false);
  int mélange[] = { R.drawable.as_carreau, R.drawable.as_carreau, R.drawable.as_coeur, R.drawable.as_coeur, 
		    R.drawable.as_pique, R.drawable.as_pique, R.drawable.as_trefle, R.drawable.as_trefle };
  for (int i=0; i<8; i++) {
      int hasard = (int)Math.floor(Math.random()*8);
      int save = mélange[0];
      mélange[0] = mélange[hasard];
      mélange[hasard] = save;
  }
  mappingCartes.put(R.id.img1, mélange[0]);
  mappingCartes.put(R.id.img2, mélange[1]);
  mappingCartes.put(R.id.img3, mélange[2]);
  mappingCartes.put(R.id.img4, mélange[3]);
  mappingCartes.put(R.id.img5, mélange[4]);
  mappingCartes.put(R.id.img6, mélange[5]);
  mappingCartes.put(R.id.img7, mélange[6]);
  mappingCartes.put(R.id.img8, mélange[7]);
}

