private void traitement(View self) {
  // récupère le n° de la carte
  int numéro = self.getId();
  // ne rien faire si la carte est retournée
  if (isVisible.get(numéro)) return;
  // montre la carte sélectionnée
  ((ImageView)self).setImageResource(mappingCartes.get(numéro));
  isVisible.put(numéro, true);
  // réagit en fonction du numéro de clic
  if (numClic==1) premier = numéro;
  if (numClic==2) deuxième = numéro;
  if (numClic==3) {
      if (!mappingCartes.get(premier).equals(mappingCartes.get(deuxième))) { // réaffiche le dos des cartes
	  ((ImageView)selfContext.findViewById(premier)).setImageResource(R.drawable.carte_envers);
	  ((ImageView)selfContext.findViewById(deuxième)).setImageResource(R.drawable.carte_envers);
	  isVisible.put(premier, false);
	  isVisible.put(deuxième, false);
      } 
      premier = numéro;
      numClic = 1;
  }
  numClic++;
}
