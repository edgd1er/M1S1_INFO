# -*- encoding: utf-8 -*-

# exemple de palette pour test
nbColors = 7
palette = ( 0, 20, 100, 132, 164, 180, 255 )
weight = ( 5, 5, 1, 1, 2, 1, 10 )


# Retourne la moyenne pondérée d'un intervalle de niveaux de gris de la palette
# palette: la palette à analyser
# poids: le poids de chaque couleur de la palette
# start, stop: les indices indiquant l'intervalle de la palette à analyser
def meilleurGris(palette, poids, start, stop):
	somme = 0
	poidsTotal = 0
	for i in range(start, stop+1):
		somme += poids[i]*palette[i]
		poidsTotal += poids[i]
	return somme/poidsTotal

# Retourne la distance minimale qui résulterait de la fusion de l'intervalle [start,stop] de la palette
# palette: la palette à analyser
# poids: le poids de chaque couleur de la palette
# start, stop: les indices indiquant l'intervalle de la palette à analyser
def distanceMin(palette, poids, start, stop):
	# calcule la couleur qui va remplacer celles de [start,stop]
	ng = meilleurGris(palette, poids, start, stop)
	# calcul de la distance proprement dite
	somme = 0
	for i in range(start, stop+1): somme += poids[i]*(palette[i]-ng)*(palette[i]-ng)
	return round(somme)


# calcule de la distance minimale en nb couleurs
def distanceMinimale(palette, poids, nbR, groups):
  nbO = len(palette) # nombre de couleurs originales
  # création du tableau DM
  DM = [ [ 0 for i in range(nbO+1) ] for p in range(nbR) ]
  PM = [ [ 0 for i in range(nbO) ] for p in range(nbR) ] # l'emplacement des mini
  # initialisation quand p=0 (1 couleur utilisée)
  for i in range(nbO): DM[0][i] = distanceMin(palette, poids, i, nbO-1)

  for p in range(1, nbR): # nombre de couleurs (p+1) à utiliser
    for i in range(nbO-p):
      # calcul d'un min sur les indices m=i...n-1
      # première valeur pour initialiser le mini
      mini = distanceMin(palette, poids, i, i) + DM[p-1][i+1]
      PM[p][i] = i
      for m in range(i+1,nbO):
        val = distanceMin(palette, poids, i, m) + DM[p-1][m+1]
        if val<mini: 
          mini = val
          PM[p][i] = m
      DM[p][i] = mini

  # constitution des intervalles à regrouper    
  print(PM)
  groups[0] = PM[nbR-1][0]
  for i in range(1, nbR-2): groups[i] = PM[nbR-i-1][groups[i-1]+1]
  groups[nbR-1] = nbO

  return DM[nbR-1][0] # distance minimale avec nbR couleurs sur l'ensemble de la palette
	    


print(meilleurGris(palette, weight, 2, 5))
print(distanceMin(palette, weight, 2, 5))
nbR=3
groups = [ 0 for i in range(nbR) ]
print(distanceMinimale(palette, weight, nbR, groups))
print(groups)




